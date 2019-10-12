 


# Challenge Three 

# made all the lists one super dooper list.


cat carrie-b.todos.1 carrie-b.todos.2 carrie-b.todos.3 > mastertodocarrie.txt
cat jennifer-r.todos.1 jennifer-r.todos.2 jennifer-r.todos.3 > masterjennifertodos.txt
cat john-a.todos.1 john-a.todos.2 john-a.todos.3 > masterjohntodo.txt

#create three done files for each person
#cd/ls into proper folder and..

touch carriedone.txt
touch johndone.txt
touch jenniferdone.txt


#do the same for unfinished tasks

touch carrieNOTdone.txt
touch johnNOTdone.txt
touch jenniferNOTdone.txt


#Create a file called Produ ctivityReport.md at the base of the Todos folder that specifies the number of to dos each person completed and the number they have left. Note: Because of the complexity of this activity, you do not need to use the script to print your results to the ProductivityReport, but you must use a script to do the counting.
#location /Users/rebeccabartels/cyber-homework/Unit 2 Intro to the Command Line/HW02-Terminal/Instructions/resources/Chal-3_Todos 
touch ProducitivityReport.md


#put all done tasks in approrpraite done folder 

find . -type f -exec grep -rli "done"  {} \; -exec cp {} carriedone.txt \;
find . -type f -exec grep -rli "DONE"  {} \; -exec cp {} johndone.txt \;
find . -type f -exec grep -rli "DONE"  {} \; -exec cp {} jenniferdone.txt \;


#find instances of done in each folder for each person and count them 
grep -i "DONE" * | wc -l
# John : 2
#carrie : 13
#jennifer 6


#for non done activities with in the person's folder and count them 
grep -iv 'done' * | wc -l
grep -iv 'john' * | wc -l
grep -iv 'john' * | wc -l

#move the not done items to not done file
grep -iv 'done' * > carrieNOTdone.txt 
grep -iv 'done' * > johnNOTdone.txt 
grep -iv 'done' * > jenniferNOTdone.txt 
