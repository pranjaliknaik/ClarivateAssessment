# Automated Web Testing with Robot Framework and Selenium

## Table of Contents
1. [Introduction](#introduction)
2. [TechStack Used](#techstack-used)
3. [Prerequisites](#prerequisites)
4. [Installation Instructions](#installation-instructions)
5. [Test Execution Instructions](#test-execution-instructions)
6. [Results](#results)

---

## Introduction
This repository contains automated tests built using **Robot Framework** and **SeleniumLibrary** to automate web navigation and interaction with Google and ProQuest websites.

### Task Overview:
- **Task 1**: Navigate to Google, search for "ProQuest," and write the titles of all results on the first page to a text file.
- **Task 2**: Open the ProQuest website from the search results, search for "QA" in the top navigation bar, and take a screenshot of the page.

---
## TechStack Used

![Robot Framework](https://img.shields.io/badge/robot%20framework-000000?style=for-the-badge&logo=robot-framework&logoColor=white) ![Selenium](https://img.shields.io/badge/-selenium-%43B02A?style=for-the-badge&logo=selenium&logoColor=white) ![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54) ![PyCharm](https://img.shields.io/badge/pycharm-143?style=for-the-badge&logo=pycharm&logoColor=black&color=black&labelColor=green) ![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white) ![Google Chrome](https://img.shields.io/badge/Google%20Chrome-4285F4?style=for-the-badge&logo=GoogleChrome&logoColor=white) ![Firefox](https://img.shields.io/badge/Firefox-FF7139?style=for-the-badge&logo=Firefox-Browser&logoColor=white) ![Windows 11](https://img.shields.io/badge/Windows%2011-%230079d5.svg?style=for-the-badge&logo=Windows%2011&logoColor=white)


## Prerequisites
To run this automation project, the following components are required:
1. **Python**: Version 3.8 or higher.
2. **Robot Framework**: Version 4.0 or higher.
3. **SeleniumLibrary**: A Robot Framework library for web testing.
4. **Webdriver**: A browser-specific WebDriver (ChromeDriver, GeckoDriver, etc.) for browser automation.

### Supported Browsers:
- **Google Chrome** (Tested with Chrome version 128+)
- **Mozilla Firefox** (Optional, depending on your test setup)

---

## Installation Instructions

### 1. Install Python
Ensure Python 3.8 or above is installed. You can download it from [python.org](https://www.python.org/downloads/).

Verify the installation:
```bash
python --version
```

### 2. Install Robot Framework and Selenium
Once Python is installed, install Robot Framework and SeleniumLibrary using pip.
```bash
pip install robotframework
pip install robotframework-seleniumlibrary
```

### 3. Install Browser Driver

- **For Chrome**: Download ChromeDriver that matches your Chrome version and place it in a folder included in your system's PATH.
- **For Firefox**: Download GeckoDriver if you are using Firefox, and ensure it's in your PATH.

You can verify if the driver is set up correctly:
```bash
chromedriver --version  # or geckodriver --version
```

### 4. Install PyCharm

PyCharm is the IDE used to execute the project. You can download PyCharm from [PyCharm Download](https://www.jetbrains.com/pycharm/download/)

Please remember to download the Community version as it is free to use.

### 5. Clone the Repository
Clone the repository into your PyCharm using the following command. Paste it in the terminal of your project. 

```bash
git clone https://github.com/pranjaliknaik/ClarivateAssessment.git
```

### 6. Configure PyCharm 
After downloading this tool you need to install some packages to ensure the smooth running of your project.

Follow the below steps to successfully install required packages:

1. Click on File -> Settings -> Project:<YourProjectName> -> Python Interpreter.
2. Click on the plus (+) icon displayed on the screen. A new dialog box will open.
3. Enter 'Selenium' in the search bar, select 'selenium' from the list and click on the 'Install Package' button.
4. Repeat the same for 'RobotFramework' and 'RobotFramework-SeleniumLibrary' 
5. Click on OK button

It may prompt you to restart PyCharm, please restart it.


---

## Test Execution Instructions

### 1. Running the Tests

To execute the tests, navigate to the root directory of the project in the terminal and run:

```bash
robot -d Results TestCases/
```

This command:
- Executes all .robot files in the TestCases/ directory.
- Stores the results, logs, and screenshots in the Results/ directory.

### 2. Test Output
After the tests have completed, you can find the following files in the Results/ directory:

- output.xml: A detailed test execution log.
- report.html: A high-level report of the test results.
- log.html: Detailed logs with step-by-step information and screenshots.

---

## Results
After executing the tests, the Results/ folder will contain the following important files:

- **log.html**: Detailed log of test execution.
- **report.html**: A summary report showing the success/failure of tests.

You can open these HTML files in any browser to view the test details.

- Screenshots captured during the test are stored in the Screenshots/ folders
- These screenshots are automatically included in log.html and report.html

The Text file that contains the list of titles of all results on the first page will be stored 
on the Desktop. 

For eg: **C:/Users/YourUser/Desktop**

