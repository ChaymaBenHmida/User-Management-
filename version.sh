
#!/bin/bash
version()
{
filename='version.txt'
while read line
do 
echo $line
done < $filename
}
