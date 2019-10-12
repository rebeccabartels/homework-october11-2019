
#find all files and move them to AllRecords
find . -type f -iname "*" -exec cp {} AllRecords/ \;

#save all contents into one super content file , just to be organized
cat order_records.csv.aa order_records.csv.ab order_records.csv.ac order_records.csv.ad order_records.csv.ae order_records.csv.af > fullrecords.csv.ag

# create the necessary two files 
touch michael_campbell_orders.output michael_davis_orders.output


touch VIPCustomerDetails.md

#find all instances of his email 
grep -i "michael.campbell" *
grep -i "michael.davis" *

#move instance in appropriate files
grep -i "michael.campbell" * mv michael_campbell_orders.output 
grep -i "michael.davis" * mv michael_davis_orders.output 
