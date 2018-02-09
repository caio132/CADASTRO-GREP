#!bin/bash 

read -p "Digite seu nome: " NAME
echo $NAME | grep  -E '^([[:alpha:]]|[[:space:]])'
    if [[$? = 0]]; then
        clear
        echo "Login Correto"
        else
        echo "Login Incorreto"
    fi
read -p "Email: " MAIL
echo  MAIL | grep -E '^.{1,}@(hotmail|outlook|gmail)/.(com|br|com.br)'
    if [[$? = 0 ]]; then 
        echo "Email Correto"
        else
        echo "Email Incorreto"
    fi
 read -p "Telefone: " FONE
 echo FONE | grep -E '^\([0-9]{2}\)[0-9]{5}-[0-9]{4}'
       if [[$? = 0 ]]; then 
        echo "Telefone Correto"
        else
        echo "Telefone Incorreto"
    fi
read -p "RG: " RG
echo RG | gre -E '^[0-9]{2}(\.[0-9]{3}){2}-[0-9]' 
   if [[$? = 0 ]]; then 
        echo "RG Correto"
        else
        echo "RG Incorreto"
    fi
    read -p "CPF: " CPF
echo CPF | gre -E '^[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}' 
   if [[$? = 0 ]]; then 
        echo "CPF Correto"
        else
        echo "CPF Incorreto"
    fi
    read -p "IP: " IP
echo IP | gre -E '^[0-9]{2,3}\.[0-9]{2,3}\.[0-9]{2,3}\.[0-9]{2,3}' 
   if [[$? = 0 ]]; then 
        echo "IP Correto"
        else
        echo "IP Incorreto"
    fi
    read -p "Mascara:  " MASK
echo MASK | gre -E '^[0-9]{3}\.[0-9]{3}\.[0-9]{3}\.[0-9]{3}' 
   if [[$? = 0 ]]; then 
        echo "Mascara Correto"
        else
        echo "Mascara Incorreto"
    fi
