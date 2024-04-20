# Directory-Cleaner-Script

### Overview
`delc.pl` is a Perl script designed to help users interactively clean up directories by deciding whether to delete each file encountered. It prompts the user for each file within a specified directory, offering options to delete or quit the process. The script is simple, user-friendly, and suitable for those who need a command-line solution to manage files efficiently.

### Installation
To install and run `delc.pl`, you will need Perl installed on your system. Perl comes pre-installed on most Unix-like systems. You can verify the installation by running `perl -v` in your terminal. If Perl is not installed, you can download it from [Perl.org](https://www.perl.org/get.html).

#### Steps:
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/delc-directory-cleaner.git
   ```
2. Navigate to the cloned directory:
   ```bash
   cd delc-directory-cleaner
   ```

### Usage
Before using the script, ensure it is executable:
```bash
chmod +x delc.pl
```

To run the script, use the following command syntax:
```bash
./delc.pl [file_pattern]
```
Where `[file_pattern]` represents the files you want to potentially delete. Examples:
- To process all files and directories: `./delc.pl *`
- To process only text files: `./delc.pl *.txt`

#### Example:
```bash
./delc.pl *.txt
```
This command will prompt you to decide on deleting or keeping each `.txt` file in the current directory.

### Contributing
Contributions to improve `delc.pl` are welcome. Please follow these steps to contribute:
1. Fork the repository.
2. Create a new branch (`git checkout -b improve-feature`).
3. Make the necessary changes in the files.
4. Commit your changes (`git commit -am 'Improve feature'`).
5. Push to the branch (`git push origin improve-feature`).
6. Create a Pull Request.

### License
This project is licensed under the MIT License - see the LICENSE file in the repository for details.
