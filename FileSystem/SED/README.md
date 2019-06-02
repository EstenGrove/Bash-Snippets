# Sed ```sed``` Command
 ```sed``` is great for string replacing or using regex to match string patterns.

 ## SUBSTITUTION
 - Use the ```'s/searchFor/replaceWith/g'``` flag in order to substitute.
  - ```s``` is the substitution flag, then just define the search pattern and what to replace it with.
 - Use the ```-i``` flag to "replace" the pattern match *in place*.
 ### Replacing all occurences of a pattern with another string
 - This will replace each instance of "NAME" inside all ```.txt``` files that start with "test-", with the string "Esten".
 - NOTE: On MacOSX ```SED``` working slightly differently and you need to define a label(ie ```'.old'``` as the "backup" file.
  - HOWEVER, a work-around for this issue is to use an empty ```''``` backup string.
 ```bash
 sed -i '.old' 's/NAME/Esten/g' "test-"*.txt
 ```
