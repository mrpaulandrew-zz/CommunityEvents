USE [sdbamsdapdev001]
GO
/****** Object:  StoredProcedure [metadata].[ResetAllMetaData]    Script Date: 06/06/2018 14:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [metadata].[ResetAllMetaData]
AS

BEGIN
	
	TRUNCATE TABLE [metadata].[Mappings]
	DELETE FROM [metadata].[Attributes]
	DELETE FROM [metadata].[Objects]
	DELETE FROM [metadata].[ObjectTypes]
	DELETE FROM [metadata].[Systems]
	DELETE FROM [metadata].[SystemTechnologies]

	INSERT INTO [metadata].[SystemTechnologies]	([TechnologyName])
	VALUES 
		('Unknown'),
		('File'),
		('Database'),
		('ODBC')

	INSERT INTO [metadata].[ObjectTypes]
		(
	    [ObjectTypeName]
		)
	VALUES
		('Unknown'),
		('csv'),
		('txt'),
		('tsv'),
		('table')


END
GO
