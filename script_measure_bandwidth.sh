#!/bin/bash

# Script verificador de taxa de transferência
# Desenvolvido por Roger Príncipe (rprincip@redhat.com)

# Coleta a lista de interfaces da máquina
INTERFACES=$(nmcli --get-values device device status | grep -vw lo)

# Itera na lista de interfaces, calculando a taxa de transferência de cada uma
for INTERFACE in $INTERFACES; do

	# Calculo de bytes recebidos em 1 segundo
	RECEBIDOS1=$(grep $INTERFACE /proc/net/dev | awk '{print $2}')
	sleep 1
	RECEBIDOS2=$(grep $INTERFACE /proc/net/dev | awk '{print $2}')
	RECEBIDOS=$(( $RECEBIDOS2 - $RECEBIDOS1 ))

	# Calculo de bytes enviados em 1 segundo
	ENVIADOS1=$(grep $INTERFACE /proc/net/dev | awk '{print $10}')
	sleep 1
	ENVIADOS2=$(grep $INTERFACE /proc/net/dev | awk '{print $10}')
	ENVIADOS=$(( $ENVIADOS2 - $ENVIADOS1 ))

	# Exibição da taxa de transferência aproximada
	echo -e "Interface $INTERFACE:\nTX: $(( $ENVIADOS/1000000 )) mbps\nRX: $(( $RECEBIDOS/1000000 )) mbps"
	echo
	done

