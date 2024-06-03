# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"E1073","system":"readv2"},{"code":"E1074","system":"readv2"},{"code":"E107.","system":"readv2"},{"code":"E1011","system":"readv2"},{"code":"E105.","system":"readv2"},{"code":"E1034","system":"readv2"},{"code":"E1003","system":"readv2"},{"code":"E10yz","system":"readv2"},{"code":"E103.","system":"readv2"},{"code":"E101z","system":"readv2"},{"code":"E107z","system":"readv2"},{"code":"E105z","system":"readv2"},{"code":"E10y1","system":"readv2"},{"code":"E1032","system":"readv2"},{"code":"E10z.","system":"readv2"},{"code":"E1052","system":"readv2"},{"code":"E101.","system":"readv2"},{"code":"Eu201","system":"readv2"},{"code":"E1072","system":"readv2"},{"code":"E1075","system":"readv2"},{"code":"E1033","system":"readv2"},{"code":"E1002","system":"readv2"},{"code":"E1005","system":"readv2"},{"code":"E1004","system":"readv2"},{"code":"Eu203","system":"readv2"},{"code":"ZV110","system":"readv2"},{"code":"Eu20.","system":"readv2"},{"code":"E1015","system":"readv2"},{"code":"E1031","system":"readv2"},{"code":"E103z","system":"readv2"},{"code":"E1013","system":"readv2"},{"code":"Eu206","system":"readv2"},{"code":"E1051","system":"readv2"},{"code":"E1055","system":"readv2"},{"code":"Eu200","system":"readv2"},{"code":"1464.","system":"readv2"},{"code":"E1022","system":"readv2"},{"code":"E1023","system":"readv2"},{"code":"E102z","system":"readv2"},{"code":"Eu2..","system":"readv2"},{"code":"E1021","system":"readv2"},{"code":"E1035","system":"readv2"},{"code":"E1001","system":"readv2"},{"code":"Eu20y","system":"readv2"},{"code":"Eu202","system":"readv2"},{"code":"E1053","system":"readv2"},{"code":"E1014","system":"readv2"},{"code":"E100z","system":"readv2"},{"code":"E100.","system":"readv2"},{"code":"Eu205","system":"readv2"},{"code":"E1025","system":"readv2"},{"code":"E10y.","system":"readv2"},{"code":"E1024","system":"readv2"},{"code":"E106.","system":"readv2"},{"code":"E1071","system":"readv2"},{"code":"E1054","system":"readv2"},{"code":"E102.","system":"readv2"},{"code":"E1012","system":"readv2"},{"code":"E10y0","system":"readv2"},{"code":"F20.2","system":"readv2"},{"code":"F20.8","system":"readv2"},{"code":"F20","system":"readv2"},{"code":"F20.5","system":"readv2"},{"code":"F20.0","system":"readv2"},{"code":"F20.3","system":"readv2"},{"code":"F20.1","system":"readv2"},{"code":"F20.6","system":"readv2"},{"code":"Eu230","system":"readv2"},{"code":"Eu231","system":"readv2"},{"code":"Eu232","system":"readv2"},{"code":"F23.0","system":"readv2"},{"code":"F23.1","system":"readv2"},{"code":"F23.2","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('severe-mental-illnesses-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["severe-mental-illnesses-schizophrenialike---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["severe-mental-illnesses-schizophrenialike---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["severe-mental-illnesses-schizophrenialike---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
