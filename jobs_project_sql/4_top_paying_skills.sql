/*
QUESTION: What are the top paying skills based on salary?
- look at the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries, regardless of location
- Why? it reveals how different skills impact salary levels for Data Analysts and
    helps identify the most finanically rewarding skills to acquire or improve
*/

SELECT
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL AND
    job_location = 'Anywhere'
GROUP BY 
    skills
ORDER BY 
    avg_salary DESC
LIMIT 25;

/*
Based on the top 25 results here are some key insights and trends 
related to skills and their average salaries

Advanced Tools & Platforms:
Big data processing skills and cloud platforms trend towards
the highest salaries, Skills like Pyspark in particular tend to lead
to very high average salaries with its capabilities when it comes to
handling large-scale data. Other note worthy skills being Bitbucket,
Couchbase, and Watson all averageing between $160k-$190k

Cloud Computing & Big data:
Knowledge in Cloud computing services and Big Data technology is
CRUCIAL for high paying roles with Databricks and Elasticsearch
leading the pack, Technologies like Kubernetes are also essential
for their container orchestration abilities in cloud environments.

Data Science Libraries:
With the growing trend of using Python over R grows the demand for
knowledge in its very powerful Data science libraries, Libraries like
Pandas, and NumPy are incredibly useful for their Data manipulation
and analisys, where a library like Scikit-learn is essential for
machine learning in Python

Developement & Operation Tools:
DevOps is growing in seemingly in almost every job field in the tech
industry, so it's no surprise to see tools for it being high demand
in data. Tools like Gitlab, Jenkins, and Airflow are all becoming a
crucial part of any data teams operations with their assistance in
managing code, automating workflows, and handling data pipelines

Here is a JSON file for the results of this SQL Query
JSON FILE:
[
  {
    "skills": "pyspark",
    "avg_salary": "208172"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "189155"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515"
  },
  {
    "skills": "watson",
    "avg_salary": "160515"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155486"
  },
  {
    "skills": "gitlab",
    "avg_salary": "154500"
  },
  {
    "skills": "swift",
    "avg_salary": "153750"
  },
  {
    "skills": "jupyter",
    "avg_salary": "152777"
  },
  {
    "skills": "pandas",
    "avg_salary": "151821"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "145000"
  },
  {
    "skills": "golang",
    "avg_salary": "145000"
  },
  {
    "skills": "numpy",
    "avg_salary": "143513"
  },
  {
    "skills": "databricks",
    "avg_salary": "141907"
  },
  {
    "skills": "linux",
    "avg_salary": "136508"
  },
  {
    "skills": "kubernetes",
    "avg_salary": "132500"
  },
  {
    "skills": "atlassian",
    "avg_salary": "131162"
  },
  {
    "skills": "twilio",
    "avg_salary": "127000"
  },
  {
    "skills": "airflow",
    "avg_salary": "126103"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "125781"
  },
  {
    "skills": "jenkins",
    "avg_salary": "125436"
  },
  {
    "skills": "notion",
    "avg_salary": "125000"
  },
  {
    "skills": "scala",
    "avg_salary": "124903"
  },
  {
    "skills": "postgresql",
    "avg_salary": "123879"
  },
  {
    "skills": "gcp",
    "avg_salary": "122500"
  },
  {
    "skills": "microstrategy",
    "avg_salary": "121619"
  }
]
*/