#!/bin/bash

echo "CRIANDO DIRETÓRIOS COMPARTILHADOS"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "ADICIONANDO DEPARTAMENTOS"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "ALTERANDO O PROPRIETÁRIO DOS DIRETÓRIOS COMPARTILHADOS"

chown -R root:root /publico
chown -R root:GRP_ADM /adm
chown -R root:GRP_VEN /ven
chown -R root:GRP_SEC /sec

echo "CRIANDO E CONFIGURANDO USUÁRIOS"

useradd carlos -c "Carlos" -m -s /bin/bash -G GRP_ADM

useradd maria -c "Maria" -m -s /bin/bash -G GRP_ADM

useradd joao -c "João" -m -s /bin/bash -G GRP_ADM

useradd debora -c "Débora" -m -s /bin/bash -G GRP_VEN

useradd sebastiana -c "Sebastiana" -m -s /bin/bash -G GRP_VEN

useradd roberto -c "Roberto" -m -s /bin/bash -G GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -G GRP_SEC

useradd amanda -c "Amanda" -m -s /bin/bash -G GRP_SEC

useradd rogerio -c "Rogério" -m -s /bin/bash -G GRP_SEC

echo "CONFIGURANDO PERMISSÕES EM DIRETÓRIOS COMPARTILHADOS"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

### SENHAS DE USUÁRIOS SERÃO CONFIGURADAS À PARTE POR QUESTÕES DE SEGURANÇA!!!
echo "Configurar senhas de usuários manualmente"
