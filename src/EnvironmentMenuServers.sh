all_done_total=0
while (( !all_done_total )); do

	echo -e "\n\n\n.::XXX ENvironments::."
	PS3='Please Select the Desired Environment: '
	options=("PROD" "DR" "EUAT" "Quit")
	select opt in "${options[@]}"
	do
		case $opt in
			"PROD")

				all_done=0
				while (( !all_done )); do
					echo -e "\n\n\n.::PROD Servers::."
					PS3='Please Select the Desired Server: '
					optionsSecondLevel=("Server1" "Server2" "Server3" "Server4" "Server5" "Return")
					select optSecLev in "${optionsSecondLevel[@]}"
					do
						case $optSecLev in
							"Server1")
								ssh user@127.0.0.1 
								break
								;;
							"Server2")
								ssh user@127.0.0.1 
								break
								;;
							"Server3")
								ssh user@127.0.0.1 
								break
								;;
							"Server4")
								ssh user@127.0.0.1 
								break
								;;
							"Server5")
								ssh user@127.0.0.1 
								break
								;;
							"Return")
								PS3='Please Select the Desired Environment: '
								all_done=1
								break
								;;
							*) echo -e "\nInvalid option $REPLY"
								break
								;;

						esac
					done
				done
				break
				;;
			"DR")
				all_done=0
				while (( !all_done )); do
					echo -e "\n\n\n.::DR Servers::."
					PS3='Please Select the Desired Server: '
					optionsSecondLevel=("Server1" "Server2" "Server3" "Server4" "Server5" "Return")
					select optSecLev in "${optionsSecondLevel[@]}"
					do
						case $optSecLev in
							"Server1")
								ssh user@127.0.0.1 
								break
								;;
							"Server2")
								ssh user@127.0.0.1  
								break
								;;
							"Server3")
								ssh user@127.0.0.1 
								break
								;;
							"Server4")
								ssh user@127.0.0.1 
								break
								;;
							"Server5")
								ssh user@127.0.0.1 
								break
								;;
							"Return")
								PS3='Please Select the Desired Environment: '
								all_done=1
								break
								;;
							*) echo -e "\nInvalid option $REPLY"
								break
								;;

						esac
					done
				done
				break
				;;
			"EUAT")
				all_done=0
				while (( !all_done )); do
					echo -e "\n\n\n.::EUAT Servers::."
					PS3='Please Select the Desired Server: '
					optionsSecondLevel=("Server1" "Server2" "Server3" "Server4" "Server5" "Return")
					select optSecLev in "${optionsSecondLevel[@]}"
					do
						case $optSecLev in
							"Server1")
								ssh user@127.0.0.1 
								break
								;;
							"Server2")
								ssh user@127.0.0.1 
								break
								;;
							"Server3")
								ssh user@127.0.0.1 
								break
								;;
							"Server4")
								ssh user@127.0.0.1 
								break
								;;
							"Server5")
								ssh user@127.0.0.1 
								break
								;;
							"Return")
								PS3='Please Select the Desired Environment: '
								all_done=1
								break
								;;
							*) echo -e "\nInvalid option $REPLY"
								break
								;;

						esac
					done
				done
				break
				;;
			"Quit")

				all_done_total=1
				break
				;;
			*) echo -e "\nInvalid option $REPLY"
			break
			;;
		esac
	done
done

