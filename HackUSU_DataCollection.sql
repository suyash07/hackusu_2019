SELECT 
	[country_txt]
	,[targtype1_txt]
	,[natlty1_txt]
	,COUNT([natlty1_txt])	[COUNT]
	--,[natlty1_txt]
	--,[iyear]
	--,[nkill]
	--*

	--,COUNT([natlty1_txt]) [COUNT]
	INTO [TerroristPreventionData].[dbo].[targettypeandattacker]
  FROM 
  --[TerroristPreventionData].[dbo].[3globalterrorismdb_0718dist]
  [TerroristPreventionData].[dbo].[globalterrorismdb_0718dist$]
 -- WHERE
	--[country_txt] = 'Afghanistan'
 GROUP BY
	[country_txt]
	,[targtype1_txt]
	,[natlty1_txt]
--ORDER BY
--    [country_txt]
--	,[iyear]