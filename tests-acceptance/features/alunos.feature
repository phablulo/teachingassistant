Feature: As a professor
         I want to register students
         So that I can manage their learning goals

Scenario: Registering student with non registered CPF
Given I am at the students page
Given I cannot see a student with CPF "683" in the students list
When I try to register the student "Paulo" with CPF "683"
Then I can see "Paulo" with CPF "683" in the students list

Scenario: Removing student
  Given I am at the students page
  Given I can see a student with CPF "123" in students list
  When I try to remove the student with CPF "123"
  Then I can no longer see a student with CPF "123" in students list
