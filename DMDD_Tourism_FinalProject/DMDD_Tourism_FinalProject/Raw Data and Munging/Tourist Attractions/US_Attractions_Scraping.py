from selectorlib import Extractor
import requests
from time import sleep
import csv

# Create an Extractor by reading from the YAML file
e = Extractor.from_yaml_file('booking.yml')


def scrape(url):
    headers = {
        'Connection': 'keep-alive',
        'Pragma': 'no-cache',
        'Cache-Control': 'no-cache',
        'DNT': '1',
        'Upgrade-Insecure-Requests': '1',
        # You may want to change the user agent if you get blocked
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36',
        'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',

        'Referer': 'https://www.google.com',
        'Accept-Language': 'en-GB,en-US;q=0.9,en;q=0.8',
    }

    # Download the page using requests
    print("Downloading %s" % url)
    r = requests.get(url, headers=headers)
    # Pass the HTML of the page and create 
    return e.extract(r.text, base_url=url)


# product_data = []
with open("urls.txt", 'r') as urllist, open('data.csv', 'w') as outfile:
    fieldnames = [
        "name",
        "rating",
        "reviews_count",
        "description",
        "image",
        "city"

    ]
    writer = csv.DictWriter(outfile, fieldnames=fieldnames, quoting=csv.QUOTE_ALL)
    writer.writeheader()
    for url in urllist.readlines():
        city = url.split('|')[0]
        data = scrape(url.split('|')[1])

        for row in data['attraction_list']:
            row['city'] = city

        if data:
            for h in data['attraction_list']:
                writer.writerow(h)
            sleep(5)
