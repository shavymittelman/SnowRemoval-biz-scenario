use SnowRemovalDB
go
delete Client 
go

insert Client(FirstName, LastName, StreetAddress, City, Province, Zipcode, LotDescription, MeasurementInMeters, Frequency, DateStarted, DateEnded)
select 'Mark', 'Man', '1607 St. John Street', 'Archerwill', 'Saskatchewan', 'S4P 3Y2', 'driveway', 15, 'standard', '2020/2/9', null
union select 'Charles', 'Fisher', '4514 Eglinton Avenue', 'Toronto', 'Ontario', 'M4P 1A6', 'staircase and pathway', 25, 'standard', '2015/3/19', null
union select 'Jonathan', 'Magno', '2153 MacLaren Street',  'Ottawa', 'Ontario', 'M32 1H3', 'driveway', 20, 'elite', '2014/12/5', '2022/12/18'
union select 'Frank', 'Dickens', '3923 Weston Rd', 'Toronto', 'Ontario', 'M9N 1G4', 'driveway and pathway', 18, 'occasional', '2018/1/1', null
union select 'Mark', 'Twain', '4786 St. Paul Street', 'Niagara Falls', 'Ontario', 'L2E 4E6', 'pathway and backyard', 40, 'elite', '2020/11/9', '2021/12/6'
union select 'Elie', 'Swift', '1654 Fourth Avenue', 'Calgary', 'Alberta', 'T2P 0H3', 'porch and staircase and pathway', 45, 'elite', '2015/1/9', null
union select 'Raymond', 'Baum', '4381 St-Jerome Street', 'St Jerome', 'Quebec', 'S4P 3Y2', 'backyard and driveway', 38, 'standard', '2019/12/15', null
union select 'Martin', 'Wiesel', '1308 Tanner Street', 'Vancouver', 'British Columbia', 'V5R 2T4', 'pathway and backyard and back porch', 42, 'elite', '2021/1/27', null
union select 'Paul', 'Francois', '352 Bridgeport Rd', 'Alliston', 'Ontario', 'L9R 1H4', 'staircase and pathway', 25, 'occasional', '2014/12/6', '2021/12/6'
union select 'Jo', 'Twain', '2529 Keith Road', 'North Vancouver', 'British Columbia', 'V5T 2C1', 'pathway and driveway and staircase', 35, 'standard', '2020/11/9', null
