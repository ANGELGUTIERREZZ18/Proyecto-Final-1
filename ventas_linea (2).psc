Algoritmo sin_titulo
	definir ropa_hombre, ropa_mujer, ventas_hombres, ventas_mujeres como entero
	definir sexo, clientes_hombre, clientes_mujer Como Caracter
	//contador ropa deportiva hombre
	contador_camisa_compresion<-100
	contador_short_con_licra<-100
	contador_camisa_sin_mangas<-100
	contador_chaqueta_dep<-100
	contador_pantalon_dep<-100
	//contador ropa deportiva mujer
	contador_top<-100
	contador_shortlicra_M<-100
	contador_leggin<-100
	contador_falda<-100
	contador_camisa_depM<-100
	contador_dosp_banda<-100
	//precios ropa hombre
	camisa_compresion<-320
	short_con_licra<-280
	camisa_sin_mangas<-220
	chaqueta<-380
	pantalon_deportivo<-200
	//contador ropa mujer
	top<-250
	short_licra<-210
	leggin<-170
	camisa_dep<-240
	dosp_banda<-160
	//contador del total de ropa de mujer
	totalrm<-0
	totalrh<-0
	//contador del total de clientes
	contador_clientes<-0
	//contador del recaudado de hombres y mujeres ,se inicializan en 0
	recaudado_mujeres<-0
	recaudado_hombres<-0
	//ciclo repetir
	Repetir
		//menu de opciones
		escribir "Menu de opciones"
		escribir "1.-Realizar venta"
		escribir "2.-Mostrar informes"
		escribir "3.-Salir"
		leer i
		//si ingresa la opcion 1 entonces le saldra lo siguiente
		si i = 1 Entonces
			//despues de ingresar la opcion 1 le pedira ingresar su sexo
			escribir "Ingrese sexo"
			leer sexo 
			//linea para saber si ingresa hombre o mujer se va a agregar al total de los clientes
			si sexo = "h" o sexo="m" o sexo="Hombre" o sexo="Mujer" o sexo="mujer" o sexo="hombre" o sexo="H" o sexo="M" o sexo="MUJER" o sexo="HOMBRE"  Entonces
				contador_clientes=contador_clientes+1
			FinSi
			//al hacer la compra le saldra a que linea desea ir si masculina o femenina deportiva
			escribir "A que linea desea ir?"
			escribir "1) ROPA DEPORTIVA MASCULINA"
			Escribir "2) ROPA DEPORTIVA FEMENINA"
			escribir "3) Salir"
			leer opc
			//si escoge opcion 1, le saldra la variedad de los productos deportivos masculinos
			si opc= 1 Entonces
				escribir "ROPA DEPORTIVA MASCULINA:"
				Escribir "1.-Camisa de compresion"
				Escribir "2.-Short con licra"
				Escribir "3.-Camisa sin mangas"
				escribir "4.-Chaqueta deportiva"
				Escribir "5.-Pantalon deportivo"
				escribir "Que producto desea adquirir?"
				leer ropa_hombre	
				si ropa_hombre= 1 Entonces
					contador_camisa_compresion = contador_camisa_compresion-1
					totalrh= totalrh + camisa_compresion
					acum_camisa_compresion= acum_camisa_compresion+1
					si sexo= "h" o sexo= "H" Entonces
						recaudado_hombres<-recaudado_hombres+camisa_compresion
					SiNo
						recaudado_mujeres<-recaudado_mujeres+camisa_compresion
					FinSi
				FinSi
				si ropa_hombre= 2 Entonces
					contador_short_con_licra= contador_short_con_licra-1
					totalrh= totalrh + short_con_licra
					acum_short_con_licra=acum_short_con_licra+1
					si sexo= "h" o sexo= "H" Entonces
						recaudado_hombres<-recaudado_hombres+short_con_licra
					SiNo
						recaudado_mujeres<-recaudado_mujeres+short_con_licra
					FinSi
				FinSi
				si ropa_hombre= 3 entonces 
					contador_camisa_sin_mangas=contador_camisa_sin_mangas-1
					totalrh= totalrh+ camisa_sin_mangas
					acum_camisa_sin_mangas=acum_camisa_sin_mangas+1
					si sexo= "h" o sexo= "H" Entonces
						recaudado_hombres<-recaudado_hombres+camisa_sin_mangas
					SiNo
						recaudado_mujeres<-recaudado_mujeres+camisa_sin_mangas
					FinSi
				FinSi
				si ropa_hombre=4 Entonces
					contador_chaqueta_dep=contador_chaqueta_dep-1
					totalrh = totalrh+ chaqueta
					acum_chaqueta=acum_chaqueta+1
					si sexo= "h" o sexo= "H" Entonces
						recaudado_hombres<-recaudado_hombres+chaqueta
					SiNo
						recaudado_mujeres<-recaudado_mujeres+chaqueta
					FinSi
				FinSi
				si ropa_hombre=5 Entonces
					contador_pantalon_dep=contador_pantalon_dep-1
					totalrh=totalrh+ pantalon_deportivo
					acum_pant_dep=acum_pant_dep+1
					si sexo= "h" o sexo= "H" Entonces
						recaudado_hombres<-recaudado_hombres+pantalon_deportivo
					SiNo
						recaudado_mujeres<-recaudado_mujeres+pantalon_deportivo
					FinSi
				FinSi
				
				
				
				totalh= totalh+totalrh
				
			FinSi
			si opc=2 Entonces
				//si escoge la opcion 2 le saldra la ropa deportiva femenina
				escribir "ROPA DEPORTIVA FEMENINA:"
				Escribir "1.-Tops"
				Escribir "2.-Short de licra"
				Escribir "3.-Leggins"
				Escribir "4.-Camisa deportiva"
				Escribir "5-Dosp Banda"
				Escribir "Que producto desea adquirir? "
				leer ropa_mujer
				si ropa_mujer= 1 Entonces
					contador_top=contador_top-1
					totalrm= totalrm + top
					acum_top=acum_top+1
					si sexo= "h" o sexo= "H" Entonces
						recaudado_hombres<-recaudado_hombres+top
					SiNo
						recaudado_mujeres<-recaudado_mujeres+top
					FinSi
				FinSi
				si ropa_mujer= 2 Entonces
					contador_shortlicra_M=contador_shortlicra_M-1
					acum_shortlicra=acum_shortlicra+1
					totalrm = totalrm + short_licra
					si sexo= "h" o sexo= "H" Entonces
						recaudado_hombres<-recaudado_hombres+short_licra
					SiNo
						recaudado_mujeres<-recaudado_mujeres+short_licra
					FinSi
				FinSi
				si ropa_mujer= 3 entonces 
					acum_leggin=acum_leggin+1
					contador_leggin=contador_leggin-1
					totalrm= totalrm+ leggin
					si sexo= "h" o sexo= "H" Entonces
						recaudado_hombres<-recaudado_hombres+leggin
					SiNo
						recaudado_mujeres<-recaudado_mujeres+leggin
					FinSi
				FinSi
				si ropa_mujer=4 Entonces
					acum_Camisa_DepM=acum_Camisa_DepM+1
					contador_camisa_depM=contador_camisa_depM-1
					totalm = totalrm+ camisa_dep
					si sexo= "h" o sexo= "H" Entonces
						recaudado_hombres<-recaudado_hombres+camisa_dep
					SiNo
						recaudado_mujeres<-recaudado_mujeres+camisa_dep
					FinSi
				FinSi
				si ropa_mujer=5 Entonces
					acum_Dosp=acum_Dosp+1
					contador_dosp_banda=contador_dosp_banda-1
					totalrm=totalrm + dosp_banda
					si sexo= "h" o sexo= "H" Entonces
						recaudado_hombres<-recaudado_hombres+dosp_banda
					SiNo
						recaudado_mujeres<-recaudado_mujeres+dosp_banda
					FinSi
					
				FinSi
				totalm= totalm+totalrm
			FinSi
			recaudado=totalh+totalm
			acum_mujeres<-acum_mujeres+1
		FinSi
		//si en el menu principal desea ver la seccion de mostrar informes, le saldra este mini menu que otra vez que le dira a que area desea ir
		si i= 2 Entonces
			escribir "(1)Cantidad de clientes "
			escribir "(2)Total recaudado por ropa masculina"
			escribir "(3)Total recaudado por ropa femenina"
			Escribir "(4)Total de productos disponibles"
			escribir "(5)Control de ventas por clientes"
			escribir "(6)Total recaudado por clientes por sexo"
			Escribir "(7)Total general recaudado"
			escribir "Que area quieres ver?"
			leer area
			//en esta parte del codigo son las opciones dependiendo cual escoja
			si area = 1 Entonces
				Escribir "La cantidad de clientes que hay son: " contador_clientes
			FinSi
			si area = 2 Entonces
				Escribir "Total recaudado por ropa masculina: " totalh
			FinSi
			si area= 3 Entonces
				Escribir "Total recaudado por ropa femenina: " totalm
			FinSi
			si area=4 Entonces
				escribir "1.-Seccion hombre"
				escribir "Camisas de compresion disponibles: ", contador_camisa_compresion
				escribir "Shorts con licra disponibles: ", contador_short_con_licra
				escribir "Camisas sin mangas disponibles: ", contador_camisa_sin_mangas
				escribir "Chaquetas deportivas disponibles: ", contador_chaqueta_dep
				Escribir "Pantalones deportivas disponibles: ", contador_pantalon_dep
				escribir "----------------------------------------------------------------"
				escribir "2.-Seccion mujer"
				escribir "Tops disponibles: ", contador_top
				Escribir "Shorts de licra disponibles: ", contador_shortlicra_M
				Escribir "Leggins disponibles: ", contador_leggin
				Escribir "Camisas deportivas disponibles: ", contador_camisa_depM
				escribir "Dosp banda disponibles: ", contador_dosp_banda
			FinSi
			si area=5 Entonces
				Escribir "--------------------------------------------------------------"
				escribir "Seccion de hombres"
				Escribir "--------------------------------------------------------------"
				escribir "Se vendieron " acum_camisa_compresion " Camisas de compresion"
				escribir "Se vendieron " acum_short_con_licra " Shorts de licra"
				escribir "Se vendieron " acum_camisa_sin_mangas " Camisas sin mangas"
				escribir "Se vendieron " acum_chaqueta " Chaquetas"
				escribir "Se vendieron " acum_pant_dep " Pantalones deportivos"
				Escribir "--------------------------------------------------------------"
				escribir "Seccion de mujeres"
				Escribir "--------------------------------------------------------------"
				escribir "Se vendieron " acum_top " Tops"
				escribir "Se vendieron " acum_shortlicra " Shorts de licra"
				escribir "Se vendieron " acum_leggin " Leggins"
				escribir "Se vendieron " acum_Camisa_Dep " Camisas deportivas"
				escribir "Se vendieron " acum_dosp " Dosp bandas"
			FinSi
			si area=6 Entonces
				Escribir "Total recaudado por clientes hombres: ", recaudado_hombres
				Escribir "Total recaudado por clientes mujeres: ", recaudado_mujeres
			FinSi
			si area=7 Entonces
				Escribir "Total general recaudado: ", recaudado
				
			FinSi
		FinSi
		
		//el programa termina hasta que seleccionemos la opcion 3 en el menu principal que es la de salir
	Hasta Que i=3
	
FinAlgoritmo

