# Task 3 - Git Hooks. Junior

## Task 2

To add precommit message:

1. Direct to folder `..\2021-mit-nikitagoncharuk\.git\hooks` and create file `prepare-commit-msg`

2. Add this code to the file:

```bash
#!/bin/sh
echo "MIT-2021: Your commit here" > $1
```
