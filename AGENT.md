# Agent Context for Energy Analyzer

## Project Overview

This project, "energy-analyzer," is a simple command-line tool to fetch energy production data from the Solarman PV monitoring platform. It is written in the [Roc programming language](https://www.roc-lang.org/). Its purpose is to authenticate with the Solarman API and retrieve raw daily statistics.

## Technology Stack

-   **Programming Language:** Roc
-   **Platform:** Roc's `basic-cli` for HTTP requests and file system access.

## File Structure

-   `main.roc`: The single entry point for the application. It reads an authentication token, makes an HTTP request to the Solarman API, and prints the raw JSON response to standard output.
-   `auth_token`: A plain text file containing the `Bearer` token required for API authentication.
-   `get.sh`: A helper script that demonstrates an alternative way to fetch data using `curl`.
-   `.gitignore`: Standard git ignore file.
-   `AGENT.md`: This file.

## Workflow

1.  **Authentication:** Before running the application, you must place a valid bearer token (including the "Bearer " prefix) in the `auth_token` file.

2.  **Execution:** The project can be run using the Roc CLI. The command will execute the `main.roc` script.
    ```sh
    roc run main.roc
    ```
3.  **Output:** The application will print the full, raw JSON response from the API to the console. The URL, including the date and system ID, is currently hardcoded in `main.roc`.
