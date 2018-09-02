 #extract papers with open science as key word  
 esearch -db pubmed -query "[Open science]" |
#links to the database 
  elink -target pubmed |
 #extract papers with open data as key word 
  esearch -db pubmed -query "Open data" |
#links to the pubmed database 
  elink -target pubmed |
 # combines the two searches with the 'AND' for a strigent filter
  esearch -query "(#3) AND (#6)" |
 #fetches the data in pubmed summary 
  efetch -format pubsum |
 #parse the information 
  xtract -pattern PubmedSummary  -element Id Title Authors FullJournalName EPubDate AbstractText > result.txt 


 

