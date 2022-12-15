--Insert SQL for Attractions Table
INSERT INTO [dbo].[attractions]
           ([name]
           ,[rating]
           ,[reviews_count]
           ,[description]
           ,[city])
     VALUES
           (<name, nvarchar(100),>
           ,<rating, numeric(2,1),>
           ,<reviews_count, int,>
           ,<description, nvarchar(max),>
           ,<city, nvarchar(50),>)
GO

--Insert SQL for Booking Table
INSERT INTO [dbo].[booking]
           ([trip_id]
           ,[payment_method]
           ,[payment_status])
     VALUES
           (<trip_id, int,>
           ,<payment_method, varchar(10),>
           ,<payment_status, varchar(10),>)

--Insert SQL for City Table
INSERT INTO [dbo].[city]
           ([id]
           ,[city]
           ,[state_code]
           ,[state]
           ,[county]
           ,[latitude]
           ,[longitude]
           ,[timezone])
     VALUES
           (<id, int,>
           ,<city, varchar(50),>
           ,<state_code, varchar(50),>
           ,<state, varchar(50),>
           ,<county, varchar(50),>
           ,<latitude, decimal(12,9),>
           ,<longitude, decimal(12,9),>
           ,<timezone, varchar(50),>)

--Insert SQL for Destinations Table
INSERT INTO [dbo].[destinations]
           ([destination]
           ,[rating]
           ,[rank]
           ,[description]
           ,[tourist_attractions_count]
           ,[best_time_to_go])
     VALUES
           (<destination, varchar(50),>
           ,<rating, numeric(2,1),>
           ,<rank, tinyint,>
           ,<description, varchar(max),>
           ,<tourist_attractions_count, int,>
           ,<best_time_to_go, varchar(50),>)

--Insert SQL for Hotels Table
INSERT INTO [dbo].[hotels]
           ([name]
           ,[city]
           ,[duration]
           ,[number_of_occupants]
           ,[beds]
           ,[rating]
           ,[rating_title]
           ,[number_of_ratings]
           ,[price]
           ,[image]
           ,[url])
     VALUES
           (<name, varchar(max),>
           ,<city, varchar(50),>
           ,<duration, varchar(50),>
           ,<number_of_occupants, varchar(max),>
           ,<beds, varchar(max),>
           ,<rating, numeric(18,1),>
           ,<rating_title, varchar(50),>
           ,<number_of_ratings, int,>
           ,<price, int,>
           ,<image, varchar(max),>
           ,<url, varchar(max),>)

--Insert SQL for restaurant table
INSERT INTO [dbo].[restaurants_normalized]
           ([name]
           ,[address]
           ,[category1]
           ,[category2]
           ,[category3]
           ,[reviews]
           ,[number_of_reviews]
           ,[comments]
           ,[contact]
           ,[url]
           ,[menu]
           ,[city]
           ,[state]
           ,[catid1]
           ,[catid2]
           ,[catid3])
     VALUES
           (<name, varchar(50),>
           ,<address, varchar(150),>
           ,<category1, varchar(50),>
           ,<category2, varchar(50),>
           ,<category3, varchar(50),>
           ,<reviews, numeric(18,1),>
           ,<number_of_reviews, int,>
           ,<comments, varchar(max),>
           ,<contact, varchar(50),>
           ,<url, varchar(max),>
           ,<menu, varchar(max),>
           ,<city, varchar(50),>
           ,<state, varchar(50),>
           ,<catid1, int,>
           ,<catid2, int,>
           ,<catid3, int,>)

--Insert SQL for states table
INSERT INTO [dbo].[states]
           ([state]
           ,[state_code])
     VALUES
           (<state, varchar(50),>
           ,<state_code, varchar(50),>)

--Insert SQL for Tour Packages table
INSERT INTO [dbo].[tour_packages]
           ([name]
           ,[city]
           ,[duration]
           ,[description]
           ,[price]
           ,[url])
     VALUES
           (<name, varchar(100),>
           ,<city, varchar(50),>
           ,<duration, varchar(100),>
           ,<description, varchar(max),>
           ,<price, int,>
           ,<url, varchar(max),>)

--Insert SQL for states table
INSERT INTO [dbo].[travel_agents]
           ([company_name]
           ,[website]
           ,[email]
           ,[phone_number]
           ,[address]
           ,[city]
           ,[state]
           ,[twitter]
           ,[facebook]
           ,[instagram]
           ,[linkedin])
     VALUES
           (<company_name, varchar(50),>
           ,<website, varchar(max),>
           ,<email, varchar(max),>
           ,<phone_number, varchar(15),>
           ,<address, varchar(max),>
           ,<city, varchar(50),>
           ,<state, varchar(50),>
           ,<twitter, varchar(max),>
           ,<facebook, varchar(max),>
           ,<instagram, varchar(max),>
           ,<linkedin, varchar(max),>)

--Insert SQL for Trip Table
INSERT INTO [dbo].[trip]
           ([user_id]
           ,[destination_name]
           ,[trip_month]
           ,[trip_year]
           ,[trip_status])
     VALUES
           (<user_id, int,>
           ,<destination_name, varchar(50),>
           ,<trip_month, nvarchar(2),>
           ,<trip_year, nvarchar(4),>
           ,<trip_status, varchar(25),>)

--Insert SQL for Users Table
INSERT INTO [dbo].[users]
           ([name]
           ,[contact_number]
           ,[email_id]
           ,[gender]
           ,[city]
           ,[state]
           ,[ssn])
     VALUES
           (<name, varchar(50),>
           ,<contact_number, varchar(10),>
           ,<email_id, varchar(25),>
           ,<gender, varchar(10),>
           ,<city, varchar(50),>
           ,<state, varchar(30),>
           ,<ssn, varchar(11),>)