#!/bin/bash
clear
echo "BEM VINDO AO SUPER CADASTRO!!"
sleep 2
clear
nome(){
read -p "Digite seu nome: " NOME

        if [ -z $NOME ]; then
                echo "EI, voce não colocou nada :\ " && nome;
        else
                echo $NOME | grep -E "^([[:alpha:]]|[[:space:]]|[[:alpha:]]$)" && echo -e "Válido" &&  data || echo -e "Invalido" && nome
        fi
}
data(){
 read -p "Data de nascimento: " DATA
        if [ -z $DATA ]; then
                echo "Fala mano!" && data ;
        else
                echo $DATA | grep -E [0-3]{1}[0-9]{1}[/][0-1]{1}[0-9]{1}[/][0-9]{4}$ && echo -e "Data Válida" && email || echo -e "tente novamente" && data
        fi
}
email(){
read -p "E o seu e-mail: " EMAIL
        if [ -z $EMAIL ]; then
                echo "Oxe, coloca aí, não vou te hackear não... ;-) " && email ;
        else
                echo $EMAIL | grep -E '^([a-zA-Z0-9_-.])+@[0-9a-zA-Z.-]+\.[a-z]{2,3}' && echo -e "OK" && RGs || echo -e "E-mail invalido" && email;
        fi
}
RGs(){
read -p "informe seu RG, modelo:  00.000.000-0  " RG
        if [ -z $RG ]; then
                echo "RG não declarado" && RGs ;
        else
                echo $RG | grep -E '^[0-9]{1,2}[.]{1}[0-9]{1,3}[.]{1}[0-9]{1,3}[-]{1}[0-9]{1}$' && echo -e "RG válido" && telefone || echo -e "Invalido" && RGs;
        fi
}
telefone(){
echo "Você quer cadatrar Número de Celular ou Fixo?"
read -p "digite '1' para Fixo e '0' para Celular:  " FIXO
while read -p "Qual seu DDD? " DDD
do
        echo $DDD | grep -E '^[0-9]{1,2}$' && echo -e "DDD Válido" && clear && break || echo " Inválido"
done
        if(( $FIXO == 1));then
        echo "OK, Digite seu Número: " && read NUME ;
        echo $NUME | grep -E '^[0-9]{4}[-]{0,1}[0-9]{4}$' && echo -e "Número Validado" && echo \($DDD\)$NUME && cpf || echo -e "Número invalido";
        else
        echo "OK, Modelo do Número: 00000-0000" && read  NUME1 ;
        echo $NUME1 | grep -E '^[0-9]{5}[-]{0,1}[0-9]{4}$' && echo -e "Número Válido" && echo \($DDD\)$NUME1 && cpf || echo -e "Invalido" && telefone
        fi
}
cpf(){
read -p "Informe seu CPF: " CPF
        if [ -z $CPF ]; then
        echo "Nenhum dado informado"  && cpf ;
        else
        echo $CPF | grep -E '^[0-9]{1,3}[.]{0,1}[0-9]{1,3}[.]{0,1}[0-9]{1,3}[-]{1}[0-9]{2}' && echo -e "CPF Válido" && cpf || echo -e "CPF inválido" && cpf ;
        fi
}
nome