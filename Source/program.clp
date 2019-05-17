; 8===========D
;	NUTRIENTS LIMITS
; 8===========D

(deftemplate vitaminsAmount
	(slot vitA)
	(slot vitB2)
	(slot vitB3)
	(slot vitB6)
	(slot vitB9)
	(slot vitB12)
	(slot vitC)
	(slot VitE)
)

([MinVitMan] of vitaminsAmount
	(vitA 900.0)
	(vitB2 2.4)
	(vitB3 16.0)
	(vitB6 1.7)
	(vitB9 400)
	(vitB12 2.4)
	(vitC 90.0)
	(vitE 15.0)
)

([MinVitWoman] of vitaminsAmount
	(vitA 700)
	(vitB2 0.0)
	(vitB3 14.0)
	(vitB6 1.7)
	(vitB9 400)
	(vitB12 2.4)
	(vitC 75)
	(vitE 15)
)

([MaxVitManWoman] of vitaminsAmount
	(vitA 3000.0)
	(vitB2 999999.0)
	(vitB3 35.0)
	(vitB6 100.0)
	(vitB9 1000.0)
	(vitB12 999999.0)
	(vitC 2000.0)
	(vitE 1000.0)
)

(deftemplate mineralsAmount
	(slot calcium)
	(slot copper)
	(slot magnesium)
	(slot selenium)
	(slot zinc)
)

([MaxMineralMan] of mineralsAmount
	(calcium 1200.0)
	(copper 900.0)
	(magnesium 420.0)
	(selenium 55.0)
	(zinc )
)

([MaxMineralWoman] of mineralsAmount
	(calcium 1200.0)
	(copper 900.0)
	(magnesium 320.0)
	(selenium 55.0)
	(zinc 8.0)
)

([MaxMineralManWoman] of mineralsAmount
	(calcium 2500.0)
	(copper 10000.0)
	(magnesium 700.0)
	(selenium 400.0)
	(zinc 40.0)
)

(deftemplate macronutrientsAmount
	(slot proteinsMult)
	(slot lipidsMult)
	(slot saturatedMult)
	(slot cholesterolMult)
	(slot carbsMult)
)

([macrosAmount] of macronutrientsAmount
	(proteinsMult 1.25)
	(lipidsMult)
	(saturatedMult)
	(cholesterolMult)
	(carbsMult)
)

; 8===========D
;	FUNCTIONS
; 8===========D
(deffunction MAIN::generalQuestion (?question)
	(format t "%s" ?question)
	(bind ?answer (read))
	?answer
)

(deffunction MAIN::numericalQuestion (?question ?min ?max)
	(format t "%s" ?question)
	(bind ?answer (read))
	(while (not(and(>= ?answer ?min)(<= ?answer ?max))) do
		(format t "%s" ?question)
		(bind ?answer (read))
	)
	?answer
)

(deffunction MAIN::choiceQuestion (?question $?values)
    (format t "%s" ?question)
    (bind ?answer (read))
    (while (not (member (lowcase ?answer) ?values)) do
        (format t "%s" ?question)
        (bind ?answer (read))
    )
	(lowcase ?answer)
)
(deffunction MAIN::booleanQuestion (?question)
    (format t "%s" ?question)
    (bind ?answer (read))
    (if (or (eq (lowcase ?answer) si) (eq (lowcase ?answer)s))
		then TRUE
		else FALSE
	)
)
(deffunction MAIN::multipleQuestion(?question)
	(format t "%s" ?question)
	(bind ?answer (readline))
	(bind ?answer (str-explode (lowcase ?answer)))
	?answer
)

; 8===========D
; MAIN
; 8===========D
(defmodule MAIN
    (export ?ALL))

(defrule MAIN::initialRule "initialRule"
    (declare (salience 0))
	(initial-fact)
	=>
	(printout t crlf)
    (printout t "                                                           _          " crlf)  
    (printout t "  /\\/\\   ___ _ __  _   _    __ _  ___ _ __   ___ _ __ __ _| |_ ___  _ __ " crlf)
    (printout t " /    \\ / _ \\ '_ \\| | | |  / _` |/ _ \\ '_ \\ / _ \\ '__/ _` | __/ _ \\| '__|" crlf)
    (printout t "/ /\\/\\ \\  __/ | | | |_| | | (_| |  __/ | | |  __/ | | (_| | || (_) | |   " crlf)
    (printout t "\\/    \\/\\___|_| |_|\\__,_|  \\__, |\\___|_| |_|\\___|_|  \\__,_|\\__\\___/|_|   " crlf)
    (printout t "                           |___/                                         " crlf)
	(printout t crlf)
	(assert (user))	;usuario
	(focus GETUSERINFO)
)

; 8===========D
; QUESTIONS
; 8===========D
(defmodule GETUSERINFO
		(import MAIN ?ALL)
		(export ?ALL)
)

