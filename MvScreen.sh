#!/bin/bash

	cd ~/Imágenes
	
	if [ -f ./Captura\ de\ pantalla\ * ]; then
	
		mv ~/Imágenes/Captura\ de\ pantalla\ * ./Capturas\ de\ pantalla/
		echo "Imágenes movidas con éxito."
		
	else
	
		echo "Imposible encontrar capturas de pantalla en ~/Imágenes."
		
	fi
