# Created by alexnew at 01/12/2025
Feature: Zoom
  # Enter feature description here

  Scenario: Zoom in
    Given user in on the main screen with fretboard
    And there are 5 frets at the screen
    And the first visible fret is number 1
    When They pinch in
    Then the number of visible frets should increase by 1 to 12
    And the first visible fret is number 1
    # repeat zoom in with other first visible frets

  Scenario: Zoom out
    Given user in on the main screen with fretboard
    And there are 12 frets at the screen
    And the first visible fret is number 1
    When They pinch out
    Then the number of visible frets should decrease by 1 to 5
    And the first visible fret is number 1
    # repeat zoom in with other first visible frets
