#!/usr/bin/python
#-*- coding: utf8 -*-]
import os, re


def LimpaTela():
    os.system('cls||clear')

try:
    LimpaTela()

    nome = input('Nome: ')
    
    if re.findall('[!@#$%&*1234567890()]$', nome):
        print('Nome Incorreto, Tente Novamente!')
    else:
        print('Nome Correto')

    mail = input('Email: ')
    if re.findall(r'^.{1,}@([A-Z|a-z]{1,})\.(com|com.br|br)$', mail):
        print('Email Correto')
    else:
        print('Email Incorreto, Tente Novamente!')

    data = input('Data de Nascimento: ')
    if re.findall(r'^[0-9]{2}/[0-9]{2}/[0-9]{2,4}$', data):
        print('Data de Nascimento Correto')
    else:
        print('Data de Nascimento Incorreta, Tente Novamente!')

    phone = input('Telefone: ')
    if re.findall(r'^\([0-9]{2}\)[0-9]{5}-[0-9]{4}$', phone):
         print('Telefone Correto')
    else:
        print('Telefone Incorreto, Tente Novamente!')

    rg = input('RG: ')
    if re.findall(r'^[0-9]{1,3}(\.[0-9]{3}){2}-[a-z0-9]{1}$', rg):
        print('RG Correto')
    else:
         print('RG Incorreto, Tente Novamente!')

    cpf = input('CPF: ')
    if re.findall(r'^([0-9]{3}\.){2}[0-9]{3}-[0-9]{2}$', cpf):
        print('Cpf Correto')
    else:
        print('Cpf Incorreto, Tente Novamente!')

    ip  = input('IP: ')
    if re.findall(r'^([0-254]{1,3}\.){3}[0-254]{1,3}$', ip):
        print('IP Correto')
    else:
        print('IP Incorreto, Tente Novamente!')

    mask = input('Mascara: ')
    if re.findall(r'^([0-255]{1,3}\.){3}[0-255]{1,3}$', mask):
         print('Mascara Correto')
    else:
        print('Mascara Incorreta, Tente Novamente!')

except KeyboardInterrupt:
    print()
