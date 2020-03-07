<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
</style>


<div class="topnav">
  <a class="active" href="./index">Home</a>
  <a href="./data">Data</a>
  <a href="./EDA.html">Exploratory Data Analysis</a>
  <a href="./gdp_modeling.html">Modeling of GDP</a>
</div>


# Data

## Source

The data was mined from the [Federal Reserve Bank of St. Louis Economic Data](https://fred.stlouisfed.org/). 

## Structure

There are 195 observations of 15 variables.

The observations are taken quarterly, starting at 1971 Q1 and ending 2019 Q3.

## Variables

| Variable | Description | FRED ID |
|----------|-------------|---------|
| Date     | Date of observation | N/A |
| gdp_change | Change in GDP from the previous observation | A191RP1Q027SBEA |
| unrate   | Unemployment rate | UNRATE |
| nfjobs   | Non-farming jobs  | PAYEMS | 
| treas10yr | 10 Year US treasury constant maturity rate | DGS10 |
| fedintrate | US federal interest rate | FEDFUNDS |
| personincomechg | Change in real disposable personal income | A067RO1Q156NBEA |
| cpi | Consumer Price Index for all urban consumers: all ttems in U.S. city average | CPIAUCNS |
| population | Population | POPTHM |
| corpprofitchg | Corporate profits after tax (converted to percent change) | CP |
| crude_wti | Spot Crude Oil Price: West Texas Intermediate | WTISPLC |
| gold | Gold Fixing Price 10:30 A.M. (London time) in london bullion market, based in U.S. Dollars | GOLDAMGBD228NLBM |
| ppi | Producer price index | PPIACO |
| japan | US/Japan exchange rate | EXJPUS | 
| uk | US/UK exchange rate | EXUSUK |

Change in GDP (`gdp_change`) is considered the response variable.

## Reference

 * U.S. Bureau of Economic Analysis, Gross Domestic Product [A191RP1Q027SBEA], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/A191RP1Q027SBEA, March 6, 2020.
 * U.S. Bureau of Labor Statistics, All Employees, Total Nonfarm [PAYEMS], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/PAYEMS, March 6, 2020.
 * Board of Governors of the Federal Reserve System (US), 10-Year Treasury Constant Maturity Rate [DGS10], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/DGS10, March 6, 2020.
 * Board of Governors of the Federal Reserve System (US), Effective Federal Funds Rate [FEDFUNDS], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/FEDFUNDS, March 6, 2020.
 * U.S. Bureau of Economic Analysis, Real Disposable Personal Income [A067RO1Q156NBEA], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/A067RO1Q156NBEA, March 6, 2020.
 * U.S. Bureau of Labor Statistics, Consumer Price Index for All Urban Consumers: All Items in U.S. City Average [CPIAUCNS], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/CPIAUCNS, March 6, 2020.
 * U.S. Bureau of Economic Analysis, Population [POPTHM], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/POPTHM, March 6, 2020.
 * U.S. Bureau of Economic Analysis, Corporate Profits After Tax (without IVA and CCAdj) [CP], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/CP, March 6, 2020.
 * Federal Reserve Bank of St. Louis, Spot Crude Oil Price: West Texas Intermediate (WTI) [WTISPLC], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/WTISPLC, March 6, 2020.
 * ICE Benchmark Administration Limited (IBA), Gold Fixing Price 10:30 A.M. (London time) in London Bullion Market, based in U.S. Dollars [GOLDAMGBD228NLBM], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/GOLDAMGBD228NLBM, March 6, 2020.
 * Board of Governors of the Federal Reserve System (US), Japan / U.S. Foreign Exchange Rate [EXJPUS], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/EXJPUS, March 6, 2020.
 * Board of Governors of the Federal Reserve System (US), U.S. / U.K. Foreign Exchange Rate [EXUSUK], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/EXUSUK, March 6, 2020.


