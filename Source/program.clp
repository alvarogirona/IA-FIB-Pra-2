;fibra recomendada es 25
; (assert fiberAmount 25.0)

; 8===========D
;	FUNCTIONS
; 8===========D
(deffunction MAIN::generalQuestion (?question)
	(printout t ?question)
	(bind ?answer (read))
	?answer
)

(deffunction MAIN::numericalQuestion (?question ?min ?max)
	(printout t ?question)
	(bind ?answer (read))
	(while (not(and(>= ?answer ?min)(<= ?answer ?max))) do
		(printout t ?question)
		(bind ?answer (read))
	)
	?answer
)

(deffunction MAIN::choiceQuestion (?question $?values)
    (printout t ?question)
    (bind ?answer (read))
    (while (not (member (lowcase ?answer) ?values)) do
        (printout t ?question)
        (bind ?answer (read))
    )
	(lowcase ?answer)
)

(deffunction MAIN::booleanQuestion (?question)
    (printout t ?question)
    (bind ?answer (read))
    (if (or (eq (lowcase ?answer) si) (eq (lowcase ?answer)s))
		then TRUE
		else FALSE
	)
)

(deffunction MAIN::multipleQuestion(?question)
	(printout t ?question)
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
	(initial-fact)
	=>
	(printout t crlf)
    (printout t "   ______                               __                  __                                       " crlf)
    (printout t "  / ____/__  ____  ___  _________ _____/ /___  _____   ____/ /__     ____ ___  ___  ____  __  _______" crlf)
    (printout t " / / __/ _ \\/ __ \\/ _ \\/ ___/ __ `/ __  / __ \\/ ___/  / __  / _ \\   / __ `__ \\/ _ \\/ __ \\/ / / / ___/" crlf)
    (printout t "/ /_/ /  __/ / / /  __/ /  / /_/ / /_/ / /_/ / /     / /_/ /  __/  / / / / / /  __/ / / / /_/ (__  ) " crlf)
    (printout t "\\____/\\___/_/ /_/\\___/_/   \\__,_/\\__,_/\\____/_/      \\__,_/\\___/  /_/ /_/ /_/\\___/_/ /_/\\__,_/____/  " crlf)
	(printout t crlf)
	(printout t "Este programa genera un menú semanal para personas de edad avanzada."crlf)
	;(assert (debug))
	(focus GETUSERINFO)
)
                                                                                                 
; 8===========D
; QUESTIONS
; 8===========D
(defmodule GETUSERINFO
		(import MAIN ?ALL)
		(export ?ALL)
)

(defrule GETUSERINFO::askGender "rule to know user's gender"
	=>
	(bind ?question (choiceQuestion "¿Cuál es su género biológico? (Mujer Hombre): " (create$ mujer hombre)))
	(switch ?question
		(case hombre then (assert(gender man)))
		(case mujer then (assert(gender woman)))
	)
)

(defrule GETUSERINFO::askAge "rule to know user's age"
	=>
	(bind ?question (numericalQuestion "¿Qué edad tiene? [60,125]: " 60 125))
    (assert(age ?question))
)

(defrule GETUSERINFO::askWeight "rule to know user's weight"
	=>
	(bind ?question (numericalQuestion "¿Cuál es su peso (en kilogramos)? [40,130]: " 40 130))
    (assert(weight ?question))
)

(defrule GETUSERINFO::askHeight "rule to know user's height"
	=>
	(bind ?question (numericalQuestion "¿Cuál es su altura (en centimetros)? [130,220]: " 130 220))
    (assert(height ?question))
)

(defrule GETUSERINFO::askPhysicalActivity "rule to know user's physical activity"
	=>
	(bind ?question (numericalQuestion "¿Con qué frecuencia práctica ejercicio? ([1]Nunca, [2]Apenas, [3]A veces, [4]Frecuentemente): " 1 4))
	(switch ?question
		(case 1 then (assert(activity 1)))
		(case 2 then (assert(activity 1.3)))
		(case 3 then (assert(activity 1.5)))
		(case 4 then (assert(activity 1.6)))
	)
)

(defrule GETUSERINFO::askVeganism "rule to know if user is vegan, vegetarian or normal"
	=>
	(if (booleanQuestion "¿Es vegano? (Sí/No): ")
		then 
			(assert(dietType vegan))
		else 
			(if (booleanQuestion "¿Es vegetariano? (Sí/No): ")
				then (assert(dietType vegetarian))
			)
	)
)

(defrule GETUSERINFO::askFood "rule to know if which food the user dislikes, and which"
	=>
	(if (booleanQuestion "¿Le disgusta algún alimento? (Sí/No): ")
		then 
			(bind ?question (multipleQuestion "¿Qué alimentos le disgustan? (en singular, separados por espacios): "))
			(assert(fooddislike ?question))
	)
)
	
(defrule GETUSERINFO::askFoodAllergies "rule to know if user has food allergies/intolerances, and which"
	=>
	(if (booleanQuestion "¿Tiene alguna alergia/intolerancia alimentaria? (Sí/No): ")
		then 
			(bind ?question (multipleQuestion "Escriba los alimentos los cuales tiene alergia/intolerancia (en singular, separados por espacios): "))
			(assert(allergy ?question))
	)
)

