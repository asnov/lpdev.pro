# Created by alexnew at 01/12/2025
Feature: Splash & loading screen
  # Enter feature description here

  Scenario: Opening application
    When User opens app
    Then screen should switch to lanscape mode
    And They should see logo, app name & progress indicator

  Scenario: Loading data from the database
    Given User opened app
    When all data updated from the database
    Then progress indicator should reach 100%
    And app should show the fretboard

