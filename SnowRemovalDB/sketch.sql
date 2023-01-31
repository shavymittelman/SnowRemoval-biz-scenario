/*
Client
    ClientId int pk
	FirstName varchar(30) not null not blank
	LastName varchar(30) not null not blank
	Address varchar(50) not null not blank
	City varchar(25) not null not blank
	Province varchar(25) not null not blank
	Zipcode char(7) not null not blank
	LotDescription varchar(50) not null not blank
	MeasurementInMeters int not null between 15 and 500
	Frequency varchar(10) not null either elite, standard, occasional
	DateStarted date not null before getdate
	DateEnded date 
	TotalCost computed $3 per meter 
	constraint DateStarted <= DateEnded
*/