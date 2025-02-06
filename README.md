# incident-management
This is the example project for the course [Develop a Full-Stack CAP Application Following SAP BTP Developer’s Guide](https://developers.sap.com/group.cap-application-full-stack.html).

# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.

## Command

- Install dependencies: `npm install`

- Create a new project: `cds init <YOUR_PROJECT>`
- Use the terminal to start a CAP server: `cds watch`
- Resolving port conflicts: `lsof -i:<port_number>`

- Fill it with some test data: `cds add data` or `cds add data --records`
- Add Test Cases dependencies: `npm add -D axios chai@4 chai-as-promised@7.1.2 chai-subset jest`
- Test the application: `npm run test` (**npm run**is a tool to execute scripts defined in **package.json**,***test*is a script name defined in the **scripts** section)

- Add SAP HANA Cloud: `cds add hana --for production`
- Add XSUAA: `cds add xsuaa --for production`
- Add HTML5 Repo: `cds add html5-repo`

- Run a test build: `cds build --production`
- Restart the stopped HANA Cloud service instance: `cf update-service <YOUR-HANA-CLOUD-INSTANCE-NAME> -c '{"data":{"serviceStopped":false}}`

- Generate the **mta.yaml** deployment descriptor: `cds add mta`
- Add configuration for SAP Build Work Zone, standard edition: `cds add workzone-standard`

- Invoke the **Command Palette** quickly using the following key combination
    - For macOS: `Command + Shift + P`
    - For Windows: `Ctrl + Shift + P`

## Q&A

**Q:** In the **Application Info - incidents** tab, choose the **Preview Application** option.If you get an error **SyntaxError: Unexpected token / in JSON at position 4**

**A:** Open the file **.vscode/launch.json**, delete any comments that you have there, and try again.

**Q:** How is the criticality property used in SAP Fiori to highlight data?

**A:** The criticality property in SAP Fiori is used to visually highlight data based on its status. The property can have the following values, each of which is associated with a specific color and meaning:
- 0 - Neutral: No specific highlighting. The data is displayed without any color or icon.
- 1 - Negative (red): Indicates a negative status. The data is highlighted in red to draw attention to issues or errors.
- 2 - Critical (orange): Indicates a critical status. The data is highlighted in orange to indicate urgent attention is needed.
- 3 - Positive (green): Indicates a positive status. The data is highlighted in green to show successful or favorable conditions.
- 5 - New Item (blue): Indicates a new item. The data is highlighted in blue to highlight new items that were created outside of the app and need the user's attention.

**Q:** Why is the file named launchpage.html instead of index.html?

**A:** Naming the HTML file for the **launchpage.html** instead of **index.html** is mainly to avoid conflict with the **index.html (app/<YOUR_APP>/webapp/index.html)** that the CAP server finds by default, while retaining the functionality and structure of the default page for easy development and maintenance.

**Q:** What is XSUAA?
**A:** XSUAA (XS User and Authentication and Authorization) is the SAP Authorization and Trust Management service, an OAuth 2.0 authorization server that provides user authentication and fine-grained authorization management for applications on SAP BTP.

**Q:** How to deploy the application?
**A:** Follow this tutorial: [Deploy a Full-Stack CAP Application in SAP BTP, Cloud Foundry Runtime Following SAP BTP Developer’s Guide](https://developers.sap.com/group.deploy-full-stack-cap-application.html)

**Q:** Why should you open **app/incidents/webapp/manifest.json** and remove the leading **/** from the **uri** parameter?

**A:** This is necessary because dataSource URIs must be relative to the base URL, meaning they should not start with a slash. Additionally, Business Service UIs must be stored in the HTML5 Application Repository and marked as   public: true   in their manifest.json files to be accessible from an application router running in a different space. Removing the leading slash ensures correct URI resolution.

**Q:** How do the components in an MTA file work together when deploying a CAP application to SAP BTP?

**A:** The components interact as follows during a user request:
User Browser
   │
   ├─> Work Zone (Central Entry Point)
   │
   ├─> App Router (Request Routing)
   │
   ├─> CAP APP (Backend Service Layer)
   │   │
   │   ├─> Database (Data Storage)
   │   │
   │   └─> Destination (Access External Services)
   │
   └─> HTML5 Repository (Frontend Application)

**Q:** What is the difference between modules and resources in SAP CAP MTA?
**A:** In SAP CAP MTA, modules are the self-contained units of the application that are developed, packaged, and deployed. They encapsulate specific functionalities, such as business logic or user interfaces. Resources, on the other hand, are the external services or infrastructure components required by modules at runtime, such as databases or authentication services. Essentially, modules are the building blocks of the application, while resources provide the necessary infrastructure for them to function.
   