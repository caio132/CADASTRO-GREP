#!/usr/bin/bash 

echo        "Cadastro de pessoas"
sleep 2
clear
read -p "Digite seu nome: " NAME
echo $NAME | grep  -E '^([a-z|A-Z]{1,}\ [a-z|A-Z]{1,}|[a-z|A-Z]{1,}){1,}$';
    if [[  $? -eq 0  ]]; then
        echo "Nome Correto"
        else
        echo "Nome Incorreto"
        
    fi

read -p "Data de Nascimento: " DATA
echo $DATA | grep -E '^[0-9]{2}/[0-9]{2}/[0-9]{2,4}$'
    if [[ $? -eq 0 ]]; then
        echo "Data de Nascimento Correto"
        else 
        echo "Data de Nascimento Incorreto"
    fi

 read -p "Email: " MAIL
echo $MAIL | grep  -E '^.{1,}@([a-z|A-Z]{1,})\.(com|com.br|br)$';
    if [[  $? -eq 0  ]]; then
        echo "Email Correto"
        else
        echo "Email Incorreto"
        
    fi
 
read -p "Celular: " FONE 
echo $FONE | grep  -E '^\([0-9]{2}\)[0-9]{5}-[0-9]{4}$';
    if [[  $? -eq 0  ]]; then
        echo "Telefone Correto"
        else
        echo "Telefone Incorreto"
                
    fi
 
read -p "RG: " GR
echo $GR | grep  -E '^[0-9]{2}(\.[0-9]{3}){2}-[0-9]$';
    if [[  $? -eq 0  ]]; then
        echo "RG Correto"
        else
        echo "RG Incorreto"
        
    fi
 
read -p "CPF: " PFC
echo $PFC | grep  -E '^([0-9]{3}\.){2}[0-9]{3}-[0-9]{2}$';
    if [[  $? -eq 0  ]]; then
        echo "CPF Correto"
        else
        echo "CPF Incorreto"
        
    fi
    
read -p "IP: " PI
echo $PI | grep  -E '^([0-254]{1,3}\.){3}[0-254]{1,3}$';
    if [[  $? -eq 0  ]]; then
        echo "IP Correto"
        else
        echo "IP Incorreto"
        
    fi
    
read -p "MASCARA: " MASC
echo $MASC | grep  -E '^([0-255]{1,3}\.){3}[0-255]{1,3}$';
    if [[  $? -eq 0  ]]; then
        echo "Mascara Correto"
        else
        echo "Mascara Incorreto"
        
    fi

echo    "Seus dados foram enviados, faça a correção dos erros !"
sleep 2
clear
