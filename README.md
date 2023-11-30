This script creates network object for cisco ASA. It takes a text file and add the command: network-object host + the IP address specified in the text file.

To use this script you need to give excecute permissions (chmod +x net-objct.sh)

Each ip must be in one line, no spaces and no new empty lines. Must start from line 1.

Note: This scripts created for commands for singe IP-s not Subnets.

To add the network object:
1. Create a text file with IP-s
2. Run this script
3. Enter your input  file name
4. Enter output file name
5. Copy all text from the output file
6. Go to global configuation in you ASA
7. Create the network group you want this list op IP-s to add: object-group network + "You group name"
8. Paste the commands you copied from the output file
9. Save configuration (end, wr)

