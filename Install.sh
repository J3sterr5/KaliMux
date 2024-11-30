#!/bin/bash

# Shell Banner for tools 
echo "    ██╗  ██╗ █████╗ ██╗     ██╗███╗   ███╗██╗   ██╗██╗  ██╗"
echo "    ██║ ██╔╝██╔══██╗██║     ██║████╗ ████║██║   ██║╚██╗██╔╝"
echo "    █████╔╝ ███████║██║     ██║██╔████╔██║██║   ██║ ╚███╔╝ "
echo "    ██╔═██╗ ██╔══██║██║     ██║██║╚██╔╝██║██║   ██║ ██╔██╗ "
echo "    ██║  ██╗██║  ██║███████╗██║██║ ╚═╝ ██║╚██████╔╝██╔╝ ██╗"
echo "    ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝"
#! Default Directory
install_dir="/data/data/com.termux/files/home"

#!Sesi instalasi
echo "Pilih kategori tools yang mau diinstall:"
select kategori in "Hacking" "Forensics" "Network" "Exit"; do
    case $kategori in
        "Hacking")
            echo "Pilih tools hacking yang mau diinstall:"
            select tool in "Metasploit" "Nmap" "JohnTheRipper" "Back" "Exit"; do
                case $tool in
                    "Metasploit") #?done
                        echo "Install Metasploit di $install_dir..."
                        mkdir -p "$install_dir/metasploit"  # Buat direktori untuk Metasploit
                        git clone https://github.com/rickyfazaa/MySPAMBot-OTP.git "$install_dir/metasploit"
                        break
                        ;;
                    "Nmap") #! In Process
                        pkg install nmap -y
                        echo "Sedang menginstall Nmap..."
                        break
                        ;;                        
                    "JohnTheRipper")
                        echo "Install JohnTheRipper..."
                        pkg install git cmake clang
                        git clone https://github.com/openwall/john.git
                        pushd john
                        chmod +x configure
                        ./configure
                        make
                        make install
                        popd
                        break
                        ;;
                    "Back")
                        break
                        ;;
                    "Exit")
                        echo "Keluar dari script. Sampai jumpa, King!"
                        exit
                        ;;
                    *)
                        echo "Pilihan gak valid, coba lagi!"
                        ;;
                esac
            done
            break
            ;;
        "Forensics")
            echo "Pilih tools forensics yang mau diinstall:"
            select tool in "Autopsy" "Wireshark" "Volatility" "Back" "Exit"; do
                case $tool in
                    "Autopsy")
                        echo "Install Autopsy..."
                        # Tambah perintah install Autopsy
                        break
                        ;;
                    "Wireshark")
                        echo "Install Wireshark..."
                        # Tambah perintah install Wireshark
                        break
                        ;;
                    "Volatility")
                        echo "Install Volatility..."
                        # Tambah perintah install Volatility
                        break
                        ;;
                    "Back")
                        break
                        ;;
                    "Exit")
                        echo "Keluar dari script. Sampai jumpa, King!"
                        exit
                        ;;
                    *)
                        echo "Pilihan gak valid, coba lagi!"
                        ;;
                esac
            done
            break
            ;;
        "Network")
            echo "Pilih tools network yang mau diinstall:"
            select tool in "Netcat" "Tcpdump" "Aircrack-ng" "Back" "Exit"; do
                case $tool in
                    "Netcat")
                        echo "Install Netcat..."
                        # Tambah perintah install Netcat
                        break
                        ;;
                    "Tcpdump")
                        echo "Install Tcpdump..."
                        # Tambah perintah install Tcpdump
                        break
                        ;;
                    "Aircrack-ng")
                        echo "Install Aircrack-ng..."
                        # Tambah perintah install Aircrack-ng
                        break
                        ;;
                    "Back")
                        break
                        ;;
                    "Exit")
                        echo "Keluar dari script. Sampai jumpa, King!"
                        exit
                        ;;
                    *)
                        echo "Pilihan gak valid, coba lagi!"
                        ;;
                esac
            done
            break
            ;;
        "Exit")
            echo "Keluar dari script. Sampai jumpa, King!"
            exit
            ;;
        *)
            echo "Pilihan gak valid, coba lagi!"
            ;;
    esac
done


                                                    


