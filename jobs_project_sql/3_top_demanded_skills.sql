/*
QUESTION: What are the most in-demand skills for data analysts?
- Join job postings to inner join table similar to Query 2
- Identify the top 5 in-demand skills for data analysts.
- Focus on all job postings.
- Why? Retreives the top 5 skills with the highest demand in the job market,
    providing insights into the most valuable skills for job seekers
*/


-- Remote Data Analyst skills demand
SELECT
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere'
GROUP BY 
    skills
ORDER BY 
    demand_count DESC
LIMIT 5;

/*
In the Remote skills demand query we find the two highest in demand skills
to be SQL and Excel, both data table softwares with SQL having a larger capacity
for large data sets and its own coding language used to specify results.
In the realm of coding languages Python seems to win over R for the top 5 most demanded slots
This is likely due to its incredible flexibility when it somes to big data,
data scraping, and sorting through data with a vast array of libraries at the users disposal.
Finally taking 4th, and 5th place we have Tableau, and Power BI.
Data visualization tools commonly used in the data field in order to help
data analysts break down data in a much more readable and presentable fashion.
*/


-- Georgia Data Analyst skills demand
SELECT
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location LIKE '%, GA'
GROUP BY 
    skills
ORDER BY 
    demand_count DESC
LIMIT 5;

/*
In the Georgia Data Analyst skills demand we only see a small variation
from the remote skills demand while SQL and Excel remain as the top 2 skills
of a Data Analyst in Georgia for 2023, Python has moved down one placement, remaining
still the highest in demand coding language for Data Analysts with tableau taking 3rd
and SAS making its way into the top 5. SAS's demand remains high due to its
advanced data analytical tools as well as having its own data visualization tool
known as SAS visual analytics
*/

/*
JSON FILES FOR QUERIES
Remote Query JSON file
[
  {
    "skills": "sql",
    "demand_count": "7291"
  },
  {
    "skills": "excel",
    "demand_count": "4611"
  },
  {
    "skills": "python",
    "demand_count": "4330"
  },
  {
    "skills": "tableau",
    "demand_count": "3745"
  },
  {
    "skills": "power bi",
    "demand_count": "2609"
  }
]

GA Query JSON file
[
  {
    "skills": "sql",
    "demand_count": "2318"
  },
  {
    "skills": "excel",
    "demand_count": "1848"
  },
  {
    "skills": "tableau",
    "demand_count": "1242"
  },
  {
    "skills": "python",
    "demand_count": "1089"
  },
  {
    "skills": "sas",
    "demand_count": "936"
  }
]
*/