# ```CUT``` Command
- ```cut``` allows for *slicing* portions of strings or data for *each* line in a file, like .csv for instance.

### __Flags & Options__
- ```-c``` cut by character
  - __Syntax:__ ```cut -c [(k)-(n)/(k),(n)/(n)] filename``` 
    - ```(k)``` is the starting position of a character and ```(n)``` is the ending position of a character.
    
    
    
## Print Portions of a Line 


#### __Print by Number of Characters
- print the first 7 characters
```bash
cut -c 1-7 file.txt
```
