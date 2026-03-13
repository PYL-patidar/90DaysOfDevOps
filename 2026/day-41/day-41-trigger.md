## Matrix Strategy:  
Matrix strategy is used to run the same job multiple times with different configuration. It helps us to test our code on multiple environments (like different OS, versions, or tools) automatically.
Example:
You want to test your code on:
Ubuntu
Windows
macOS
Instead of writing 3 separate jobs, you write one job with a matrix, and GitHub Actions runs it 3 times automatically.
