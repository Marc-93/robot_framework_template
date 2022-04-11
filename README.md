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
3. Install allure reporter with terminal: `$ brew install allure`
4. Install your favourite IDE (pycharm, VS code).
5. Install the requirements file: 
   * Open terminal and go to setup location: `$ cd setup`
   * Install the project requirements: `$ pip3 install -r requirements.txt`

**Setup**

1. Clone the code from github.
2. Checkout to `main` branch.

**Test execution**
1. From your terminal, go to your repository path using `$ cd`.
2. Run the following command to execute the tests:
   * `$ robot --variable HOST:<url> --variablefile <filepath>.yaml --outputdir src/output/robot --listener allure_robotframework:./src/output/allure ./<robot_path>`
3. Run the following command to display the test result:
   * `$ allure serve src/output/allure`

**Run example:**

`$ robot --variable HOST:https://dev.sherwood.cash --variablefile src/environment/dev.yaml --outputdir src/output/robot --listener allure_robotframework:./src/output/allure ./src/features`

## Test results

**Console:**

<img width="1783" alt="image" src="https://user-images.githubusercontent.com/39099834/162784107-072b1d7d-f097-4611-a533-a665d5eb042e.png">

**Allure report:**

<img width="1913" alt="image" src="https://user-images.githubusercontent.com/39099834/162784321-05abe421-c5d6-403c-946b-9403e0068787.png">

**Robot framework report:**

<img width="852" alt="image" src="https://user-images.githubusercontent.com/39099834/162784519-6ff31eb5-6b9f-44b9-ae14-0c17d0294c48.png">
