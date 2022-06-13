# Final Project for ITF Manual Testing Course

The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice, using a live application.\
Application under test: https://opensource-demo.orangehrmlive.com \
API Documentation: https://orangehrm.github.io/orangehrm-api-doc  \
The final project will be split into 2 sections: Testing section and SQL section.

Tools used: JIRA, Zephyr Squad, Postman, MySQL Workbench.

# Functional Specifications

The below Story was created in JIRA and describes the functional specifications of the PIM module-Add Employee Section, for which the final project is performed.
https://github.com/AncaCiurdas/Manual_Testing/blob/main/Manual%20Testing_final_project/PIM_module_AddEmployee_section.txt

# 1.	Testing Section

# 1.1	Test Planning

The Test Plan is designed to describe all details of testing for the PIM module-Add Employee section from the OrangeHRM application.\
The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan.

1.1.1	Roles assigned to the project and persons allocated\
•	Project manager – Florin Medan\
•	Product owner – Maria Sorescu\
•	Software developer – Iulia Marinescu\
•	QA Engineer – Anca Ciurdas

1.1.2	Entry criteria defined\
•	functional specifications are defined\
•	roles needed for the project are allocated\
•	testware are available\
•	the resources are available\
•	initial project risks were detected and mitigated

1.1.3	Exit criteria defined\
•	number of unresolved bugs is insignificant or they have low priority\
•	all tests have been executed\
•	all resolved bugs have been re-tested and approved by the QA team\
•	deadline was reached\
•	no detected major risk remained un-mitigated\
•	exploratory regression testing must be performed on the PIM module, which includes the Add Emploee section;

1.1.4	Test scope
Tests in scope: All the features of Add Employee which were defined in software requirement specs need to be tested: functional testing, GUI testing and API testing\
Tests not in scope: White-Box testing, performance testing, integrations of the PIM module - Add Employee Section with other modules, compatibility testing with multiple browsers

1.1.5	Risks detected

•	Project risks:
- Lack of experience of the QA team
- 	Short deadline of Zephyr Squad trial
- 	Unavailability of test environment
- 	Requirements may not be defined well enough

•	Product risks:
-	Validation constraints on the fields might be too restrictive to the end user

1.1.6	Evaluating entry criteria
The entry criterias defined in the Test Planning phase have been achieved and the test process can continue.

# 1.2	Test Monitoring and Control

Various periodic reports were generated to reflect the current status of the testing process, in case of major problems control measures could be taken. The following Daily Test Execution Progress was generated on May 15, 2022.
According to the schedule on May 15, 2022 we have a number of 14 tests performed, of which 10 tests were passed and 4 tests failed.

 ![Daily_Test _Execuiton_Progress05-15 05 22](https://user-images.githubusercontent.com/104024181/170883049-37a6190d-92bf-4466-894e-60ba837ed623.png)

# 1.3	Test Analysis

The testing process will be executed based on the above requirements for the PIM module-Add Employee Section.
Below you can find a subset of the test conditions that were defined:

-	Enter data for all available fields and check that the employee is added;
-	Enter data only for mandatory fields and check that the emploiyee is added;
-	Leave all fields empty and click “Save” and check that employee cannot be added;
-	Check all validation constraints for the fields;
-	View all employees in a list;
-	View employee details and check they are correct;
-	Enter data for all available fields in Personal Details section and click “Save”, see if the informations are saved

# 1.4	Test Design

Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases are boundary value analysis, equivalence partitioning and use case testing. Following test cases were defined:
 ![Screenshot 2022-05-29 201556](https://user-images.githubusercontent.com/104024181/170883032-1d4bed44-b212-4f93-a763-c4d85f785293.png)

The test cases with steps can be viewed here: https://github.com/AncaCiurdas/Manual_Testing/blob/main/Manual%20Testing_final_project/Test%20Cases_export.xlsx 

# 1.5	Test Implementation

The following elements are needed to be ready before the test execution phase begins:\
Testing environment is up and running: https://opensource-demo.orangehrmlive.com/ \
Access to the testing environment is given: Username : Admin | Password : admin123\
Cycle summary- Add Employee was created\
Test cases were added to the cycle summary\
Postman collection with the Add Employee API methods was created\
Authorization token was created for accessing the API

# 1.6	Test Execution

Test cases are executed on the created test Cycle summary:\
https://github.com/AncaCiurdas/Manual_Testing/blob/6b5e40eb3361478271d26a875a04bbc3bc363642/Manual%20Testing_final_project/Cycle_Summar_AddEmployee.ods \
Bugs have been created based on the failed tests. The complete bug report can be found here:
https://github.com/AncaCiurdas/Manual_Testing/blob/02533c83fc9ad8ae192d531fb7abec16a4e8173e/Manual%20Testing_final_project/Jira_Export-Bug_Report.xlsx

API tests are executed based on the checklist. https://github.com/AncaCiurdas/Manual_Testing/blob/main/Manual%20Testing_final_project/api_tests_checklist.txt \
The collection used can be found here:
https://github.com/AncaCiurdas/Manual_Testing/blob/79c6e237a669119ba3cb92640a6dccb27e51e555/Manual%20Testing_final_project/Add%20Employee.postman_collection.json

Full regression testing is needed after the bugs are fixed!

# 1.7	Test Completion

As the Exit criteria were met and satisfied as mentioned in the appropriate section, this feature is suggested to ‘Go Live’ by the Testing team.\
The traceability matrix was generated and can be found here: Manual Testing_final_project/TraceabilityMatrix_AddEmployee.xlsx \
Test execution chart was generated, the final report shows that a number 7 tests have failed of a total of 26 tests\
A number of 26 test cases were planned for execution and all of them were executed.\
A number of 8 total bugs were found, from which the priority is: 1 is low, 2 are medium and 5 are hight
![Screenshot 2022-05-18 142809](https://user-images.githubusercontent.com/104024181/170882843-2c88c7d5-a26f-42df-8bca-d7c10c85eb67.png)

 # 2.	SQL section

Created a database named 'orangehrm' and a table named 'employee' with all the columns needed to save data per specifications. Performed different queries inside the sql file:\
https://github.com/AncaCiurdas/Manual_Testing/blob/8a4aaa604273e316455fefc8ea8f4f08add49ab0/Manual%20Testing_final_project/orangeHRM_employees.sql.sql



