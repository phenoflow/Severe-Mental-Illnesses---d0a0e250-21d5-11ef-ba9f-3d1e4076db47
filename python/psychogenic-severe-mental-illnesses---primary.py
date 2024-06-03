# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"Eu26.","system":"readv2"},{"code":"E1114","system":"readv2"},{"code":"Eu311","system":"readv2"},{"code":"E1144","system":"readv2"},{"code":"E1154","system":"readv2"},{"code":"E11y3","system":"readv2"},{"code":"E1104","system":"readv2"},{"code":"E1164","system":"readv2"},{"code":"Eu314","system":"readv2"},{"code":"Eu315","system":"readv2"},{"code":"Eu312","system":"readv2"},{"code":"E1134","system":"readv2"},{"code":"Eu233","system":"readv2"},{"code":"Eu32A","system":"readv2"},{"code":"E13y0","system":"readv2"},{"code":"Eu329","system":"readv2"},{"code":"E1124","system":"readv2"},{"code":"Eu23y","system":"readv2"},{"code":"E134.","system":"readv2"},{"code":"Eu333","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('severe-mental-illnesses-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["psychogenic-severe-mental-illnesses---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["psychogenic-severe-mental-illnesses---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["psychogenic-severe-mental-illnesses---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
