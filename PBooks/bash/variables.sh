#!/bin/bash

# Definindo uma variavel.
#+++++++++++++++++++++++
# Define a variable

# Regras de nomeação de variável
#  > Variáveis podem começar com caracteres alfanuméricos ou sobrelinha "_", seguido por uma letra, número ou sobrelinha.
#  > Variáveis são "caixa-sensível", logo "gfg" e "Gfg" são duas variáveis diferentes.
#  > Variáveis não podem começar com número.
#  > Não use carácteres especiais enquanto define o nome de uma variável.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Rules of naming variable:
#  > Variables can begin with an alphanumeric character or underscore, followed by a letter, number, or underscore.
#  > Variables are case sensitive, so “gfg” and “Gfg” are two different variables.
#  > Variables cannot start with a number.
#  > Do not use special characters while defining a variable name.


# Para defini-las, apenas ponha um nome com '=' seguido de seu valor. *(Espaços não são permitidos, se for necessário, use aspas duplas '""' ou barra de escape '\').
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# To define them, just put a name whith '=' followed by your value. *(Space is not recognized, case it's necessary, use double quotes '""' or backslash '\').

myvar=Thino
echo "myvar: $myvar"

# Para passar uma ariavel como argumento use o sinal '$'
#++++++++++++++++++++++++++++++++++++++++++++
# to pass an variable as argumente use '$' sign
#  newvar = "myvar"
newvar=myvar
echo "newvar: $newvar"
#  newvar = "Thino"
newvar=$myvar
echo -e "newvar: ${newvar}\n"

# Você pode usar os commandos declare, local, let, set, export para declarar variaveis
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# you can use declare, local, let, set, export to declare variables
# --------------------------------------------------#
# declare definirá uma variável global para a atual sessião/função
# Uma variável bash 'declarada' pode ser acessada por funções filhas, mas não por funções pais
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
# declare will define a variable global for actual session/function
# A declared bash variable can be accessed by your children functions but not by your father function
ecoa1()
{
	declare child=CHILDREN
	echo "father in ecoa: $father"
	echo -e "child in ecoa: $child \n"
}

declare father=FATHER
echo "father in main session: $father"
echo -e "child pre-call in main session: ${child}\n"
ecoa1
echo -e "child pos-call in main session: ${child}\n"

# você pode usar as flags '-g' para torna-la completamente global ou '-i' para declara-la com propriedades "inteiras" (veja declare --help ou man declare).
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#you can use '-g' flag to turn declaration global or '-i' t turn integer (see declare --help or man declare).

# --------------------------------------------------------------------#
# local definirá uma variável localmente em uma função (você não pode usa-la em uma sessão).
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# local will define a variable locally in a function (you can't use it in a session).

# Para simular uma "variavel local" em uma sessão, você deve declara-la depois de chamar a função.
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# To simulate a "local variable" in a session, you've declare it after calling a function.

ecoa2()
{
	local child2=CHILDREN
	echo "child2 in ecoa 2: $child2"
	echo -e "father2 in ecoa2: ${father2}"
}

# Error porque essa area é uma sessão e não função
#++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Error because this area it's a session and not a function
# local father2=FATHER

echo -e "child2 pre-call in main session: ${child2}\n"
ecoa2
father2=FATHER
echo "father2 in main session: $father2"
echo -e "child2 pos-call in main session: ${child2}\n"

# let
#++++
# let



# export
#+++++++++
# export

# set
#++++
# set


