--1)we'd like to send out special offers to our best clients.
--Only clients who used our service for 5 years or more OR clients who use our elite service should be listed and have a star next to their full name (ex:John Smith*)
select BestClients = concat(c.FirstName, ' ', c.LastName, '*')
from Client c
--AS I assumed you only wanted to send to current clients. I can change that if not true.
where c.DateEnded is null 
and (
    (datediff(year, c.DateStarted, getdate()) >= 5)
or
    (c.Frequency = 'elite')
)
--2)How many clients are there per our three categories (elite, standard, occasional)?
select CountOfClients = count(*), c.Frequency
from Client c
group by c.Frequency
--3)How many years have each of our clients used our service for?
select NumOfYears = datediff(year, c.DateStarted, isnull(c.DateEnded, getdate())), c.FirstName, c.LastName
from Client c 
--4)we'd like to see how much a client pays us per month.
select Client = concat(c.FirstName, ' ', c.LastName), 
    CostPerMonth = c.TotalCost * 
    case 
        when c.Frequency = 'elite' then 10 
        when c.Frequency = 'Standard' then 4 
        when c.Frequency = 'Occasional' then 2 
    end 
from Client c 