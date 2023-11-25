import csv
import datetime

# Input and output file paths
input_csv_path = '/Users/joshua.adkins/Desktop/OutputFile_2023_11_25.csv'
output_txt_path = f'/Users/joshua.adkins/Desktop/target_1_{datetime.datetime.now().strftime("%Y%m%d")}.txt'

# Define the specifications
field_delimiter = '|'
end_of_line = '\n'
text_qualifier = '"'
encoding = 'utf-8'

# Read CSV and write to target text file
with open(input_csv_path, 'r', newline='', encoding='utf-8') as csv_file, open(output_txt_path, 'w', newline='', encoding=encoding) as txt_file:
    csv_reader = csv.reader(csv_file)
    csv_writer = csv.writer(txt_file, delimiter=field_delimiter, quotechar=text_qualifier, quoting=csv.QUOTE_NONNUMERIC)

    # Write header
    header = next(csv_reader)
    csv_writer.writerow(header)

    # Write data
    for row in csv_reader:
        csv_writer.writerow(row)
