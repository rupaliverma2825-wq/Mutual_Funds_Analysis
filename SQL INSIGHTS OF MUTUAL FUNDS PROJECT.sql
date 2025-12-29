DROP TABLE IF EXISTS MUTUAL_FUNDS;
CREATE TABLE MUTUAL_FUNDS(

AMC VARCHAR(100),
Fund_Name VARCHAR(100),
Morning_star_rating INT,
Value_Research_rating INT,
one_month_return REAL,
NAV REAL,
one_Year_return REAL,
three_Year_Return REAL,
Minimum_investment REAL,
Fund_Manager VARCHAR(100),
AUM REAL,
Category VARCHAR(50),
Risk VARCHAR(100)
);

SELECT * FROM MUTUAL_FUNDS;

-- Top 5 Mutual Funds Based on One-Month Return-

SELECT
	FUND_NAME,
	ONE_MONTH_RETURN
FROM
	MUTUAL_FUNDS
ORDER BY
	ONE_MONTH_RETURN DESC
LIMIT
	5;

-- Top 5 Mutual Funds with 5-Star Ratings (Morningstar & Value Research) Based on One-Year Return- 

SELECT
	FUND_NAME,
	ONE_YEAR_RETURN,
	MORNING_STAR_RATING,
	VALUE_RESEARCH_RATING
FROM
	MUTUAL_FUNDS
WHERE
	MORNING_STAR_RATING = VALUE_RESEARCH_RATING
	AND MORNING_STAR_RATING = 5
ORDER BY
	ONE_YEAR_RETURN DESC
limit 5;

-- Top 5 Mutual Funds with 5-Star Ratings (Morningstar & Value Research) Based on Three-Year Return –

SELECT
	FUND_NAME,
	THREE_YEAR_RETURN,
	MORNING_STAR_RATING,
	VALUE_RESEARCH_RATING
FROM
	MUTUAL_FUNDS
WHERE
	MORNING_STAR_RATING = VALUE_RESEARCH_RATING
	AND MORNING_STAR_RATING = 5
ORDER BY
	THREE_YEAR_RETURN DESC
limit 5;

-- Top 5 Fund Managers Based on One-Month Return –

SELECT
	FUND_NAME,
	FUND_MANAGER,
	ONE_MONTH_RETURN
FROM
	MUTUAL_FUNDS
ORDER BY
	ONE_MONTH_RETURN DESC;

-- Top 5 Fund Managers Based on One-Year Return- 

SELECT
	FUND_NAME,
	FUND_MANAGER,
	ONE_YEAR_RETURN
FROM
	MUTUAL_FUNDS
ORDER BY
	ONE_YEAR_RETURN DESC
LIMIT 5;

-- Top 5 Fund Managers Based on Three-Year Return-

SELECT
	FUND_NAME,
	FUND_MANAGER,
	THREE_YEAR_RETURN
FROM
	MUTUAL_FUNDS
ORDER BY
	THREE_YEAR_RETURN DESC
LIMIT 5;

-- Top 5 Very High-Risk Mutual Funds Based on One-Month Return –

SELECT
	FUND_NAME,
	ONE_MONTH_RETURN,
	RISK
FROM
	MUTUAL_FUNDS
WHERE
	RISK='Very High'
ORDER BY
	ONE_MONTH_RETURN DESC
limit 5;

--Top 5 Very High-Risk Mutual Funds Based on One-Year Return –

SELECT
	FUND_NAME,
	ONE_YEAR_RETURN,
	RISK
FROM
	MUTUAL_FUNDS
WHERE
	RISK = 'Very High'
ORDER BY
	ONE_YEAR_RETURN DESC
LIMIT
	5;

-- Top 5 Moderately High-Risk Mutual Funds Based on One-Year Return –

SELECT
	FUND_NAME,
	ONE_YEAR_RETURN,
	RISK
FROM
	MUTUAL_FUNDS
WHERE
	RISK = 'Moderately High'
ORDER BY
	ONE_YEAR_RETURN desc
LIMIT
	5;

--Top 5 Low-Risk Mutual Funds Based on One-Year Return

SELECT
	FUND_NAME,
	ONE_YEAR_RETURN,
	RISK
FROM
	MUTUAL_FUNDS
WHERE
	RISK = 'Low'
ORDER BY
	ONE_YEAR_RETURN desc
LIMIT
	5;

-- Top 5 Very High-Risk Mutual Funds Based on Three-Year Return –

SELECT
	FUND_NAME,
	THREE_YEAR_RETURN,
	RISK
FROM
	MUTUAL_FUNDS
WHERE
	RISK = 'Very High'
ORDER BY
	THREE_YEAR_RETURN DESC
LIMIT
	5;

