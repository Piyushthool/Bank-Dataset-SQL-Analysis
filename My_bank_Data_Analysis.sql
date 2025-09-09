CREATE DATABASE mybankdb;
use mybankdb;
SELECT * FROM customers;
SELECT * FROM accounts;
SELECT * FROM transactions;
SELECT * FROM loans;
SELECT * FROM creditcards;
SELECT * FROM branches;
SELECT * FROM atms;

SELECT COUNT(*) AS totalcustomers from customers;
SELECT COUNT(*) AS totalcustomers from accounts;
SELECT COUNT(*) AS totalcustomers from transactions;
SELECT sum(amount) AS totalloansammount from loans;
SELECT sum(creditlimit) AS totalcreditlimit from creditcards;

SELECT * from account where status='Active';
SELECT * from transactions where transactiondate > '2023-01-15';
select * from loans where interestrate >5.0;
select * from creditcards where balance >creditlimit;



SELECT c.customerid,c.name,c.age,a.accountnumber,a.accounttype,a.balance
from customers c
JOIN Accounts a on c.customerid=a.customerid;

SELECT t.transactionid,t.transactiondate,t.amount,t.type,t.description, a.accountnumber,a.accounttype,c.name as customername
FROM transactions t
join accounts a on t.accountnumber = a.accountnumber
join customers c on a.customerid= c.customerid;

SELECT c.name,l.amount as LoanAmount
FROM customers c 
join loans l on c.customerid = l.customerid
order by l.amount DESC 
limit 10;

SET SQL_SAFE_UPDATES=0;

DELETE FROM Accounts
where status = 'Inactive';

SELECT c.customerid,c.name, COUNT(a.AccountNumber) AS NumAccounts
FROM customers c
join accounts a on c.customerid = a.customerid
GROUP BY c.customerid, c.name
HAVING COUNT(a.AccountNumber) > 1;

SELECT SUBSTRING(Name,1,3) AS FirstThreeCharacterOfName
from customers;

SELECT 
SUBSTRING_INDEX(Name,' ',1) AS FirstName,
SUBSTRING_INDEX(Name,' ',-1) AS LastName
FROM CUSTOMERS;

SELECT * FROM CUSTOMERS 
WHERE MOD(Customerid,2) <> 0;

SELECT DISTINCT amount 
from loans L1
where 5= (
select count(distinct amount)
from loans L2
where L2.amount >= L1.amount );

SELECT MAX(AMOUNT) AS SecondHighestLoan
from loans 
where amount < (
select max(amount) 
from loans );

SELECT customerid
from accounts
where status ='Inactive';

SELECT * 
FROM CUSTOMERS
LIMIT 1;

SELECT NOW() AS CURRENTDATETIME;

CREATE TABLE CustomerClone LIKE Customers;
INSERT INTO CustomerClone select * from customers;

SELECT Customerid,
datediff(enddate,curdate()) AS DaysRemaining
from loans
where enddate > curdate();

SELECT ACCOUNTNUMBER ,MAX(TRANSACTIONDATE) AS LATESTTRANSACTIONDATE
FROM TRANSACTIONS
GROUP BY ACCOUNTNUMBER;

SELECT AVG(age) AS AverageAge
from customers;

SELECT AccountNumber,Balance 
FROM Accounts
Where Balance < 25000
AND OpenDate <= '2022-01-01';

SELECT * FROM LOANS
WHERE EndDate >= CURDATE()
AND status = 'Active';

SELECT Accountnumber ,SUM(Amount) as totalamount
from transactions
where month(transactiondate) =6
and year(transactiondate) = 2023
GROUP BY Accountnumber;

SELECT customerid ,avg(balance) as averagecreditcardbalance
from creditcards
group by customerid;

SELECT LOCATION ,COUNT(*) AS NumberofInactiveATMs
from atms
where status ='Out of Service'
GROUP BY location;

SELECT name,age, CASE 
when age <30 then 'Below 30'
when age BETWEEN 30 AND 60 THEN  '30 To 60'
ELSE 'Above 60'
END AS age_group
from customers;