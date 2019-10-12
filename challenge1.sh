
mkdir JPG PNG TIFF 

# finds the files and then takes the output and inputs it into the higher up TIFF/JPG/PNG respective folders. 
find . -type f -name "*.tiff*" -exec cp {} TIFF \;
find . -type f -name "*.jpg*" -exec cp {} JPG \;
find . -type f -name "*.png*" -exec cp {} PNG \;


#finds all (x) type files and then counts them 
find JPG -type f | wc -l
# solution: 
      13

#finds all (x) type files and then counts them 
find PNG -type f | wc -l
# solution: 
      10


#finds all (x) type files and then counts them 
find TIFF -type f | wc -l
# solution: 
       8
