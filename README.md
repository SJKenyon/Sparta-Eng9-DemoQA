# UI Testing using Ruby for the Demo QA website

This is a test automation framework built to test the user interface of the Demo QA e-commerce website: http://store.demoqa.com/

## How to run the program
1. Clone this repository to your machine by downloading the zip file.
2. Extract the contents of the zip file.
3. Open the Terminal.
4. Run the command ``bundle`` to ensure all the gems are installed correctly.
5. From the Sparta-Eng9-DemoQA directory, run the command ``cucumber`` in the console.
  - For the tests to run you will need to create your own ".env" file in the root of the project. You will need to add your own variables which are DEMOQA_EMAIL=[your email] and DEMOQA_PASSWORD=[your password]. These will come from making an account of the demoqa website from your computer. For any help using dotenv files, use this [documentation](https://github.com/bkeepers/dotenv).

6. To run unit tests on the generator library, navigate to the features/lib/generator directory and run the command ``rspec``.

## Original Test Plan

### Scope of the Project

We are going to cover over twenty user journeys: we have broken down each into its constituent use cases within the feature files.

### Assumptions

We assume that the Demo QA website is not going to be subject to changes: this will enable our test framework to remain valid for the duration of the project.

### Schedules

Sprint 1: Monday 18th June to 10h30 on Wednesday 21st June
During this sprint we will define the use cases, prioritise them, and articulate them in the Gherkin syntax in various feature files. We will build our automated test framework for those use cases with the highest priority rating (8).

Sprint 2: Thursday 21st June to 10h30 on Tuesday 26th June.
During Sprint 2 we will focus on building the parts of the framework relevant to the use cases rated lower in priority.


### Roles and Responsibilities

Team members: Sophie Kenyon and Evie Skinner

Test Lead / Scrum Master / Product Owner: Richard Gurney
Acting Test Lead in Richard's absence: Kieran Cornwall

The responsibilities will be shared evenly between the two team members, with one taking over responsibility for the project when the other is obliged to attend an interview or similar commitment. In Sprint 1 Evie will build the parts of the framework that will test the Product use cases, and Sophie will build those that will test the Login and Register use cases. In Sprint 2, Evie will take on the


### Deliverables

- Draw out the use cases
- Make the scrum board
- Update the Trello board
- Prioritise user journeys
- Write the test plan
- Test as much of the Demo QA site as possible in one week.


### Environment

We are using Git for version control; Cucumber to run the tests (with Gherkin syntax to write the use cases); with Selenium WebDriver and Capybara as automation tools. In addition, Trello will be used to manage the progress of the project.

### Defect Management

Defects will be reported to the Test Lead Rich Gurney, by showing him in person or via his regular reviews of the team's pull requests on GitHub.

### Exit Criteria

We will stop testing either when we have tested all of the use cases, or when we deem a sufficient proportion of the use cases to have been covered within the time frame.


## Trials and Tribulations
As can be seen from the Test Plan, we set out with a very wide scope for this project. Due to our over-estimation of what we expected to build, and to several unforseen blockers, the team unfortunately failed to deliver what was agreed by the end of Sprint 1. On Thursday 21st June the team had a grooming session with the Product Owner Rich Gurney and the stand-in Test Lead Kieran Cornwall, in order to learn from mistakes made and redefine the scope. We categorised and re-prioritised the user journeys based on conversations with the Product Owner as to which functions of the site were of the highest importance: namely the ability of a first time user to view products and then buy them. Following this, Sprint 1 rolled over to the evening of Friday 22nd June, and Sprint 2 took place from then until the morning of Tuesday 26th June.

## Story Points Covered in Sprint 1
From Thursday, the team's responsibilities changed: Evie built tests relating to the checkout functions and Sophie built tests checking the user's ability to view and add products to their basket.

- As a first time user, I should be able to put a product in my basket (13)
- As a first time user, I should be able to purchase an item from the store (13)
- As a first time user, I should be able to view all products (8)
- As a first time user, I shoule be able to view items by category (3)

## Story Points Covered in Sprint 2
A great deal of progress was made in Sprint 2, since we committed ourselves to our work with renewed vigour over the weekend. In this Sprint, both team members addressed the next highest-priority user journeys, which they defined as those pertaining to logging in and registering.

- As a first time user, I should be able to remove items from my basket (8)
- As a first time user, I should be able to view the sub total of my items (8)
- As a first time user, I should be able to click home and be redirected to the homepage (5)
- As a member, I should be able to log in (5)
- As a member, I should be able to log out (5)
- As a first time user, I should be able to register (5)


## OOP Approach
Using Ruby objects, classes, superclasses and methods, we ensured a Page Object Model was implemented from the start. This enabled both team members to easily add more tests as they went, by re-using previously defined objects and methods. One object can reference a hundred tests! Therefore, we were able to save the Product Owner precious time and money on his way to deploying the software.

## Tools and Technologies
This project was a thorough exercise in Behaviour Driven Development. Writing the framework in Ruby, we used Selenium WebDriver to simulate the process of the user's journeys in the Chrome browser and the Capybara framework to simplify it. In addition, we used Cucumber as our test runner and we wrote use cases in the Gherkin syntax to facilitate easy comprehension in a multi-disciplinary team. We have tried to make our framework accessible to future testers wishing to add more tests, and to business-minded people wishing to get an overview of the use cases covered.

Furthermore, we used a library of methods, which we have been building gradually over the past few weeks, to generate random information from the Faker library. This ensures that a diverse amount of inputs are being fed into the relevant tests, helping us to avoid the Pesticide Paradox. We also ran unit tests on this generator library using RSpec.
