# Text to PDF

## 1. What this command does
`txttopdf` is a shell tool that converts a single `.txt` fileinto a PDF document.  
It uses `enscript` to convert text files into PostScript format and `ps2pdf` to finalize them as PDFs. This is helpful if you typically work with plain text but need a portable, shareable, and more professional format.

## 2. Why/When this command is useful
1. PDF is an industry-standard format for printing and distribution.
2. Easily share or upload your notes, lab reports, or reading summaries as a neat PDF file, helping in organization.
3. Enscript automatically creates pages and can apply simple formatting (e.g., line numbers).  
4. Avoid going through pdf creation process with different commands manually

## How you can use this command

1. Install if not already installed:
   ```bash
   sudo apt-get update
   sudo apt-get install enscript ghostscript

2. Clone repository
   ```bash
   git clone https://github.com/yourusername/cs131.git
  
3. Navigate to txttopdf.sh
   ```bash
    cd cs131/a2
4. Make script executable
   ```bash
   chmod +x txttopdf.sh

5. Run script. 
   ```bash
   ./txttopdf.sh input.txt output.pdf
  Here, `input.txt` is the text file that is to be converted to pdf. `output.pdf` is the optional name for the pdf to be generated from the input text file. 


## Example

### Example 1
Scenario: You need to send log files or server configurations to a manager, team lead, or client in a readable format. 


Usefulness: Helps with documentation, readability, making sure there are no accidental modifications & it's easier for stakeholders to open rather than raw log files. 

Command: 
   ```bash
./txttopdf.sh error_log.txt error_report.pdf
```
Output: 
   ```bash
    [ 1 page * 1 copy ] left in /tmp/tmp.iocxriUM28.ps
      PDF successfully created: error_report.pdf
```

### Example 2
Scenario: You write your documentation and notes in a text file for ease of access while developing. 

Usefulness: Helps with easily converting notes where you can bring to other devices (such as iPad) to further annotate/study. Helps with organization, fast conversion and ease of accessability.

Command: 
  ```bash
  ./txttopdf.sh more.txt morenote.pdf
```
Output: 
```bash 
[ 1 page * 1 copy ] left in /tmp/tmp.0mqXkmGGni.ps
PDF successfully created: morenote.pdf
```
Created by: Amrit Randev

