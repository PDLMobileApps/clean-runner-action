# clean-runner-action
Cleans the workspace and Xcode cache for Github runners

Here is an example of how you can use this action in your workflow:

```
name: Clean Runner Files Workflow

on: [push]

jobs:
  clean-runner:
    runs-on: macos-latest
    steps:  
      - name: Clean Runner Files
        uses: PDLMobileApps/clean-runner-action@main
        with:
          workspace: ${{ github.workspace }}

      - name: Checkout Code
        uses: actions/checkout@v2
      
```