# Created by alexnew at 01/12/2025
Feature: Scroll
  # Enter feature description here

  Scenario: Scroll the fretboard to the right
    Given user in on the main screen with fretboard
    And there are 5 frets at the screen
    And the first visible fret is number 1
    When They scroll right
    Then the first visible frets should increase by 1 to 15
    # repeat scroll with 5-12 visible frets

  Scenario: Scroll the fretboard to the left
    Given user in on the main screen with fretboard
    And there are 5 frets at the screen
    And the first visible fret is number 15
    When They scroll left
    Then the first visible frets should decrease by 1 to 1
    # repeat scroll with 5-12 visible frets