(defrule GETUSERINFO::askGenere "rule to know user's gender"
	(user)
	=>
	(bind ?question (choiceQuestion "¿Cuál es su género biológico? (Mujer Hombre) " (create$ mujer hombre)))
	(switch ?question
		(case M then (assert(gender Man)))
		(case W then (assert(gender Woman)))
	)
)

(defrule GETUSERINFO::askAge "rule to know user's age"
	(user)
	=>
	(bind ?question (numericalQuestion "¿Qué edad tiene? [60,125]: " 60 125))
    (assert(age ?question))
)

(defrule GETUSERINFO::askWeight "rule to know user's weight"
	(user)
	=>
	(bind ?question (numericalQuestion "¿Cuál es su altura (en kilogramos)? [40,300]: " 40 300))
    (assert(weight ?question))
)

(defrule GETUSERINFO::askHeight "rule to know user's height"
	(user)
	=>
	(bind ?question (numericalQuestion "¿Cuál es su altura (en centimetros)? [130,220]: " 130 220))
    (assert(height ?question))
)
(defrule GETUSERINFO::askPhysicalActivity "rule to know user's physical activity"
	(user)
	=>
	(bind ?question (numericalQuestion "¿Con qué frecuencia práctica ejercicio? [Nunca(1), Apenas(2), A veces(3), Frecuentemente(4)]: " 1 4))
	(switch ?question
	;quizás hace falta cambiar el valor asociado
		(case 1 then (assert(activity 0)))
		(case 2 then (assert(activity 1)))
		(case 3 then (assert(activity 2)))
		(case 4 then (assert(activity 3)))
	)
)

(defrule GETUSERINFO::askVeganism "rule to know if user is vegan, vegetarian or normal"
	(user)
	=>
	(if (booleanQuestion "¿Es vegano? (Sí/No) ")
		then 
			(assert(vegan vegan))
		else 
			(if (booleanQuestion "¿Es vegetariano? (Sí/No) ")
				then (assert(vegan vegetarian))
				else (assert(vegan normal))
			)
	)
)
	
(defrule GETUSERINFO::askFoodAllergies "rule to know if user has food allergies, and which"
	(user)
	=>
	(if (booleanQuestion "¿Tiene alguna alergia alimentaria? (Sí/No) ")
		then 
			(bind ?question (multipleQuestion "Escriba los alimentos los cuales tiene alergia (en singular, separatdos por espacios: "))
			(assert(allergy ?question))
	)
)

(defrule GETUSERINFO::askDiseases "rule to know if user has diseas that can affect the diet"
    (declare (salience 9))
	(user)
	=>
	(if (booleanQuestion "Tiene algún transtorno/enfermedad que pueda afectar a su dieta? (Sí/No) ")
		then 
   			(printout t "[1] Disfagia" crlf
				 		"[2] hiperlipidemia" crlf
    			 		"[3] hipertrigliceridemia" crlf
    					"[4] Lipoproteína de alta densidad" crlf
    					"[5] Cardiopatía isquémica" crlf
    					"[6] Hipertensión arterial" crlf
    					"[7] Diabetes" crlf
    					"[8] Osteoporosis" crlf
    					"[9] Articulaciones inflamatorias" crlf
    					"[10] Hiperuricemia de gota" crlf)
			(bind ?position (multipleQuestion "Escriba los números asociados a los transtornos/enfermedades que tiene (separados por espacios): "))
 			(bind ?list (create$ dysphagia hyperlipidemia hypertriglyceridemia highDensityLipoprotein 
			 				ischemicCardiopathy arterialHypertension diabetes osteoporosis inflammatoryJoints goutHyperuricemia))
			(bind ?diseases (create$))
			(loop-for-count(?i 1 (length$ ?position)) do
				(bind ?number (nth$ ?i ?position))
				(bind ?disease (nth$ ?number ?list))
				(bind ?diseases (insert$ ?diseases 1 ?disease ))
			)
			(assert(disease ?diseases))
		)
)

;
; TEST
;
(defrule test
    (allergy ?g) 
    => 
    (printout t ?g)
)

(defrule test2
    (disease $?r) 
    => 
    (loop-for-count (?i 1 (length$ ?r)) do
		(bind ?aux (nth$ ?i ?r))
		(printout t ?aux crlf)
	)
)

(defrule prueba
    ?genere <- (gender "K")
    =>
    (printout t "olakase")
)

   


 
; Usar make-instance para ir creando el menu definitivo

; Consultar un slot (send <VARIABLE> get-<NOM_ATRIBUT>)
; Asignar valor a slot (send ?instancia put-nom "nom")

; Acceder instancia si sabemos nombre (bind ?altura_rect1 (send [rect1] get-altura))
