#!/bin/sh

# who to warn
email=root
# battery level critical %
critlevel=10
# seconds to recheck and eventually act when battery is low
sleeps=120
# seconds to pause between script runs
loop=300

while true

do

# battery %
battery1=$( /sbin/sysctl -n hw.acpi.battery.life )
# AC plugged in?
acpower1=$( /sbin/sysctl -n hw.acpi.acline )

if [ ${battery1} -le ${critlevel} ] && [ ${acpower1} = "0" ]
 then
  /bin/sleep ${sleeps}

  battery2=$( /sbin/sysctl -n hw.acpi.battery.life  )
  acpower2=$( /sbin/sysctl -n hw.acpi.acline )

   if [ ${battery2} -lt ${battery1} ] && [ ${acpower2} = "0" ]
    then
     echo "Insert power plug or kill PID $$ to prevent automatic shutdown." | /usr/bin/mail -s "Battery ${battery2} % - Will shutdown in ${sleeps} seconds" ${email}
     notify-send -t 5000 "Insert power plug or kill PID $$ to prevent automatic shutdown." 
     /bin/sleep ${sleeps}

      acpower3=$( /sbin/sysctl -n hw.acpi.acline )

      if [ ${acpower3} = "0" ]
       then /usr/sbin/zzz
      fi
   fi
fi
/bin/sleep ${loop}
done
