# Writting a script for log analyzer

## Task 1:
- Accept the path to a log file as a command-line argument
- Exit with a clear error message if no argument is provided
- Exit with a clear error message if the file doesn't exist
SOLUTION:
if [ $# -eq 0 ]; then
      echo "Usage: $0 <path/to/log/file>"
fi

if [! -d "$1" ]; then
        echo "Directory doesn't exist"
fi

## Task 2: Error Count
-Count the total number of lines containing the keyword ERROR or Failed
