# Layoff Data Analysis

## Overview

This project analyzes layoff data collected from various sources, primarily from Kaggle. The dataset contains information on layoffs by companies across different countries, industries, and stages. The analysis aims to uncover trends, identify the most affected sectors, and understand the impact of layoffs over recent years.

## Dataset

The dataset includes the following columns:

- `company`: Name of the company.
- `country`: Country where the layoffs occurred.
- `industry`: Industry in which the company operates.
- `location`: Specific location of the layoffs.
- `date`: Date of the layoff announcement.
- `total_laid_off`: Total number of employees laid off.
- `percentage_laid_off`: Percentage of the workforce that was laid off.
- `stage`: The stage of the layoff process (e.g., initial, follow-up).

### Source

The dataset was obtained from [Kaggle](https://www.kaggle.com/).

## Analysis

The SQL queries used for the analysis cover various aspects of the layoffs:

1. **Exploratory Data Analysis**
   - Fetching all data from the dataset.
  
2. **Top Affected Countries**
   - Query to find the top 5 countries with the highest number of layoffs.

3. **Top Affected Industries**
   - Query to identify the top 5 industries with the most layoffs.

4. **Top Affected Locations**
   - Analysis of the top 5 locations experiencing layoffs.

5. **Yearly Layoffs Trends**
   - Queries to analyze layoffs by year (2021, 2022, 2023).

6. **Company-specific Layoffs**
   - Identifying companies with the highest number of layoffs per year.

7. **Country-specific Analysis**
   - Layoff analysis focused on the United States and India, including trends over the years.

8. **Stage of Layoffs**
   - Analyzing layoffs based on the stage in which they occurred.

## Findings

The analysis reveals significant insights such as:

- The countries and industries most affected by layoffs.
- Yearly trends showing an increase or decrease in layoffs.
- Companies with the highest percentage of layoffs in relation to their workforce.

## Usage

To run this analysis, ensure you have access to a SQL environment that can query the dataset. You can execute the provided SQL queries to generate insights.

## Conclusion

This project highlights the current landscape of layoffs and provides valuable insights into the economic and social implications of workforce reductions. Continuous monitoring and analysis of such data can help organizations and policymakers make informed decisions.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
