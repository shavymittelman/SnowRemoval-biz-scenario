use SnowRemovalDB
go

drop table if exists Client
go

create table dbo.Client(
    ClientId int not null identity primary key,
    FirstName varchar(30) not null constraint ck_Client_FirstName_cannot_be_blank check(FirstName <> ''),
    LastName varchar(30) not null constraint ck_Client_LastName_cannot_be_blank check(LastName <> ''),
    Address varchar(50) not null constraint ck_Client_Address_cannot_be_blank check(Address <> ''),
    City varchar(25) not null constraint ck_Client_City_cannot_be_blank check(City <> ''),
    Province varchar(25) not null constraint ck_Client_Province_cannot_be_blank check(Province <> ''),
    Zipcode char(7) not null constraint ck_Client_Zipcode_cannot_be_blank check(Zipcode <> ''),
    LotDescription varchar(50) not null constraint ck_Client_LotDescription_cannot_be_blank check(LotDescription <> ''),
    MeasurementInMeters int not null constraint ck_Client_MeasurementInMeters_must_be_between_15_and_500 check(MeasurementInMeters between 15 and 500),
    Frequency varchar(10) not null constraint ck_Client_Frequency_must_be_either_elite_standard_or_occasional check(Frequency in ('elite', 'standard', 'occasional')),
    DateStarted date not null constraint ck_Client_DateStarted_must_be_before_the_current_date check(DateStarted <= getdate()),
    DateEnded date,
    TotalCost as MeasurementInMeters * 3 persisted,
    constraint ck_Client_DateStarted_before_DateEnded check(DateStarted <= DateEnded)
)
go