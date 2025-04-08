	Algoritmo ahorcado
		Definir palabra, oculta, letra Como Cadena
		Definir intentos, i Como Entero
		palabra <- "motocicleta"
		oculta <- ""
		intentos <- 5
		
		// Inicializar la palabra oculta con guiones bajos
		Para i <- 1 Hasta Longitud(palabra) Hacer
			oculta <- Concatenar(oculta, "_")
		FinPara
		
		Mientras intentos > 0 Y oculta <> palabra Hacer
			Escribir "Palabra: ", oculta
			Escribir "Intentos restantes: ", intentos
			Escribir "Ingrese una letra: "
			Leer letra
			
			// Variable para verificar si la letra fue encontrada
			encontrado <- Falso
			
			// Recorrer la palabra para buscar la letra
			Para i <- 1 Hasta Longitud(palabra) Hacer
				Si Subcadena(palabra, i, i) = letra Entonces
					// Reemplazar la letra en la posición correspondiente
					oculta <- Subcadena(oculta, 1, i-1) + letra + Subcadena(oculta, i+1, Longitud(oculta))
					encontrado <- Verdadero
				FinSi
			FinPara
			
			// Si no se encontró la letra, restar un intento
			Si encontrado = Falso Entonces
				intentos <- intentos - 1
			FinSi
		FinMientras
		
		Si oculta = palabra Entonces
			Escribir "¡Ganaste!"
		Sino
			Escribir "Perdiste. La palabra era: ", palabra
		FinSi
FinAlgoritmo
