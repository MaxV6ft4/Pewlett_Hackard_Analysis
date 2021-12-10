# Pewlett Hackard Analysis

## Overview
In this analysis I created three new tables in PostgreSQL to help determine how many employees per job title at Pewlett Hackard are ready for retirement.  Then I created an additional table to determine how many employees are eligibile to participate in PH's mentorship program to assist younger, less-experienced employees.

## Results
- 90,398 employees are eligible for retirement, just under one-third of PH's entire workforce!
- More employees with titles of either Senior Engineer or Senior Staff are eligible for retirement than employees with other titles.  There are 29,414 senior engineers and 28,254 senior staff that are eligible, just about double the number of retirement-eligible employees with the title of Engineer (14,222, the next-highest number in the list).


![Count of retiring employees per title](https://github.com/MaxV6ft4/Pewlett_Hackard_Analysis/blob/main/Retiring_Employee_Title_Count.png)


- Only two out of the nine department managers are retirement-eligible.
- 1,549 current employees were born in 1965 and are therefore elgibile for the mentorship program.

## Summary
- As mentioned in the results, about one-third of the workforce will need to be replaced as eligible employees will begin to retire.  Just under 60,000 of these positions belonged to senior engineers and senior staff members, so PH will need to either promote some engineers and staff (not counting the 14,222 and 12,243 respectively eligible to retire) or embark on a massive hiring spree!  Only two managerial positions will need to be filled in the coming months so this can be seen as some relief for the PH executives.  That being said, the other managers do not seem to be that far behind.  The department managers table below shows that almost all current managers began their positions between the late 1980s and early 1990s.  So if two are currently eligible for retirement, more could be eligible in the next few years.

![Department Managers](https://github.com/MaxV6ft4/Pewlett_Hackard_Analysis/blob/main/Dept_Manager.png)

![Department Managers 2](https://github.com/MaxV6ft4/Pewlett_Hackard_Analysis/blob/main/Dept_Manager2.png)


- Only 1,549 employees are eligible to participate in the mentorship program.  These employees represent less than 1% of the PH workforce, an incredibly small number to act as mentors to just over 90,000 potential new employees.  PH should consider widening their mentorship eligibility requirements to cover multiple birth years instead of only 1965.  Below I have included a table of the number of current employees per department.  The production and development departments by far have the most employees so PH might also want to narrow its focus to these two departments when it comes to mentoring the bulk of new employees.


![Current employees at PH by department](https://github.com/MaxV6ft4/Pewlett_Hackard_Analysis/blob/main/Current_Emp_Count.png)

