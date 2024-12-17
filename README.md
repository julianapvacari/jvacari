# Juliana Pereira Vacari

Support Engineer / QA Engineer 

---

# This repo there’s a few exercises, informations, projects and how to install all the technologies used.

---

## Technologies Used
This repository is built using:

- **Ruby**: For scripting and backend operations.
- **Cypress**: End-to-end testing framework.
- **JMeter**: Performance and load testing.
- **JavaScript**: For frontend or scripting.
- **Python**: For scripting and automation.

---

## Setup and Installation

Follow the steps below to set up and install the project dependencies.

### Prerequisites
Make sure you have the following tools installed:
1. **Node.js** (for JavaScript and Cypress): [Download Node.js](https://nodejs.org/)
2. **Ruby**: [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/)
3. **JMeter**: [Download Apache JMeter](https://jmeter.apache.org/download_jmeter.cgi)
4. **Python**: [Install Python](https://www.python.org/downloads/)
5. **Git**: [Install Git](https://git-scm.com/)

Verify installations:
```bash
node -v          # Check Node.js version
npm -v           # Check npm version
ruby -v          # Check Ruby version
python --version # Check Python version
java -version    # Ensure Java is installed for JMeter
```

---

## Ruby Setup

Ruby is used for backend scripting. Follow these steps to set it up:

1. **Install Ruby**:
   - Follow the installation guide for your operating system from the [Ruby official documentation](https://www.ruby-lang.org/en/documentation/installation/).
   - Ensure `gem` (Ruby package manager) is installed.

2. **Verify Installation**:
   ```bash
   ruby -v     # Check Ruby version
   gem -v      # Check gem version
   ```

3. **Install Dependencies**:
   Use Bundler to install required Ruby gems:
   ```bash
   gem install bundler            # Install Bundler if not already installed
   bundle install                 # Install dependencies from Gemfile
   ```

---

## Cypress Setup

Cypress is used for automated end-to-end testing. Follow these steps:

1. **Install Cypress**:
   ```bash
   npm install cypress --save-dev
   ```
2. **Run Cypress**:
   ```bash
   npx cypress open
   ```
   This will open the Cypress Test Runner for you to configure and run tests.

For more details, refer to the [Cypress Documentation](https://docs.cypress.io/).

---

## JMeter Setup

Apache JMeter is used for performance testing.

1. **Install JMeter**:
   - Download the `.zip` or `.tgz` file from the [JMeter official page](https://jmeter.apache.org/download_jmeter.cgi).
   - Extract the downloaded file.
2. **Run JMeter**:
   - Open the `bin` folder and execute:
     ```bash
     ./jmeter.sh      # For Linux/Mac
     jmeter.bat       # For Windows
     ```
3. **Load Testing**:
   - Configure your `.jmx` test plan in JMeter and run tests as needed.

---

## Python Setup

Python is used for scripting and automation in this project. Follow these steps to set it up:

1. **Install Python**:
   - Download the latest version from the [Python official page](https://www.python.org/downloads/).
   - Ensure `pip` (Python package manager) is installed.
2. **Verify Installation**:
   ```bash
   python --version   # Check Python version
   pip --version      # Verify pip installation
   ```
3. **Install Required Packages**:
   Create a virtual environment and install the required dependencies:
   ```bash
   python -m venv venv          # Create a virtual environment
   source venv/bin/activate     # Activate the virtual environment (Linux/Mac)
   venv\Scripts\activate        # Activate the virtual environment (Windows)
   pip install -r requirements.txt  # Install project dependencies
   ```

---
---
---


## How to Run the Projects

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/your-repository.git
   cd your-repository
   ```
2. Install project dependencies:
   ```bash
   npm install
   bundle install   # If you are using Ruby gems
   pip install -r requirements.txt  # For Python dependencies
   ```
3. Run Cypress tests:
   ```bash
   npx cypress run
   ```
4. Execute JMeter tests:
   - Open JMeter and load the test plan file (`.jmx`).
   - Run the test plan manually.
  
5. Run Python scripts:
   ```bash
   python your_script.py
   ```
6. Run Ruby scripts:
   ```bash
   ruby your_script.rb
