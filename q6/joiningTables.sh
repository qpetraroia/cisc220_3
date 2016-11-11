#!/bin/bash

# Deven Bernard     - 10099810
# Marissa Huang     - 10179169
# Kevin Zuern       - 10134425
# Quentin Petraroia - 10145835

# Prep the files for joining
awk 'NR > 1' Students.txt | sort > s_sorted
awk 'NR > 1' courses.txt | sort > c_sorted
awk 'NR > 1' students_courses.txt | sort > index


# Join the files
join s_sorted index | awk '{print $3 " " $1 " " $2}' | sort > joined
join joined c_sorted > alltogether

# Display the results
echo "studentName courseName"
awk '{print $3 " " $4}' alltogether | sort

echo

echo "courseName studentName"
awk '{print $4 " " $3}' alltogether | sort

# Clean up
rm alltogether s_sorted index c_sorted joined