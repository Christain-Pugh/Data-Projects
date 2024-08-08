/*
QUESTION TO BE ANSWERED WITH THIS QUERY: What are the top paying data analyst jobs?
- Identify the top 10 highest paying Data Analyst roles that are available remotely (And locally)
- Focuses on job postings with specified salaries (remove null values)
- Why? Highlight the top-paying oppurtunities for Data Analysts, 
offering insights into employment options and location flexibility
*/

-- Georgia Data Analyst jobs query

SELECT
    job_id,
    name AS company_name,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM
    job_postings_fact
LEFT JOIN company_dim ON
    job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND 
    job_location LIKE '%, GA' AND 
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10;


/*
In the Georgia Data Analyst jobs query 
The dataset showcases the top 10 job opportunities with a high concentration in Atlanta. 
The average salary for the top 10 jobs is $168,449.
with salaries ranging between $145,500 and $245,000. 
Positions such as Data Analysts and Lead Analysts are most common. 
The job postings span a 7-month period, 
indicating ongoing demand for data professionals in the region.
*/

-- Remote Data Analyst jobs query

SELECT
    job_id,
    name AS company_name,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM
    job_postings_fact
LEFT JOIN company_dim ON
    job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND 
    job_location = 'Anywhere' AND 
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10;

/*
In the Remote Data Analyst jobs Query
The dataset presents a high demand for data professionals with 
significant variations in salary reflecting different levels of seniority and specialization. 
The average salary is approximately $291,009 with a median salary of $217,000. 
The roles include a mix of senior positions such as Directors, and Principal Data Analysts, 
as well as more specialized roles like ERM Data Analysts and Data Analysts in niche fields.
The job postings are spread throughout 2023, indicating consistent hiring activity for data roles. 
The data suggests that remote and hybrid work options are prevalent, 
aligning with the broader trend towards flexible work arrangements.
*/

/*
JSON FILE'S

Georgia Jobs
[
  {
    "job_id": 1147498,
    "company_name": "Channel Personnel Services",
    "job_title": "Director Analytics",
    "job_location": "Atlanta, GA",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "245000.0",
    "job_posted_date": "2023-06-30 19:56:28"
  },
  {
    "job_id": 87862,
    "company_name": "Brown & Brown, Inc.",
    "job_title": "Analytics and R&D Actuary",
    "job_location": "Sandy Springs, GA",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "170000.0",
    "job_posted_date": "2023-06-11 07:04:10"
  },
  {
    "job_id": 729613,
    "company_name": "AT&T",
    "job_title": "Principal-Data Analysis",
    "job_location": "Atlanta, GA",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "156500.0",
    "job_posted_date": "2023-05-05 15:19:33"
  },
  {
    "job_id": 1531603,
    "company_name": "Citi",
    "job_title": "Data Analytics Lead Analyst - Hybrid",
    "job_location": "Atlanta, GA",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "151950.0",
    "job_posted_date": "2023-08-17 04:14:37"
  },
  {
    "job_id": 1505349,
    "company_name": "Citi",
    "job_title": "Data Analytics - Lead Analyst (Hybrid)",
    "job_location": "Atlanta, GA",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "151950.0",
    "job_posted_date": "2023-09-02 20:19:48"
  },
  {
    "job_id": 1066248,
    "company_name": "Citi",
    "job_title": "Operational Risk and Control Data Analyst (Hybrid)",
    "job_location": "Atlanta, GA",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "150890.0",
    "job_posted_date": "2023-04-12 00:52:19"
  },
  {
    "job_id": 1104704,
    "company_name": "Intuit Inc",
    "job_title": "Staff Business Data Analyst",
    "job_location": "Atlanta, GA",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "150000.0",
    "job_posted_date": "2023-10-04 07:41:19"
  },
  {
    "job_id": 783006,
    "company_name": "Staff Smart, Inc.",
    "job_title": "Data Analyst",
    "job_location": "Augusta, GA",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "150000.0",
    "job_posted_date": "2023-07-31 18:21:58"
  },
  {
    "job_id": 1109465,
    "company_name": "Affinity",
    "job_title": "Data Analyst",
    "job_location": "Augusta, GA",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "150000.0",
    "job_posted_date": "2023-07-27 00:05:46"
  },
  {
    "job_id": 985699,
    "company_name": "Peraton",
    "job_title": "Data Analyst/ Engineer",
    "job_location": "Gordon, GA",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "145500.0",
    "job_posted_date": "2023-11-21 09:40:27"
  }
]

Remote jobs
[
  {
    "job_id": 226942,
    "company_name": "Mantys",
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "650000.0",
    "job_posted_date": "2023-02-20 15:13:33"
  },
  {
    "job_id": 547382,
    "company_name": "Meta",
    "job_title": "Director of Analytics",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "336500.0",
    "job_posted_date": "2023-08-23 12:04:42"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "255829.5",
    "job_posted_date": "2023-06-18 16:03:12"
  },
  {
    "job_id": 99305,
    "company_name": "Pinterest Job Advertisements",
    "job_title": "Data Analyst, Marketing",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "232423.0",
    "job_posted_date": "2023-12-05 20:00:40"
  },
  {
    "job_id": 1021647,
    "company_name": "Uclahealthcareers",
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "217000.0",
    "job_posted_date": "2023-01-17 00:17:23"
  },
  {
    "job_id": 168310,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-08-09 11:00:01"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189309.0",
    "job_posted_date": "2023-12-07 15:00:13"
  },
  {
    "job_id": 310660,
    "company_name": "Motional",
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189000.0",
    "job_posted_date": "2023-01-05 00:00:25"
  },
  {
    "job_id": 1749593,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "186000.0",
    "job_posted_date": "2023-07-11 16:00:05"
  },
  {
    "job_id": 387860,
    "company_name": "Get It Recruit - Information Technology",
    "job_title": "ERM Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "184000.0",
    "job_posted_date": "2023-06-09 08:01:04"
  }
]
*/