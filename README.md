# Pewlett-Hackard-Analysis

Overview:
    Now that Bobby has proven his SQL chops, his manager has given both of you two more assignments: determine the number of retiring employees per title, and identify       employees who are eligible to participate in a mentorship program. Then, you’ll write a report that summarizes your analysis and helps prepare Bobby’s manager for       the “silver tsunami” as many current employees reach retirement age.
    So we are going to use the ERD we created as a reference and our knowledge of SQL queries, create a Retirement Titles table, most recent titles for the current           employees who were born between January 1, 1952 and December 31, 1955. 
 
Results:
    So after we create a Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955. We found some           employees may have multiple titles in the database, we are going to use the following screenshots for more details.  
    ![](https://github.com/sedigh-etoumi/Pewlett-Hackard-Analysis/blob/main/Data/retirement_titles.png)
    To figure that we need to use the DISTINCT ON statement to create a table that contains the most recent title of each employee.  
    ![](https://github.com/sedigh-etoumi/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.png)
    Then, we are going to use the COUNT() function to create a table that has the number of retirement-age employees by most recent job title. Finally, because we want       to include only current employees in our analysis, be sure to exclude those employees who have already left the company, in the following screenshots:
    ![]()
    
