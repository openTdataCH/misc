# A parser to extract enumerations for the NeTEx standard

This Python code provided over a jupyter notebook traverses the xsd folder structure of the NeTEx standard and finds all xsd:enumerations.
The outcome, i.e., the list of enumerations, is printed to a CSV file a folder level above the xsd path.
There's also an output for identifying a variety of duplications and redundancies in the standard.

To use it: 
1. setup jupyter (e.g., by installing Anaconda)
2. adapt the source path for the NeTEx xsd folder
3. run the script

Enjoy!

20220701