USE TEST

GO

/* 
 CREATE TABLE (A simple example of creating tables)

 TEST = Database (Optional)
 dbo = Schema (Optional. Default Schema is dbo.) 
	
 IDENTITY [ (seed , increment ) ] 
 */


CREATE TABLE [TEST].[dbo].[Product](
	[ProductId] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Price] [money] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[Active] [bit] NOT NULL
);

