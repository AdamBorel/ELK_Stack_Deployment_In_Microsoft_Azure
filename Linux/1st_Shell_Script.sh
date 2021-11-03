#! /bin/bash
sed s/INCORRECT_PASSWORD/ACCESS_DENIED/ LogA.txt > Access_Denied.txt
awk '{print $4, $6}' Access_Denied.txt > Filtered_Logs
