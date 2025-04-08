
#Initialize delimiter & min/max values
BEGIN { FS = ","; min = 99999; max = -1;                 
}

#Skip first line
NR == 1 { next}
{
    sum = 0
    count = 0 

    #Iterate through the 3 score columns to get total
    for (i = 3; i <= NF; i++) {
        sum += $i
        count++
    }

    #Call user defined function to calculate average
    avg = calc_average(sum, count)

    #Determine if student is pass ot fail
    status = (avg >= 70) ? "Pass" : "Fail"

    name[NR] = $2            
    totalScore[NR] = sum            
    Avg[NR] = avg            
    Status[NR] = status  

    #Update max if found and top score
    if (sum > max) {
        max = sum
        top = $2
    }
    #Update lowest score when found 
    if (sum < min) {
        min = sum
        low = $2
    }
}

#Function to calculate average grade
 function calc_average(total, count) {
    return total / count
}

END {
       
#Use for task outputs 
      # for (i in name){
        # printf "Student Name: %s Grade Sum: %d\n", name[i], totalScore[i]
      # }
#	print " " 

#       for (i in name){
#	  printf "Student Name: %s Status: %s\n", name[i], Status[i]
#        }
#	print " "
       
      for (i in name){
       print"Name:",  name[i]
       print"Total Score:",  totalScore[i]
       printf"Average: %.2f\n", Avg[i]
       print"Status:" Status[i]
       print " "
    }
    print "Top score: " top " with " max
    print "Lowest score: " low " with " min
}



