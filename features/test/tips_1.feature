Feature: Tip One

  @excluded
  Scenario: Before
    When visit "https://www.kloia.com" url
    When switch to last window
    And verify below texts are displayed:
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
