# Created by alexnew at 01/12/2025
Feature: Alternative Chords
  # Enter feature description here

  Scenario Outline: Choosing alternative chord
    Given User in on the main screen with fretboard
    When User tap and hold in the <chord> chord button
    Then chord alternatives popup should appear with <alternatives> chords

    Examples:
      | chord | alternatives                         |
      | I-G   | G Gsus2 Gsus4 G6 Gmaj7 Gmaj9 Gadd9   |
      | ii-Am | Am Asus2 Asus4 Am6 Am7 A7sus2 A7sus4 |

  Scenario Outline: Highlighting alternative chord
    Given User in on the main screen with fretboard
    When User selects <chord> chord using popup and select button
    Then The chord name should be changed in the subtitle line
    And The note <root> should be highlited as root note
    And The notes <notes> should be highlighted at the fretboard before and after the nut
    And other notes should be faded back

    Examples:
      | chord  | root | notes |
      | G      | G    | BD    |
      | Gsus2  | G    | BD ?  |
      | Gsus4  | G    | BD ?  |
      | G6     | G    | BD ?  |
      | Gmaj7  | G    | BDF#  |
      | Gmaj9  | G    | BD ?  |
      | Gadd9  | G    | BD ?  |
      | Am     | A    | CE    |
      | Asus2  | A    | CE ?  |
      | Asus4  | A    | CE ?  |
      | Am6    | A    | CE ?  |
      | Am7    | A    | CEG   |
      | A7sus2 | A    | CE ?  |
      | A7sus4 | A    | CE ?  |
