# Perform-Measurement-on-URL
**Perform Measurement on URL in Linux shell script**

1. Takes a single URL as an argument
2. Downloads the file at that URL to a temporary file
3. Prints to stdout the size of that file in bytes (and nothing else)
4. Removes any temporary files it creates
5. If no arguments are provided, prints an error message to stderr and exits
6. If the argument is invalid, or downloading fails for any other reason, prints "0" to stdout
