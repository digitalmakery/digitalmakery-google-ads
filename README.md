# Programmatic use of Google Ads

Aim: The google ads gui is horrible. The aim is to produce a repo that allows repetitive actions on the google ads platform.

To do so it relies on an [Open Source MCP server](https://github.com/FGRibreau/mcp-google-ads) that is run inside a Docker Container.

## Setup

> If you are not a Digital Makery employee, you can still use this setup. You must simply replace the sops+age encrypted files that hold secrets with your own.

1. Clone this repo

   ```bash
   git clone https://github.com/digitalmakery/digitalmakery-google-ads

   ```

1. Assure access to secrets via digitalmakery age key. **If there is no access, recreate credentials and environment variables using your own info**

1. Clone the MCP server repo into a sister dir:

   ```bash
   git clone https://github.com/FGRibreau/mcp-google-ads ../
   ```

1. Get the necessary credentials from Google - see [instructions](https://github.com/FGRibreau/mcp-google-ads#credentials-setup) and place the `credentials.json`-file inside `./credentials/`

1. Generate credential files from inside this repos root dir

   ```bash
   make gen-credentials
   ```

1. Test MCP server inside Pi coding agent. Inside pi check mcp status by running `/mcp`
1. (Optional) Delete the sister dir that holds the mcp server repo. It was only necessary to create credentials.
