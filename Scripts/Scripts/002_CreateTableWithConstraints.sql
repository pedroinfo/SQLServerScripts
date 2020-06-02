-- Constraints

-- Create Table with Constraint (UNIQUE)

CREATE TABLE [dbo].[Person](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[Document] [varchar](11) UNIQUE NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Age] [int] NOT NULL,
	[Sex] [char](1) NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
))

DROP TABLE Person 


-- Create Table with Name of Constraint

CREATE TABLE [dbo].[Person](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[Document] [varchar](11) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Age] [int] NOT NULL,
	[Sex] [char](1) NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED ([PersonId] ASC),
 CONSTRAINT CHK_Person_Age CHECK (Age>=18)
 )

 -- Alter Table to Add Constraint 

 ALTER TABLE Person ADD CONSTRAINT CHK_Person_Sex CHECK (Sex='M' OR Sex = 'F');


 -- Drop Constraint

ALTER TABLE Person DROP CONSTRAINT CHK_Person_Age;
ALTER TABLE Person DROP CONSTRAINT CHK_Person_Sex;


