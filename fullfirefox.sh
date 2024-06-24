#!/bin/bash

# Função para verificar o estado de tela cheia do Firefox
check_fullscreen() {
    # Executa i3-msg para obter o estado atual de tela cheia do Firefox
    i3-msg -t get_tree | grep -q '"class":"Firefox","fullscreen_mode":1'
    return $?
}

# Script para manter o Firefox sempre em modo de tela cheia
while true; do
    if ! check_fullscreen; then
        # Se não está em tela cheia, ativa o modo de tela cheia
        i3-msg '[class="Firefox"] fullscreen enable'
        echo "$(date): Ativando modo de tela cheia do Firefox."
    fi

    sleep 60  # Pausa por 60 segundos (1 minuto)
done