(defrule GETUSERINFO::askDiseases "rule to know if user has diseas that can affect the diet"
 	(declare (salience -1))	
	=>
	(if (booleanQuestion "Tiene algún transtorno/enfermedad que pueda afectar a su dieta? (Sí/No): ")
		then 
   			(printout t "[1] Disfagia" crlf
				 		"[2] Hiperlipidemia" crlf
    			 		"[3] Hipertrigliceridemia" crlf
    					"[4] Lipoproteína de alta densidad" crlf
    					"[5] Cardiopatía isquémica" crlf
    					"[6] Hipertensión arterial" crlf
    					"[7] Diabetes" crlf
    					"[8] Osteoporosis" crlf
    					"[9] Articulaciones inflamatorias" crlf)
			(bind ?position (multipleQuestion "Escriba los números asociados a los transtornos/enfermedades que tiene (separados por espacios): "))
 			(bind ?list (create$ dysphagia hyperlipidemia hypertriglyceridemia highDensityLipoprotein 
			 				ischemicCardiopathy arterialHypertension diabetes osteoporosis inflammatoryJoints))
			(loop-for-count(?i 1 (length$ ?position)) do
				(bind ?number (nth$ ?i ?position))
				(bind ?disease (nth$ ?number ?list))
				(assert(disease ?disease))		
			)
		)
	(focus RESTRICTIONS)	
	(facts)
)

; 8===========D
; GENERATOR
; 8===========D

;https://www.csie.ntu.edu.tw/~sylee/courses/clips/module.htm
                           
(defmodule RESTRICTIONS
		(import MAIN ?ALL)
		(import GETUSERINFO ?ALL)
		(export ?ALL)
)

(defrule RESTRICTIONS::generateRecommendedCalories "Rule to define the recommended value of daily calories "
	(gender ?gender)
	(age ?age)
	(weight ?weight)
	(height ?height)
	(activity ?activity)
	=>
	(bind ?factor)
	(if (eq ?gender woman)
		then 
			(bind ?factor (+ 655.1 (-(+(* 9.6 ?weight) (* 1.85 ?height)) (* 4.68 ?age))))
		else
			(bind ?factor (+ 66.47 (-(+(* 13.75 ?weight) (* 5 ?height))(* 6.76 ?age))))
	)		
	(bind ?calories (+ (div ?factor 9 )(* ?factor ?activity)))
	(assert (recommendedCalories ?calories))
)

(defrule RESTRICTIONS::rangeVitamines "Rule to define the range of vitamin intake"
	(gender ?gender)
	=>
	(if (eq ?gender woman)
		then
			(assert(vitaminsAmount (name vitaminMin) (vitA 900.0) (vitB2 2.4) (vitB3 16.0) (vitB6 1.7) (vitB9 400) (vitB12 2.4) (vitC 90.0) (vitE 15.0)))
		else 
			(assert(vitaminsAmount (name vitaminMin) (vitA 700) (vitB2 1.1) (vitB3 14.0) (vitB6 1.7) (vitB9 400) (vitB12 2.4) (vitC 75.0) (vitE 15.0)))
	)
	(assert(vitaminsAmount (name vitaminMax) (vitA 3000.0) (vitB2 999999.0) (vitB3 35.0) (vitB6 100.0) (vitB9 1000.0) (vitB12 999999.0) (vitC 2000.0) (vitE 1000.0)))		
)
(defrule RESTRICTIONS::rangeMinerals "Rule to define the range of vitamin intake"
	(gender ?gender)
	=>
	(if (eq ?gender woman)
		then
			(assert(mineralsAmount (name vitaminMin) (calcium 1200.0) (copper 900.0) (magnesium 320.0) (selenium 55.0) (sodium 2.3) (zinc 8.0)))
		else 
			(assert(mineralsAmount (name vitaminMin) (calcium 1200.0) (copper 900.0) (magnesium 420.0)(selenium 55.0)(sodium 2.3) (zinc 11.0)))
	)
	(assert(mineralsAmount (name vitaminMax) (calcium 2500.0) (copper 10000.0) (magnesium 700.0) (selenium 400.0) (sodium 2.8) (zinc 40.0)))		
)
(defrule RESTRICTIONS::limitMacroNutrients "Rule to define the range of mineral intake"
	(recommendedCalories ?recommendedCalories)
	(weight ?weight)
	=>
	(bind ?lipidsFactor (* ?recommendedCalories  0.325))
	(assert(macronutrientsAmount(name macrosAmount) (proteins (* ?weight 1.25)) (saturated (div (* ?recommendedCalories 0.1) 14)) (cholesterolMax 300) (carbs (* ?recommendedCalories 0.5))))
)

(defrule RESTRICTIONS::hyperlipidemia "Rule to modifiy some nutrients if hyperlipidemia disease is present"
	(activity ?activity)
	?hyperlipidemia <- (disease hyperlipidemia)
	?macronutrientsAmount <- (macronutrientsAmount)
	=>
	(modify ?macronutrientsAmount (cholesterolMax (* 150 ?activity)))
	(retract ?hyperlipidemia)
)

;https://stackoverflow.com/questions/45673459/how-to-get-the-objects-in-clips-in-order-on-lhs-side-based-on-a-particular-slot

;(macronutrientsAmount 
;
; Outputa cosasdwd

(defrule output "Output de algunas cosas"
	(recommendedCalories ?value)
	=>
	(printout t "Calorias recomendadas: "?value crlf)
)

(defrule output "Output de algunas cosas"
	(recommendedCalories ?value)
	=>
	(printout t "Calorias recomendadas: "?value crlf)
)
(defrule test2
    (diseasess $?r) 
    => 
    (loop-for-count (?i 1 (length$ ?r)) do
		(bind ?aux (nth$ ?i ?r))
		(printout t ?aux crlf)
	)
)


 
; Usar make-instance para ir creando el menu definitivo

; Consultar un slot (send <VARIABLE> get-<NOM_ATRIBUT>)
; Asignar valor a slot (send ?instancia put-nom "nom")

; Acceder instancia si sabemos nombre (bind ?altura_rect1 (send [rect1] get-altura))
