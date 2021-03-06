# Pewlett-Hackard-Analysis

### Overview of the analysis
The purpose for this analysis is to determine the number of Pewlett-Hackard retiring employees per title, and identify employees who are eligible to participate in a mentorship program. This is in order to prepare for the “silver tsunami” as many current employees reach retirement age. PostgreSQL was used to query CSVs and create new tables to show who will retire. Here is an ERD of the data tables that were used

![ERD](EmployeeDB.png)

### Results
* There are 90,398 Pewlett Hackard employees across 7 departments that are eligible for retirement this year. 
 ![retirecount](Retiring_titles.png)
 
* The largest group of retirement eiligilble employees are the senior engineers with 29,414 employees. In stark contrast, smallest group of reitrement eligible employees is the Managers with only 2 emlployees
 
* Many of of these employees had multiple roles during their time at Pewlett Hackard. Here is a snippet of some employees who had multiple roles.
 ![retirecount](employee_titles.png)

* Based on the amount of employees eligible for retirement, there are only 1,549 employees who can particiate in the mentorship program. Here are the mentorship eligible employees by title.
 
 ![mentors](Eligible_mentors.png)


### Summary
There are 90,398 roles will need to be filled as the "silver tsunami" begins to make an impact.

There are only 1,549 qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees. If Pewlett-Hackard hires 90,398 new people, here will not be enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees. 

One option to add more eligible mentors would be to update the age parameters for giligble mentors. 
Increasing the parameters from only 1965 to 1965-1970 give a larger amount of mentors, increasing the number by almost 1000.
 ![mentors](Updated_mentors.png)
 
Here is part of query to find this larger pool of mentors. The date has been switched from 1965-12-31 to 1970-12-31.

 ![mentors](Mentor_query.png)

The best option for the smoothest transition would be to hire slowly new employees over time so the all of the exisitng mentors have a chance to interact with the new employees.


