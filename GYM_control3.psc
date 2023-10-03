Algoritmo GYM_control
	// Definimos variables
	Definir edad, clase_baile, clase_rocodromo, clase_crossfit, clase_deporte, clase_tradicional, tipo_de_clase Como Entero
	Definir total_alumnos_por_clase, total_recaudado, total_socios Como Entero
	Definir sexo Como Cadena
	// Inicializamos contadores, acomuladores y precios de las clases
	contador_edad <- 0
	contador_socio_mujer <- 0
	contador_socio_hombre <- 0
	contador_clase_baile <- 0
	contador_clase_rocodromo <- 0
	contador_clase_crossfit <- 0
	contador_clase_deporte <- 0
	contador_clase_tradicional <- 0
	total_alumnos_por_clase <- 0
	total_socios <- 0
	total_recaudado <- 0
	precio_de_baile <- 100
	precio_de_rocodromo <- 120
	precio_de_crossfit <- 140
	precio_de_deporte <- 160
	precio_de_tradicional <- 180
	// ciclo para ingresar socios
	Repetir
		// Menú de opciones
		Escribir "Menú de Opciones"
		Escribir "(1) Registrar Socio"
		Escribir "(2) Consultar"
		Escribir "(3) Salir"
		Leer i
		Si i=1 Entonces
			Escribir "Ingrese edad:" // Opción para registrar un socio
			Leer edad
			Escribir "Ingrese sexo (H)Hombre (M)Mujer:"
			Leer sexo
			Escribir "Ingrese a la Clase que quieres entrar"
			Escribir "(1)Clase de Baile. Costo $100 pesos."
			Escribir "(2)Clase de Rocodromo. Costo $120 pesos."
			Escribir "(3)Clase de Crossfit. Costo $140 pesos."
			Escribir "(4)Clase de Deportiva. Costo $160 pesos."
			Escribir "(5)Clase de Gimnacio Tradicional. Costo $180 pesos."
			Escribir "Ingresa un solo el número:"
			Leer tipo_de_clase
			Escribir "(1)enero"
			Escribir "(2)febrero"
			Escribir "(3)marzo"
			Escribir "(4)abril"
			Escribir "(5)mayo"
			Escribir "(6)junio"
			Escribir "(7)julio"
			Escribir "(8)agosto"
			Escribir "(9)septiembre"
			Escribir "(10)octubre"
			Escribir "(11)noviembre"
			Escribir "(12)diciembre"
			Leer mes_inscrito
			// Validaciones para contadores
			total_socios <- total_socios+1
			Si (edad>17) Y (edad<70) Entonces
				contador_edad <- contador_edad+1
			FinSi
			Si sexo='M' O sexo='m' O sexo='mujer' O sexo='Mujer' O sexo='MUJER' Entonces
				contador_socio_mujer <- contador_socio_mujer+1
			SiNo
				contador_socio_hombre <- contador_socio_hombre+1
			FinSi
			Si tipo_de_clase=1 Entonces
				contador_clase_baile <- contador_clase_baile+1 // Si el tipo de clase es baile hacer
				Si mes_inscrito='8' O mes_incrito='9' O mes_inscrito='10' Entonces
					total_recaudado <- total_recaudado+precio_de_baile
				FinSi
			SiNo
				Si tipo_de_clase=2 Entonces
					contador_clase_rocodromo <- contador_clase_rocodromo+1 // Si el tipo de clase es rocodromo hacer
					Si mes_inscrito='8' O mes_incrito='9' O mes_inscrito='10' Entonces
						total_recaudado <- total_recaudado+precio_de_rocodromo
					FinSi
				SiNo
					Si tipo_de_clase=3 Entonces
						contador_clase_crossfit <- contador_clase_crossfit+1 // Si el tipo de clase es crossfit hacer
						Si mes_inscrito='8' O mes_incrito='9' O mes_inscrito='10' Entonces
							total_recaudado <- total_recaudado+precio_de_crossfit
						FinSi
					SiNo
						Si tipo_de_clase=4 Entonces
							contador_clase_deporte <- contador_clase_deporte+1 // Si el tipo de clase es deporte hacer
							Si mes_inscrito='8' O mes_incrito='9' O mes_inscrito='10' Entonces
								total_recaudado <- total_recaudado+precio_de_deportes
							FinSi
						SiNo
							Si tipo_de_clase=5 Entonces
								contador_clase_tradicional <- contador_clase_tradicional+1 // Si el tipo de clase es gimnasio tradicional hacer 
								Si mes_inscrito='8' O mes_incrito='9' O mes_inscrito='10' Entonces
									total_recaudado <- total_recaudado+precio_de_tradicional
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		SiNo
			Si i=2 Entonces // menu de consltas
				Escribir "menu de control de clases" // Opción para consultar
				Escribir "(1)Servicios"
				Escribir "(2)Socios"
				Escribir "(3)Consultas"
				Leer resp
				Si resp=1 Entonces // consultar el costo de las clases
					Escribir "El costo de la clase de baile es $100 pesos" // Opción para consultar servicios
					Escribir "El costo de la clase de rocodromo es $120 pesos"
					Escribir "El costo de la clase de Crossfit es $140 pesos"
					Escribir "El costo de la clase de Deportes es $160 pesos"
					Escribir "El costo de la clase de Gimnasio Tradicional es $180 pesos"
					Escribir "-------------------------------------------------------------"
				SiNo
					Si resp=2 Entonces // consultar el regitro de socios
						Escribir "El total de socios es: ", total_socios // Opción para consultar información de socios
						Escribir "El total de socias mujeres es: ", contador_socio_mujer
						Escribir "El total de socios hombre es: ", contador_socio_hombre
						Escribir " -------------------------------------------------------------"
						Escribir "El total de socios registrados a la clase de Baile es de: ", contador_clase_baile
						Escribir "El total de socios registrados a la clase de Rocodromo es de: ", contador_clase_rocodromo
						Escribir "El total de socios registrados a la clase de CrossFit es de: ", contador_clase_crossfit
						Escribir "El total de socios registrados a la clase de Gimnasio Estandar es de : ", contador_clase_tradicional
						Escribir "El total de socios registrados a la clase de Deportes es de: ", contador_clase_deporte
						Escribir "------------------------------------------------------------------------ '
					SiNo
						Si resp=3 Entonces //  consultar el total recaudado de dos meses
							Escribir "El total recaudado por el gimnasio durante 2 meses es de: ", total_recaudado // Opcion para consultar dinero recaudado
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	Hasta Que i=3
	Escribir "Haz salido del programa..."
FinAlgoritmo
