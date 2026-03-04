#!/bin/bash


<<comment

combine the all task in one maintenance and calling the function 

comment


source ./log_rotation.sh
source ./backup2.sh


# now calling the function 

log_rotation
create_backup
