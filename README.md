# QA Day 2022 Tips Session 2

##Tool stack
* **Ruby** - Development language
* **RubyMine IDE** - Development IDE
* **Allure** Multi-language test report tool
* **Cucumber** - Gherkin Syntax Framework
* **RSpec** - Assertion & Validation Framework

##Installation

* Ruby must be installed. <a href="https://www.ruby-lang.org/en/downloads/">Link to install</a>


* The following commands are run in the project directory to install the necessary libraries.
  ```
  gem install bundler
  bundle install
  ```


##Tips 1
Updating dynamic cucumber steps with sh file.

We can update the steps using the replace.sh file with the following command. 
```
bash replace.sh
```
##Tips 2
Listening to network traffic with selenium devtools

##Tips 3
Running test cases with cucumber.yml file
You can run scenarios using the default profile with the following command.

```
bundle exec cucumber
```

##Reporting
* Allure report is used as a reporting tool.

* Allure must be installed on your PC to create an Allure report..

    * Mac install

      `brew install allure`

    * Windows install

        * Powershell opens. The following command is run. Scoop install is done.

          `iwr -useb get.scoop.sh | iex`

        * After the successful installation of Scoop, the command line opens. The following command is run. Allure is installed.

          `scoop install allure`

* To generate an Allure report, the following command is run by giving the path to the allure-results folder in the project directory.

  `allure serve output/allure-results `