-- Top 5 Moderately High-Risk Mutual Funds Based on Three-Year Return –

SELECT
	FUND_NAME,
	THREE_YEAR_RETURN,
	RISK
FROM
	MUTUAL_FUNDS
WHERE
	RISK = 'Moderately High'
ORDER BY
	THREE_YEAR_RETURN DESC
LIMIT
	5;

-- Top 5 Low-Risk Mutual Funds Based on Three-Year Return –

SELECT
	FUND_NAME,
	THREE_YEAR_RETURN,
	RISK
FROM
	MUTUAL_FUNDS
WHERE
	RISK = 'Low'
ORDER BY
	THREE_YEAR_RETURN DESC
LIMIT
	5;

--Top 5 Equity Mutual Funds Based on One-Year Return –

SELECT DISTINCT
	(CATEGORY)
FROM
	MUTUAL_FUNDS;


SELECT
	FUND_NAME,
	ONE_YEAR_RETURN,
	CATEGORY
FROM
	MUTUAL_FUNDS
WHERE
	CATEGORY = 'Equity'
ORDER BY
	ONE_YEAR_RETURN DESC
LIMIT
	5;

-- Top 5 Debt Mutual Funds Based on One-Year Return –

SELECT
	FUND_NAME,
	ONE_YEAR_RETURN,
	CATEGORY
FROM
	MUTUAL_FUNDS
WHERE
	CATEGORY = 'Debt'
ORDER BY
	ONE_YEAR_RETURN DESC
LIMIT
	5;

-- Top 5 Hybrid Mutual Funds Based on One-Year Return –

SELECT
	FUND_NAME,
	ONE_YEAR_RETURN,
	CATEGORY
FROM
	MUTUAL_FUNDS
WHERE
	CATEGORY = 'Hybrid'
ORDER BY
	ONE_YEAR_RETURN DESC
LIMIT
	5;

-- Top 5 Mutual Funds in ‘Other’ Category Based on One-Year Return –

SELECT
	FUND_NAME,
	ONE_YEAR_RETURN,
	CATEGORY
FROM
	MUTUAL_FUNDS
WHERE
	CATEGORY = 'Other'
ORDER BY
	ONE_YEAR_RETURN DESC
LIMIT
	5;

-- Top 5 Equity Mutual Funds Based on Three-Year Return –

SELECT
	FUND_NAME,
	THREE_YEAR_RETURN,
	CATEGORY
FROM
	MUTUAL_FUNDS
WHERE
	CATEGORY = 'Equity'
ORDER BY
	THREE_YEAR_RETURN desc
LIMIT
	5;

-- Top 5 Debt Mutual Funds Based on Three-Year Return –

SELECT
	FUND_NAME,
	THREE_YEAR_RETURN,
	CATEGORY
FROM
	MUTUAL_FUNDS
WHERE
	CATEGORY = 'Debt'
ORDER BY
	THREE_YEAR_RETURN desc
LIMIT
	5;

-- Top 5 Hybrid Mutual Funds Based on Three-Year Return –

SELECT
	FUND_NAME,
	THREE_YEAR_RETURN,
	CATEGORY
FROM
	MUTUAL_FUNDS
WHERE
	CATEGORY = 'Hybrid'
ORDER BY
	THREE_YEAR_RETURN desc
LIMIT
	5;	

-- Top 5 Mutual Funds in ‘Other’ Category Based on Three-Year Return –

SELECT
	FUND_NAME,
	THREE_YEAR_RETURN,
	CATEGORY
FROM
	MUTUAL_FUNDS
WHERE
	CATEGORY = 'Other'
ORDER BY
	THREE_YEAR_RETURN desc
LIMIT
	5;	

-- Top 5 Mutual Funds Based on Assets Under Management (AUM) –

SELECT
	AMC,
	FUND_NAME,
	AUM
FROM
	MUTUAL_FUNDS
ORDER BY
	AUM DESC
LIMIT
	5;

-- Most expensive and cheapest mutual funds

SELECT
	FUND_NAME,
	NAV
FROM
	MUTUAL_FUNDS
ORDER BY
	NAV DESC
LIMIT
	1;

SELECT
	FUND_NAME,
	NAV
FROM
	MUTUAL_FUNDS
ORDER BY
	NAV 
LIMIT
	1;

-- top 3 fund manager on the basis of 3 year return
SELECT
	FUND_MANAGER,
	THREE_YEAR_RETURN
FROM
	MUTUAL_FUNDS
ORDER BY
	THREE_YEAR_RETURN DESC
LIMIT
	3;

-- Most trusted AMC by AUM

SELECT
	AMC,
	AUM
FROM
	MUTUAL_FUNDS
ORDER BY
	AUM DESC
LIMIT
	5;
