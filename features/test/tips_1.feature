Feature: Tip One

  @excluded
  Scenario: Before
    When navigate browser to "https://www.kloia.com" url
    When switch window to last opened
    And page should contain the following contents:
      | kloia       |
      | Get Started |

  @excluded
  Scenario: After
    When visit "https://www.amazon.com" url
    When switch to last window
    When verify below texts are displayed:
      | Cart         |
      | Your Account |
      | Help         |
