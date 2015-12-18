 #!/bin/bash
while true
do
    echo -e "\033[36m Menu \033[0m"
    PS3='Choix? '
    select choix in "menu1" "menu2" "menu3" "Quitter (q|Q)";
        do
            case $REPLY in
            1)  back=0
                while true
                do
                    PS3='Choix? '
                    select choix in "smenu1" "smenu2" "smenu3" "Retour";
                        do
                            case $REPLY in
                            1)  echo -e "\033[36m $choix \033[0m"
                             break
                             ;;

                            ###################################################################

                            2)  echo -e "\033[36m $choix \033[0m"
                             break
                             ;;

                            ###################################################################

                            3)  echo -e "\033[36m $choix \033[0m"
                             break
                             ;;

                            ###################################################################

                            4)
                             back=1
                             break
                             ;;
                        *) echo "Faute de frappe !";;
                    esac
                done
                if [[ $back == 1 ]]; then
                    break
                fi
                done
            break
            ;;

            ###################################################################

            2)  echo -e "\033[36m $choix \033[0m"
            break
            ;;

            ###################################################################

            3)  echo -e "\033[36m $choix \033[0m"
            break
            ;;

            ###################################################################

         4|Q*|q*)
            echo -e "\033[36m Bye.. \033[0m"
            exit
            ;;

            ###################################################################

            *) echo "Faute de frappe !";;
        esac
    done
done