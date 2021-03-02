SELECT '"MajorVersionNumber", "MinorVersionNumber", "Branch", "Url", "ReleaseDate", "MainstreamSupportEndDate", "ExtendedSupportEndDate", "MajorVersionName", "MinorVersionName"' AS RowData

UNION

SELECT CONCAT(
  CAST(MajorVersionNumber AS VARCHAR(10)), ', '
, CAST(MinorVersionNumber AS VARCHAR(10)), ', '
, '"', Branch, '"', ', '
, '"', Url, '"', ', '
, '"', ReleaseDate, '"', ', '
, '"', MainstreamSupportEndDate, '"', ', '
, '"', ExtendedSupportEndDate, '"', ', '
, '"', MajorVersionName, '"', ', ' 
, '"', MinorVersionName, '"'
) AS RowData
FROM SqlServerVersions
