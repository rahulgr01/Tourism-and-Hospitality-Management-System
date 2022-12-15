--DDL to create Attractions Table
CREATE TABLE [dbo].[attractions](
	[name] [nvarchar](100) NOT NULL,
	[rating] [numeric](2, 1) NOT NULL,
	[reviews_count] [int] NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
 CONSTRAINT [ATTRACTIONS_PK] PRIMARY KEY CLUSTERED 
(
	[name] ASC,
	[city] ASC
)

--DDL to create Booking Table
CREATE TABLE [dbo].[booking](
	[booking_id] [int] IDENTITY(1,1) NOT NULL,
	[trip_id] [int] NULL,
	[payment_method] [varchar](10) NULL,
	[payment_status] [varchar](10) NULL,
 CONSTRAINT [PK_BOOKING] PRIMARY KEY CLUSTERED 
(
	[booking_id] ASC
)

--DDL to create City Table 
CREATE TABLE [dbo].[city](
	[id] [int] NOT NULL,
	[city] [varchar](50) NOT NULL,
	[state_code] [varchar](50) NOT NULL,
	[state] [varchar](50) NOT NULL,
	[county] [varchar](50) NOT NULL,
	[latitude] [decimal](12, 9) NULL,
	[longitude] [decimal](12, 9) NULL,
	[timezone] [varchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[city] ASC,
	[state] ASC
)

--DDL to create Destination Table
CREATE TABLE [dbo].[destinations](
	[destination] [varchar](50) NOT NULL,
	[rating] [numeric](2, 1) NULL,
	[rank] [tinyint] NOT NULL,
	[description] [varchar](max) NOT NULL,
	[tourist_attractions_count] [int] NOT NULL,
	[best_time_to_go] [varchar](50) NOT NULL,
 CONSTRAINT [DESTINATIONS_PK] PRIMARY KEY CLUSTERED 
(
	[destination] ASC
)

--DDL to create Hotels Table
CREATE TABLE [dbo].[hotels](
	[name] [varchar](max) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[duration] [varchar](50) NOT NULL,
	[number_of_occupants] [varchar](max) NOT NULL,
	[beds] [varchar](max) NOT NULL,
	[rating] [numeric](18, 1) NOT NULL,
	[rating_title] [varchar](50) NOT NULL,
	[number_of_ratings] [int] NOT NULL,
	[price] [int] NOT NULL,
	[image] [varchar](max) NOT NULL,
	[url] [varchar](max) NOT NULL,
	CONSTRAINT [DESTINATIONS_PK] PRIMARY KEY CLUSTERED 
(
	[name] ASC,
	[city] ASC
)
--DDL to create restaurant table
CREATE TABLE [dbo].[restaurants_normalized](
	[name] [varchar](50) NOT NULL,
	[address] [varchar](150) NOT NULL,
	[category1] [varchar](50) NULL,
	[category2] [varchar](50) NULL,
	[category3] [varchar](50) NULL,
	[reviews] [numeric](18, 1) NOT NULL,
	[number_of_reviews] [int] NOT NULL,
	[comments] [varchar](max) NOT NULL,
	[contact] [varchar](50) NOT NULL,
	[url] [varchar](max) NOT NULL,
	[menu] [varchar](max) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[state] [varchar](50) NOT NULL,
	[catid1] [int] NULL,
	[catid2] [int] NULL,
	[catid3] [int] NULL,
 CONSTRAINT [RESTAURANTS_NORM_PK] PRIMARY KEY CLUSTERED 
(
	[name] ASC,
	[city] ASC,
	[address] ASC
)
--DDL to create State Table
CREATE TABLE [dbo].[states](
	[state] [varchar](50) NOT NULL,
	[state_code] [varchar](50) NOT NULL,
 CONSTRAINT [PK_states] PRIMARY KEY CLUSTERED 
(
	[state] ASC
)

--DDL to create Tour Packages
CREATE TABLE [dbo].[tour_packages](
	[name] [varchar](100) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[duration] [varchar](100) NULL,
	[description] [varchar](max) NULL,
	[price] [int] NULL,
	[url] [varchar](max) NULL,
 CONSTRAINT [PK_packages] PRIMARY KEY CLUSTERED 
(
	[name] ASC,
	[city] ASC
)

--DDL to create Travel Agents
CREATE TABLE [dbo].[travel_agents](
	[company_name] [varchar](50) NOT NULL,
	[website] [varchar](max) NOT NULL,
	[email] [varchar](max) NOT NULL,
	[phone_number] [varchar](15) NOT NULL,
	[address] [varchar](max) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[state] [varchar](50) NOT NULL,
	[twitter] [varchar](max) NOT NULL,
	[facebook] [varchar](max) NOT NULL,
	[instagram] [varchar](max) NOT NULL,
	[linkedin] [varchar](max) NOT NULL,
 CONSTRAINT [PK_travel_agents] PRIMARY KEY CLUSTERED 
(
	[company_name] ASC
)

--DDL to create Trip Table
CREATE TABLE [dbo].[trip](
	[trip_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[destination_name] [varchar](50) NULL,
	[trip_month] [nvarchar](2) NULL,
	[trip_year] [nvarchar](4) NULL,
	[trip_status] [varchar](25) NULL,
 CONSTRAINT [PK_TRIP] PRIMARY KEY CLUSTERED 
(
	[trip_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[trip]  WITH CHECK ADD  CONSTRAINT [FK_TRIP] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])

--DDL to create Users Table
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[contact_number] [varchar](10) NULL,
	[email_id] [varchar](25) NULL,
	[gender] [varchar](10) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](30) NULL,
	[ssn] [varchar](11) NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [CHECK_GENDER] CHECK  (([GENDER]='Others' OR [GENDER]='Female' OR [GENDER]='Male'))
GO