Azure Infrastructure Automation with CI/CD
📌 Overview
This project demonstrates automated provisioning and deployment of Azure cloud resources using Infrastructure as Code (Bicep) and GitHub Actions CI/CD.

Initially, the pipeline was designed to deploy an Azure Storage Account. It was later enhanced to provision an Azure Function App and deploy a Node.js timer-triggered function automatically. The solution showcases end-to-end automation of both infrastructure and application deployment.

🚀 Features
Infrastructure as Code using Azure Bicep
Automated CI/CD using GitHub Actions
Azure Storage Account deployment
Azure Function App deployment
Node.js Timer Trigger Function (runs every 30 seconds)
Automated infrastructure and code deployment on Git push
🏗️ Architecture
Developer pushes code to GitHub
GitHub Actions pipeline triggers automatically
Azure authentication using Service Principal
Infrastructure deployed using Bicep templates
Function code deployed to Azure Function App
Timer-triggered function executes every 30 seconds
📂 Repository Structure
Azure-infra/ │ 
├── .github/workflows/ 
│ └── deploy.yml # CI/CD Pipeline  
├── infra/ 
│ ├── main.bicep # Infrastructure Definition 
│ └── parameters.json # Deployment Parameters 
├── function-code/ 
│ ├── HelloFunction/ 
│ │ ├── index.js # Function Logic 
│ │ └── function.json # Trigger Configuration 
│ ├── HttpTrigger/ 
│ │ ├── index.js # Function Logic 
│ │ └── function.json # Trigger Configuration 
│ ├── host.json 
│ └── package.json 
└── README.md

⚙️ CI/CD Workflow
The GitHub Actions pipeline performs:

Checkout repository
Azure login using service principal credentials
Deploy infrastructure using Bicep
Deploy Azure Function code
Pipeline triggers automatically on code push.

☁️ Azure Resources Created
Storage Account
Azure Function App
App Service Plan (Consumption)
Resource Group Deployment
🧪 Function Details
Trigger Type: Timer Trigger\ Schedule: Every 30 seconds

Example Log Output:

Hello World --- Function Executed at: 2026-02-25T10:00:00Z

🔐 Required Secrets
The GitHub repository must contain the following secret:

AZURE_CREDENTIALS

This secret stores Azure Service Principal credentials required for authentication during deployment.

🛠️ Technologies Used
Microsoft Azure
Azure Functions
Node.js
Azure Bicep
GitHub Actions
Azure Resource Manager (ARM)
📈 Future Enhancements
HTTP Trigger Function
Application Insights monitoring
Multi-environment deployment (Dev/Prod)
Automated testing
👨‍💻 Author
Shashank Verma

⭐ Learning Outcomes
This project demonstrates:

CI/CD pipeline implementation using GitHub Actions
Infrastructure automation using Bicep
Azure serverless deployment
DevOps best practices with branching and pull requests
