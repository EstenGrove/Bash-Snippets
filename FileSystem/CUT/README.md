# ```CUT``` Command
- ```cut``` allows for *slicing* portions of strings or data for *each* line in a file, like .csv for instance.

### __Flags & Options__
- ```-c``` cut by character
  - __Syntax:__ ```cut -c [(k)-(n)/(k),(n)/(n)] filename``` 
    - ```(k)``` is the starting position of a character and ```(n)``` is the ending position of a character.
      - __Example:__ ```cut -c 2,5,7 file.txt``` will print the 2, 5 and 7th character from *__each__* line in ```file.txt```
- ```-d``` is for using a delimiter
- ```-f``` display specific fields: ```cut file.txt -f 1,3``` will display 1st and 3rd fields 
- ```-b``` cut by *bytes*

------------------------------


    
## Print By Character "Ranges" 


#### __Print by Number of Characters
- print the first 7 characters
```bash
cut -c 1-7 file.txt
```

## Print By Fields

#### Print Select Fields
- will print the 1st and 3rd fields in a ```.csv```
```bash
cut file.txt -f 1,3
```

#### Print *From* The 1st Field
- print from 1st to 4th field
```bash
cut file.txt -f -4
```

--------------------------


## Cut Based on a *Delimiter*


#### Print Portions of a Line Using a Delimiter
- display the 1st and 3rd fields based on a delimiter
```bash
cut file.txt -d ':' 1,3
```

#### Use a "space" as a Delimiter
- print the second field after the delimiter
```bash
cut file.txt -d ' ' -f 2
```


--------------------------


## Cut Based on *Bytes & Characters*


#### Select the 5th, and 9th Bytes
```bash
echo "gloriousness" | cut -b 5,9
```

















