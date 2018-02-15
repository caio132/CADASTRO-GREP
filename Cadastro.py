#!/usr/bin/python
#-*- coding: utf8 -*-

import os
import re
os.system("clear")

NAME = raw_input("Nome :")
os.system("clear")

EMAIL = raw_input("E-Mail :")
os.system("clear")

PHONE = raw_input("Telefone :")
os.system("clear")

RG = raw_input("RG :")
os.system("clear")

CPF = raw_input("CPF :")
os.system("clear")

IP = raw_input("IP :")
os.system("clear")

MASK = raw_input("Mascara :")
os.system("clear")

NOME = re.findall(r'([A-Z|a-z]{1,}\ [A-Z|a-z]{1,}|[A-Z|a-z]{1,})', NAME)

if NOME:
        print(NOME)
        os.system("clear")

else:
        print("Nome invalido")
        os.system("sleep 2")
        exit

MAIL = re.findall(r'^.{1,}@(hotmail|gmail|outlook)\.(com|com.br|br)', EMAIL)

if MAIL:
        print(MAIL)
else:
        print("E-Mail invalido")
