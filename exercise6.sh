#Exercise 6 Evan Peters
#usage: bash exercise6.sh

#problem 1
cat wages.csv | sed -e '1d' | cut -d , -f 1,2 | sort -t , -k1,1 -k2,2n | tr ',' ' '

#problem 2
echo "highest earner"
cat wages.csv | sort -t , -k4,4n | cut -d , -f 1,2,4 | tail -n 1
echo "lowest earner"
cat wages.csv | sort -t , -k4,4n | cut -d , -f 1,2,4 | head -n 2 | tail -n 1
echo "number of females in the top ten earners"
cat wages.csv | sort -t , -k4,4n | cut -d , -f 1,2,4 | tail -n 10 | grep -c "female" 

#problem 3
val1=$(cat wages.csv | sort -t , -k4,4n | cut -d , -f 3,4 | grep '16,' | head -n 1 | cut -d , -f 2)
val2=$(cat wages.csv | sort -t , -k4,4n | cut -d , -f 3,4 | grep '12,' | head -n 1 | cut -d , -f 2)
echo "$val1 - $val2" | bc
