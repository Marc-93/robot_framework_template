# Test framework documentation

## Test architecture

The framework is designed using POM (Page Object Model) as a pattern structure.

The test language is Gherkin due is designed to facilitate the understanding of test scenarios between all team members.

**Technical details:**

* Setup: files needed to complete the project setup
    * Requirements
* src
  * data: files related to specific test information to be re-used.
  * environment: files to specify the information between different servers.
  * output: folder to storage the test reports (robot and allure).
  * utilities: Specific actions that are independent of steps.
  * steps: location of keywords grouped following POM.
  * features: groups of keywords managed to create tests for different features.

## Framework setup

**Pre-requisites:**
1. Install [homebrew](https://brew.sh/).
2. Install [python](https://www.python.org/downloads/).
3. Install your favourite IDE (pycharm, VS code).
4. Install the following libraries by command line:
   * robotframework: `$ pip install robotframework`
   * allure-robotframework: `$ pip install allure-robotframework`
   * requests: `$ pip install requests`

**Setup**

1. Clone the code from github.
2. Checkout to `master` branch.

**Test execution**
1. From your terminal, go to your repository path using `$ cd`.
2. Run the following command to execute the tests:
   * `$ robot --variable HOST:<url> --variablefile <filepath>.yaml --outputdir src/output/robot --listener allure_robotframework:./src/output/allure ./<robot_path>`
3. Run the following command to display the test result:
   * `$ allure serve src/output/allure`