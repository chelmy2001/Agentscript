
#!/bin/bash
#Project 11 Question 4
#Date August 2020

# This step checks if the file /etc/hosts exists


if [ -f /etc/hosts ]
                then
                        echo “The file /etc/hosts exists.”
                else
                        echo “The file /etc/hosts dos not exist.”
fi
#This step checks what selinux is set to?
echo “The SELinux is set $(sestatus |grep ^SELinux |grep status|awk '{print $3}')”

#This step checks what is the uid of the user nobody
echo “The uid of user nobody is $(id nobody|grep ^uid= |awk -F"(" '{print $1}'|awk -F= '{print $2}')”

#$Check if the package samba exists



#$Check if the package samba exists
rpm -qa samba
if [ $? -eq 0 ]
    then
            echo " the package samba exists "
    else
            echo " The package samba does not exist "
fi
#check if the auditd daemmon is running and is enabled
                echo “ The auditd daemon is $(systemctl status auditd | grep Active |awk '{print $2 " and "$3}') and $( systemctl status auditd | grep Loaded |awk '{

#check if the /etc/group file is owned by root user

if [ $(ls -l /etc/group |awk '{print $3}') == "root" ]
        then
                echo "root is the owner of the file /etc/group"
        else
                echo "root is not the owner of the file /etc/group"
fi

#check if the curl command is installed

rpm -qa curl
if [ $? -eq 0 ]
    then
            echo " The package curl is installed "
    else
            echo " The package curl is not installed "
fi

#check if the curl command is installed

rpm -qa docker
if [ $? -eq 0 ]
    then
            echo " the package docker is installed "
    else
            echo " The package docker is not installed "




#check if the /etc/group file is owned by root user

if [ $(ls -l /etc/group |awk '{print $3}') == "root" ]
        then
                echo "root is the owner of the file /etc/group"
        else
                echo "root is not the owner of the file /etc/group"
fi

#check if the curl command is installed

rpm -qa curl
if [ $? -eq 0 ]
    then
            echo " The package curl is installed "
    else
            echo " The package curl is not installed "
fi

#check if the curl command is installed

rpm -qa docker
if [ $? -eq 0 ]
    then
            echo " the package docker is installed "
    else
            echo " The package docker is not installed "
fi




echo "The fisrt digit of the Kernel is $( uname -r |awk -F. '{print $1}'  )"
From olivia Nkeih to Everyone:  11:22 PM
echo "The total memory is `free -m |grep Mem | awk '{print $2}'` "
From Cyprien T. to Everyone:  11:33 PM
uname -r |awk -F. '{print $1}'
echo " the system is $( uname -m |awk -F"_" '{print $2}'
 ) bits"

#/etc/sysconfig/


if [ -f /etc/sysconfig/ ]
    then
            echo " The sysconfig file exists "
    else
            echo " The sysconfig doesn't exit  "
fi
 
