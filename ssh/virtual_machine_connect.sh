#!/bin/bash

echo "1. virtual-machine-1"
echo "2. virtual-machine-2"
echo "3. virtual-machine-3"

read -p 'virtual-machine: ' VM_number

if [ $VM_number -eq 1 ]
then
    ssh virtual-machine-$VM_number
elif [ $VM_number -eq 2 ]
then
    ssh virtual-machine-$VM_number
elif [ $VM_number -eq 3 ]
then
    ssh virtual-machine-$VM_number
else
    echo "No such virtual-machine"
fi