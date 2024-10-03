# OWASP Threat Intelligence project

This project involves enhancing the security posture of the web applications by deploying ModSecurity based honeypots over Amazon EC2 instances to lure the attacker to use various tools and attack techniques to compromise the application and logging the attack vectors for threat analysis. These Amazon EC2 instances are spread across different regions of the world to cover the global landscape. The output of these honeypots is logged in a S3 bucket in JSON format which can be used as a threat intelligence dataset for finding web traffic anomalies. Furthermore, we can use a JSON visualization tool such as JSON crack for pattern matching and detect the anomaly in the dataset which could be useful for patching the application as well as creating a baseline for the web developers for future development.  


The primary aims of the project are

* ModSecurity-based honeypots are deployed on Amazon EC2 instances spread across different geographic regions.  

* Logging of new attack vectors on the honeypot using JSON output rather than mlogc. 

* Putting JSON output in a s3 bucket to create a threat intel dataset. 

* Implementation of automation for streamlining deployment and management of honeypots 

* Developing a best practices guide for securing web application 

## Organization of the repository

This repository is organized into various directories. Below table shows the purpose of each one. 

| Directory | Purpose | 
| --- | --- | 
| `honeytraps` | Focuses on building honeytraps and reporting threat intelligence | 

Please go to respective directories for complete documentation.

Plan of the Project

This project focuses on the research question: How does ModSecurity based honeypots enhance web application security and foster proactive threat monitoring? 

To answer this question, a research plan has to be carefully constructed in order to investigate and understand, within a specified time, configuration and implementation of ModSecurity honeypots on Amazon EC instance, Data collection of honeypot and analysis, mapping the dataset into a mind map and finding anomaly. 

