# 🌤️ Weather API Test Automation Suite (Postman + Newman)

[![Postman API Tests Execution](https://github.com/<YOUR_GITHUB_USERNAME>/weather-api-tests-java/actions/workflows/postman-tests.yml/badge.svg)](https://github.com/thahir747>/OpenWeather-Postman/actions/workflows/postman-tests.yml)
![Postman](https://img.shields.io/badge/Postman-FF6C37?style=flat&logo=postman&logoColor=white)
![NodeJS](https://img.shields.io/badge/Node.js-20.x-green?style=flat&logo=node.js)
![Newman](https://img.shields.io/badge/CLI-Newman-orange?style=flat)

An enterprise-grade, automated REST API testing suite for the **OpenWeatherMap REST API**, implemented using **Postman** and **Newman CLI**. 

The suite contains **12 comprehensive test assertions** distributed across 4 core HTTP requests, covering happy paths, 5-day forecast structures, data validation, performance SLAs, and negative error-handling scenarios. Integrated with **GitHub Actions** for continuous integration and automated HTML reporting via `htmlextra`.

---

## 🚀 Key Features

* **Complete API Coverage:** Validates current weather data, 5-day / 3-hour forecast feeds, invalid inputs, and authentication failures.
* **Environment Isolation:** Clean separation between collection logic and configuration variables (`base_url`, `apiKey`).
* **CI/CD Pipeline Integration:** Automatically runs on every push or pull request using **Newman CLI** inside **GitHub Actions**.
* **Rich Visual Reporting:** Generates interactive HTML test reports uploaded automatically as pipeline build artifacts.
* **Security First:** Secret API keys are dynamically injected from GitHub Repository Secrets during runtime—never hardcoded or exposed in source control.

---

## 📊 Test Suite Architecture (12 Test Assertions)

The project organizes **12 distinct test assertions** across 4 primary HTTP request endpoints to maximize execution speed and eliminate redundant network calls:

| Request Name | Endpoint / Params | Assertions Covered | Count |
| :--- | :--- | :--- | :---: |
| **01 - Get Current Weather for Kochi** | `GET /weather?q=Kochi` | <ul><li>`Status code is 200`</li><li>`Check city is Kochi & Country is India`</li><li>`check respponse time` (< 1000ms)</li></ul> | 3 |
| **02 - Get 5-Day Forecast for Kochi** | `GET /forecast?q=Kochi` | <ul><li>`Status code is 200`</li><li>`Checking 40 data points`</li><li>`Verify forecast items contain valid weather arrays`</li></ul> | 3 |
| **03 - Invalid City Name Handling** | `GET /weather?q=InvalidCityName...` | <ul><li>`Status code is 200` *(Note: Intentionally written in Postman)*</li><li>`Status code is 404`</li><li>`Checking city` (`city not found`)</li></ul> | 3 |
| **04 - Invalid API Key Handling** | `GET /weather?appid=INVALID_KEY...` | <ul><li>`Status code is 200` *(Note: Intentionally written in Postman)*</li><li>`Check for Error message` (`Invalid API key`)</li><li>`Check for Error message` (`cod` equals 401)</li></ul> | 3 |
| **Total Test Count** | | | **12** |

---
