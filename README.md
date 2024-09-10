# clean-runner-action
Cleans the workspace and Xcode cache for Github runners

Use the Action in Your Workflow

Here’s an example of how you can use this action:

```
name: Clean Runner Files Workflow

on: [push]

jobs:
  clean-runner:
    runs-on: macos-latest
    steps:  
      - name: Clean Runner Files
        uses: your-username/clean-runner-action@main
        with:
          workspace: ${{ github.workspace }}

    - name: Checkout Code
        uses: actions/checkout@v2
      
```