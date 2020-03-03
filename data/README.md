
# Data

## Source

The data in `economic_indicators.csv` was mined from the [Federal Reserve Bank of St. Louis Economic Data](https://fred.stlouisfed.org/). 

## Structure

There are 135 observations of 11 variables.

The observations are taken quarterly, starting at 1986 Q1 and ending 2019 Q3.

## Variables

| Variable | Description |
|----------|-------------|
| Date     | Date of observation |
| gdp_change | Change in GDP from the previous observation |
| unrate   | Unemployment rate |
| nfjobs   | Non-farming jobs  |
| treas10yr | 10 Year US Treasury Yield |
| treas3mo | 3 Month US Treasury Yield |
| treas10yr3mo | Difference between `treas10yr` and `treas3mo` |
| fedintrate | US federal interest rate |
| libor3mo | 3 Month London Interbank Offered Rate (US DOllar) |
| personincomechg | Personal income change |
| corpprofitchg | Corporate profit change |

Change in GDP (`gdp_change`) is the response variable.
