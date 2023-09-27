CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT DISTINCT 
	SUBSTRING_INDEX(ExtractValue(xml_doc,"//author")," ",2) as author
	FROM catalogs
	ORDER BY author;
END