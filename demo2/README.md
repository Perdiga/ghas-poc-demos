# Demo 2 - GitHub Advanced Security for Security Teams

This demo provides an overview of the GHAS toolset for security teams.

The key points covered in this session are:

1. A walk through the security dashboard

2. Security configurations

3. A review of coverage

4. How to access compliance reports

5. An overview of security configuration and detections at the repository level

6. Roles and permissions  

The goal of this demo sesson is to provide security teams with an understanding of what GHAS is, and how to use it to monitor vulnerabilities across the existing code base.

## How to access compliance reports

We are going to start off with a quick note that GitHub Enterprise Cloud is certified in a number of security standards. You can access evidence of these from the Enterprise level menu:

https://github.com/enterprises/<your enterprise>

From the left hand menu click the Compliance option. From here you can access reports for SOC2, Type 2 and ISO-27001 among a number of others. GitHub's Bug Bounty program information is also linked from here.

A Enterprise level Security Dashboard is also available from here. Many of the metrics here are of the same type at the Organization level. We'll now jump over to this dashboard to learn more.  


## The Security Dashboard

The security dashboard is your main view of the security health of the Organization in GitHub. It can be accessed from the Security tab on the main page of your Organization.

Once loaded you will see a number of menu items, visualizations and metrics.

The first dashboard present is the Alerts overview. Here we can see information such as:

1. Open Alerts

2. Closed Alerts

3. The criticality of Alerts

4. Alert age

5. The number of Alerts re-opened 

6. Number of secrets by passed.

This screen has a number of filters we can apply, such as Group by Severity. If you click on this drop down, we can group by tool for example.

### Remediation 

Scrolling down the page allows us to see information around Remediation. This includes:

1. Mean time to remediate - this measures the average age of closed alerts

2. The net resolve rate - which is the % o closed alerts to newly created ones

3. Copilot Autofix suggestions - this is the nmber of times the team have used Coipilot Autofix, a GHAS feature to apply patches to vulnerable code

Below this screen we can see Alert activity as well, which summarizes New and Closed alerts.

### Impact analysis 

The impact analysis section of the dashboard lists the top 10 repositories and vulnerabilities that pose the biggest impact on your team's application security.

This table has two tabs to choose from:

1. Repositories - here the top 10 repositories are listed. You can see the number of open alerts, and the number of issues by severity

2.Advisories - this tab provides an overview of security advisories, associated CVE ID, the package ecosystem e.g. pip (Python), the number of open alerts, and the severity

We can now switch to the left hand side menu and select the Risk option.

## Risk

The `Security Risk` screen provides an overview of alerts across the organization. On this screen you can see metrics around:


1. Dependabot findings inclduing the number of repositories impacted and the number of open alerts

2. A roll up of Code scanning alerts

3. A roll up of Secrers scanning alerts

The main table on this page provides a list of repositories with a count of Dependabot and Secrets findings.

If you wish to drill in/filter further there are menus on the left hand side for Alerts, which will drill into the individual tools, namely Dependabot, Code scanning and Secreta scaning.

Th table view of each repository also gives us the ability to drill into Security settings, for example select the top repository from the list, and clikc the Security settings option (the one with the cog next to it).

This will load up a side panel listing the settings currently in place on the repository.

### Enablement Trends

This dashboard can be used to help measure adpoption across the organization. This is broke out by:

1. Dependabot

2. Code scanning 

3. Secrets scanning 

The bottom of the page also contaisn time stamped data on enablement at points in time.

### CodeQL pull request alerts

This screen provides an overview of alerts related to pull requests across your repositories.

Here we can see information on:

1. Alerts found 

2. Copilot Autofix suggestions

3. Alerts fixed

The rest of this screen provides metrics around the number of laerts fixed with Copilot Autofix and remediation rates. 

Data can be exported from this screen in CSV format. 

### Secret scanning 

The secrets scanning screen provides a roll up of metrics from across the organization, including:

1. Bypassed secrets

2. Bypass requests 

3. Mean time to resaponse 

This can be useful to understand the types of secrets being blocked, and which repositories are particularly problematic.

## Security configurations

Next we will look at security configurations. This menu can be found under the Organization and Settings menu, for example:

https://github.com/organizations/<your org>/settings/profile

Expanding the Code security drop down on the left hand side of the screen reveals two menu options:

1. Configurations 

2. Global Settings


Select the Configurations option and this will drop you nto the `Code security configurations` page.

You should now see there are two default configurations options, those being:


1. GitHub Recommended - this includes suggested settings for GHAS 

2. Legacy - this contains any legacy settings that you may have been using on repositories prior to March 2024


If you wish, you can also create custom configurations via the `New configuration` button. While we recommend starting off using the `GitHub Recommended` configurations, there may be use cases where you need to create a custom one.

The new configuration sceeen allows you to set a name and description, and then enable or disable a variety of features from Dependabot, Code scanning and Secrets scanning. 

Once we have configuration settings in place, or have decided to use the recommended ones, we can bulk apply these via the `Apply configurations` menu.


## A review of the current coverage state

We've seen how the security dashboard can give us an overview across the organization of our security coverage.

As a reminder you can find this at:

https://github.com/orgs/tweag/security/coverage

We can also drill down and check out the security state of a particular repository thats within our coverage stats.

Select a repository of choice, this is the equivelant of clicking the `Security` button from the menu in a repository. You may notice it already lists the number of alerts.

The security overview screen provides a list of which features are currently enabled.

The left hand menu provides a list of useful options including:

1. A link to the repositories security policy

2. The number of dependabot alerts

3. Code scanning alerts

4. Secrets scanning, including a break out of High confidence findings, and others.


## An overview of security configuration and detections at the repository level

Now you are familair with the repository level dashboard, we can drill in and find out more about the state of the repositories security.

Selecting the menus on the left will allow you to drill down and see the findings within the code base. 

For Dependabot you can also see infomation on recommended patches for existing issues, such as upgrading packages

Under the Code scanning screen we can see information on individual vulnerabilities, triage them, close them out, or add GitHub issues to tarck their remediation. 

The secrets scanning screen similarly allows us to see what has been detected in the code base and filter the findings.

If we want to check the configuration and settings for the repository, for example to see if we are using Advanced mode for CodeQL, we can select the settings tab and then drill into any of the Security options in the left hand menu.

## Roles and permissions configuration 

The final area we are interested in is Roles and permissions. 

Select the Teams menu option for your Organization.

Here we can see the various teams in our organization, add new ones or modify roles.

Selecting the settings menu allows us to edit the team, and also configure some code review settings.

Selecting the Organization roles setting allows us to review create and configure new roles.



