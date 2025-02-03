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