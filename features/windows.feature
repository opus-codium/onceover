@windows
Feature: Run onceover test against windows roles
  Onceover should be able to test roles that are designed to run on Windows,
  regardless of the operatin system on which the tests are being run

  Background:
    Given onceover executable

  Scenario: Compiling a windows role with groups that is valid should compile
    Given control repo "windows"
    When I run onceover command "run spec" with class "role::groups"
    Then I should not see any errors
  
  Scenario: Compiling a windows role with users that is valid should compile
    Given control repo "windows"
    When I run onceover command "run spec" with class "role::users"
    Then I should not see any errors
  