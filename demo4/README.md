# Demo 4 - API and JIRA integration

## Introduction to GHAS and APIs

### GHAS Overview
- Covering Code Scanning, Secret Scanning, and Dependabot Alerts.
- Importance of integrating security into the development workflow.

## GitHub API Basics

### Authentication Methods
- Use Personal Access Tokens (PATs) and OAuth tokens.
- Navigating API documentation.
- Rate limits and best practices.

## Setting Up for API Integration

### Prerequisites Check
1. Ensure everyone has a GitHub account with a repository enabled for GHAS.
2. Confirm that participants have a PAT with appropriate permissions.

### Securing Access Tokens
- Best practices for storing and handling tokens.

## Live Demo: Making Your First API Request

Step-by-Step Walkthrough:
- Fetch data from the `/code-scanning/alerts` endpoint.

Interpreting the Response:
- Understanding JSON output.
- Key fields: alert states, severity, rule details.

## Automating Security Tasks

### Use Case 1 - Code Scanning Automation
- Scheduling scans.
- Retrieving and filtering alerts.

### Use Case 2 - Managing Dependabot Alerts
- Accessing dependency vulnerabilities.
- Prioritizing and assigning alerts.

## Interactive Exercise

### Objective
- Create an API request to retrieve code scanning alerts filtered by severity.

### Guided Activity
- Participants follow along using provided scripts (`CodeAlerts.sh`, `HighSeverity.sh`, and `Dependabot_alerts.sh`).

## Demo Scripts

### 1. Fetch Code Scanning Alerts (`CodeAlerts.sh`)
This script fetches all code scanning alerts for the repository.

**Command**:
```bash
sh ./CodeAlerts.sh
```

**Functionality**:
- Retrieves all code scanning alerts from the repository.

### 2. Fetch Dependabot Alerts (`Dependabot_alerts.sh`)
This script retrieves the latest Dependabot alerts for the repository.

**Command**:
```bash
sh ./Dependabot_alerts.sh
```

**Functionality**:
- Fetches all Dependabot alerts regarding dependency vulnerabilities in the repository.

### 3. Fetch High Severity Alerts (`HighSeverity.sh`)
This script filters and displays only high-severity code scanning alerts.

**Command**:
```bash
sh ./HighSeverity.sh
```

**Functionality**:
- Retrieves code scanning alerts marked as high severity for immediate attention.

## Q&A and Closing Remarks

Address questions and clarify any uncertainties.

## Workshop Materials

GitHub Repository - A sample repo with intentional vulnerabilities for testing.
Scripts - Sample shell scripts for automating API calls.

## Jira Integration

GitHub provides an Action that allows data to be pushed into Jira from CodeQL scans and findings.

You can find the repository here:

https://github.com/github/ghas-jira-integration
