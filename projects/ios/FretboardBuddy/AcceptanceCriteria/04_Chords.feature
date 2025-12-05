# Created by alexnew at 01/12/2025
Feature: Chords
  # Enter feature description here

  Scenario Outline: Highlight the notes of specific chord within the scale
    Given user in on the main screen with fretboard
    And <scale> scale is chosen in the title line
    When User taps <chord> chord in the subtitle line
    Then The note <root> should be highlited as root note
    And The notes <notes> should be highlighted at the fretboard before and after the nut
    And other notes should be faded back

    Examples:
      | scale   | chord   | root | notes |
      | G Major | I-G     | G    | BD    |
      | G Major | ii-Am   | A    | CE    |
      | G Major | iii-Bm  | B    | DF#   |
      | G Major | IV-C    | C    | GE    |
      | G Major | V-D     | D    | AF#   |
      | G Major | vi-Em   | E    | BG    |
      | G Major | vii-F#° | F#   | AC    |

  Scenario Outline: Circle chords by tapping the fretboard
    Given user in on the main screen with fretboard
    And <scale> scale is chosen in the title line
    And <chord> chord is chosen in the subtitle line
    When User taps fretboard
    Then The next chord <next_chord> should be chosen in the subtitle line

    Examples:
      | scale   | chord   | next_chord |
      | G Major | I-G     | ii-Am      |
      | G Major | ii-Am   | iii-Bm     |
      | G Major | iii-Bm  | IV-C       |
      | G Major | IV-C    | V-D        |
      | G Major | V-D     | vi-Em      |
      | G Major | vi-Em   | vii-F#°    |
      | G Major | vii-F#° | I-G        |
