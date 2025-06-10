#!/bin/bash

# List of filenames
files=(
  fawn glitch_cat moneyware password_generator pw_crack3 rot13 strings_it wave_a_flag
  appointment first_find hashingJobApp mongod permissions pw_crack4 rsa synced what_netcat
  convert_me first_grep magikarp nice_netcat preignition pw_crack5 runme tab_tab_attack windows_reverse_tcp
  dancing fixme1 memory_game obedient_cat pw_crack1 python_wrangling serpentine warmed_up
  bin_convert explosion fixme2 meow online_storage pw_crack2 redeemer static_noise warm_up
)

# Loop through and create directories without 
for file in "${files[@]}"; do
  dir="${file%}"  # Remove  extension
  mkdir -p "$dir"    # Create directory
done
