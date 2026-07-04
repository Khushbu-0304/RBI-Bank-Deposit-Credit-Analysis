CREATE DATABASE rbi_bank_analysis;
USE rbi_bank_analysis;

CREATE TABLE banking_data (
    Year INT,
    Region VARCHAR(50),
    State VARCHAR(100),
    Deposit BIGINT,
    Credit BIGINT
);

SELECT * FROM banking_data LIMIT 10;

SELECT COUNT(*) FROM banking_data;


---queries---
Query 1 — Total Deposit and Total Credit by Year
select Year,
    sum(Deposit) as total_deposit,
    sum(Credit) as total_credit
from banking_data
group by Year
order by year;

Query 2 — Credit-Deposit Ratio by Year
select Year,
     sum(Deposit) as total_deposit,
     sum(Credit) as total_credit,
     round((sum(Credit)/sum(Deposit) )* 100,2 ) as CD_ratio
from banking_data
group by Year
order by Year;

Query 3 — Top 10 States by Total Deposit
select State,sum(Deposit) as total_deposit
from banking_data
group by State
order by total_deposit desc 
limit 10;

Query 4 — Top 10 States by Total Credit
select State, sum(Credit) as total_credit
from banking_data
group by State
order by total_credit desc
limit 10; 

Query 5 — State-wise Credit-Deposit Ratio
select State,
  sum(Deposit) as total_deposit,
  sum(Credit) as total_credit,
  round((sum(Credit)/sum(Deposit)) * 100 , 2) as CD_ratio
from banking_data
group by State
order by CD_ratio desc; 

QUERY 6 — Region-wise deposit and credit
select region,
   sum(Deposit) as total_deposit,
   sum(Credit) as total_credit,
   round((sum(Credit)/sum(Deposit)) * 100,2) as CD_ratio
from banking_data
group by Region
order by total_deposit desc;

QUERY 7 — Year-wise deposit growth %
select Year,sum(Deposit) as total_deposit,
round(((sum(Deposit) - lag(sum(Deposit)) over (order by year)) / lag(sum(Deposit)) over (order by year)) *100 , 2) as deposit_growth_pct
from banking_data
group by Year
order by year;

QUERY 8 — Year-wise credit growth %
SELECT 
    Year,
    SUM(Credit) AS Total_Credit,
    ROUND(
        ((SUM(Credit) - LAG(SUM(Credit)) OVER (ORDER BY Year)) 
        / LAG(SUM(Credit)) OVER (ORDER BY Year)) * 100, 2
    ) AS Credit_Growth_Pct
FROM banking_data
GROUP BY Year
ORDER BY Year;

QUERY 9 — Top 10 states by CD ratio, but exclude very tiny territories if you want cleaner ranking
select State,
  sum(Deposit) as total_deposit,
  sum(Credit) as total_credit,
  round((sum(Credit)/sum(Deposit))*100,2) as CD_ratio
from banking_data
group by State
having sum(Deposit) > 100000
order by CD_ratio desc
limit 10;

QUERY 10 — Bottom 10 states by CD ratio
SELECT 
    State,
    SUM(Deposit) AS Total_Deposit,
    SUM(Credit) AS Total_Credit,
    ROUND((SUM(Credit)/SUM(Deposit))*100, 2) AS CD_Ratio
FROM banking_data
GROUP BY State
HAVING SUM(Deposit) > 100000
ORDER BY CD_Ratio ASC
LIMIT 10;