#!/bin/bash

# Store the usernames that should be added to the students group.
usernames=("atanaka" "alee" "rpatel")

# Loop through each username in the array.
for username in "${usernames[@]}"
do
    # Append the user to the students supplementary group without removing other groups.
    sudo usermod -aG students "$username"
done

# Report that the loop has finished.
echo "Successfully added users to the students group"
