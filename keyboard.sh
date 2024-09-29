#!/bin/sh

# Script para configurar el teclado en NetBSD

set_keyboard_layout() {
    case $1 in
        1)
            echo "Configurando el teclado a Latinoamericano..."
            wsconsctl -w encoding=es
            echo "encoding=es" >> /etc/wscons.conf
            ;;
        2)
            echo "Configurando el teclado a Estadounidense US..."
            wsconsctl -w encoding=us
            echo "encoding=us" >> /etc/wscons.conf
            ;;
        *)
            echo "Opción inválida. Saliendo..."
            exit 1
            ;;
    esac

    echo "La configuración se ha aplicado. Reinicia el sistema para que los cambios surtan efecto."
}

# Menú
echo "Por favor elige el layout de teclado:"
echo "1) Latinoamericano"
echo "2) Estadounidense US"
echo -n "Ingresa tu elección (1 o 2): "
read choice

# Aplicar la elección
set_keyboard_layout $choice
