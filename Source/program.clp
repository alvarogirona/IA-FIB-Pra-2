;                  /######\
;                /##########\
;               /   \###/    \
;              /     \#/      \
;           /\|               |/\
;           | | \ ==\    /== / | |
;            \|  \<|>\  /<|>/  |/     /|
;     \__     |    -   \  -    |     /#|
;      \#\     |        |      |   /###|
;       \##\   |       \|     |  /#####|
;        \###\  |   _______  | /######|
;         \####\ | / \/ \/ \|/#######|
;         |######\|        |#########|
;         |########\______/##########|
;         |#########\    /##########/
;         |##########\  |#########/\
;         /###########\/########/###\
;     /################\######/########\
;    /##################\###/###########\
;   /###################\#/##############\
;  /####################/#################\
; 
; 	 VAMPIRO JOVEN CON LOS OJOS BLANCOS

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
	(if (booleanQuestion "¿Es vegano? (Sí/No): ") then 
			(assert(dietType vegan))
	else 
		(if (booleanQuestion "¿Es vegetariano? (Sí/No): ") then 
			(assert(dietType vegetarian))
		)
	)
)

(defrule GETUSERINFO::askFood "rule to know if which food the user dislikes, and which"
	=>
	(if (booleanQuestion "¿Le disgusta algún alimento? (Sí/No): ") then 
		(bind ?foodDislike (multipleQuestion "¿Qué alimentos le disgustan? (en singular, separados por espacios): "))
		(loop-for-count(?i 1 (length$ ?foodDislike)) do
			(assert (foodDislike (nth$ ?i ?foodDislike)))
		)	
	)
)
	
(defrule GETUSERINFO::askFoodAllergies "rule to know if user has food allergies/intolerances, and which"
	=>
	(if (booleanQuestion "¿Tiene alguna alergia/intolerancia alimentaria? (Sí/No): ") then 
		(bind ?question (multipleQuestion "Escriba los alimentos los cuales tiene alergia/intolerancia (en singular, separados por espacios): "))
		(loop-for-count(?i 1 (length$ ?question)) do
			(assert (allergy (nth$ ?i ?question)))
		)
	)
)

(defrule GETUSERINFO::askDiseases "rule to know if user has diseas that can affect the diet"
 	(declare (salience -1))	
	=>
	(if (booleanQuestion "Tiene algún transtorno/enfermedad que pueda afectar a su dieta? (Sí/No): ") then 
   		(printout t "[1] Disfagia" crlf
			 		"[2] Hiperlipidemia" crlf
    		 		"[3] Hipertrigliceridemia" crlf
    				"[4] Cardiopatía isquémica" crlf
    				"[5] Hipertensión arterial" crlf
    				"[6] Diabetes" crlf
    				"[7] Osteoporosis" crlf
    				"[8] Articulaciones inflamatorias" crlf)
		(bind ?position (multipleQuestion "Escriba los números asociados a los transtornos/enfermedades que tiene (separados por espacios): "))
 		(bind ?list (create$ dysphagia hyperlipidemia hypertriglyceridemia ischemicCardiopathy arterialHypertension diabetes osteoporosis inflammatoryJoints))
		(loop-for-count(?i 1 (length$ ?position)) do
			(bind ?number (nth$ ?i ?position))
			(bind ?disease (nth$ ?number ?list))
			(assert(disease ?disease))		
		)
	)
	(focus RESTRICTIONS)	
	;(facts)
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
	(if (eq ?gender woman) then 
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
	(if (eq ?gender woman)then
		(assert(vitaminsAmount (name vitaminMin) (vitA 900.0) (vitB2 2.4) (vitB3 16.0) (vitB6 1.7) (vitB9 400) (vitB12 2.4) (vitC 90.0) (vitE 15.0)))
	else 
		(assert(vitaminsAmount (name vitaminMin) (vitA 700) (vitB2 1.1) (vitB3 14.0) (vitB6 1.7) (vitB9 400) (vitB12 2.4) (vitC 75.0) (vitE 15.0)))
	)
	(assert(vitaminsAmount (name vitaminMax) (vitA 3000.0) (vitB2 999999.0) (vitB3 35.0) (vitB6 100.0) (vitB9 1000.0) (vitB12 999999.0) (vitC 2000.0) (vitE 1000.0)))
)

(defrule RESTRICTIONS::rangeMinerals "Rule to define the range of vitamin intake"
	(gender ?gender)
	=>
	(if (eq ?gender woman) then
		(assert(mineralsAmount (name mineralMin) (calcium 1200.0) (copper 0.9) (magnesium 320.0) (selenium 55.0) (sodium 2.3) (zinc 8.0) (fiber 27) (iron 8.0) (potassium 3500.0)))
	else 
		(assert(mineralsAmount (name mineralMin) (calcium 1200.0) (copper 0.9) (magnesium 420.0)(selenium 55.0)(sodium 2.3) (zinc 11.0) (fiber 19) (iron 8.0) (potassium 3500.0)))
	)
	(assert(mineralsAmount (name mineralMax) (calcium 2500.0) (copper 10.0) (magnesium 700.0) (selenium 400.0) (sodium 2.8) (zinc 40.0) (fiber 10000.0) (iron 10.0) (potassium 4700.0)))

)

(defrule RESTRICTIONS::limitMacroNutrients "Rule to define the range of mineral intake"
	(recommendedCalories ?recommendedCalories)
	(weight ?weight)
	=>
	(assert(macronutrientsAmount(name macrosAmount) (protein (* ?weight 1.25)) (saturated (div (* ?recommendedCalories 0.1) 14)) (cholesterolMax 300) (carbs (* ?recommendedCalories 0.5))))
)

(defrule RESTRICTIONS::hyperlipidemia "Rule to modify some nutrients if hyperlipidemia disease is present"
	(activity ?activity)
	?hyperlipidemia <- (disease hyperlipidemia)
	?macronutrientsAmount <- (macronutrientsAmount(cholesterolMax ?cholesterolMax))
	=>
	(modify ?macronutrientsAmount (cholesterolMax (*(* 0.5 ?cholesterolMax) ?activity)))
	(retract ?hyperlipidemia)
)

(defrule RESTRICTIONS::hypertriglyceridemia "Rule to modify total income of recommended calories if hypertriglyceridemia is present"
	?hypertriglyceridemia <- (disease hypertriglyceridemia)
	?recommendedCalories <- (recommendedCalories ?value)
	?macronutrientsAmount <- (macronutrientsAmount (saturated ?saturated))
	=>
	(modify ?recommendedCalories (* 0.8 ?value))
	(modify ?macronutrientsAmount (saturated (* 0.85 ?saturated)))
	(retract ?hypertriglyceridemia)
)

(defrule RESTRICTIONS::ischemicCardiopathy "Rule to modify total income of recommended calories if ischemic cardiopathy is present"
	?ischemicCardiopathy <- (disease ischemicCardiopathy)
	?recommendedCalories <- (recommendedCalories ?value)
	?macronutrientsAmount <- (macronutrientsAmount (saturated ?saturated) (cholesterolMax ?cholesterolMax))
	=>
	(modify ?recommendedCalories (* 0.85 ?value))
	(modify ?macronutrientsAmount (saturated (* 0.7 ?saturated))(cholesterolMax (* 0.7 ?cholesterolMax)))
	(retract ?ischemicCardiopathy)
)

(defrule RESTRICTIONS::arterialHypertension "Rule to modify total income of nutrients and minerals if arterial hypertension disease is present"
	?arterialHypertension <- (disease arterialHypertension)
	?mineralsAmountMin <- (mineralsAmount (name mineralMin))
	?mineralsAmountMax <- (mineralsAmount (name mineralMax))
	?macronutrientsAmount <- (macronutrientsAmount (saturated ?saturated))
	=>
	(modify ?macronutrientsAmount (saturated (* 0.8 ?saturated)))
	(modify ?mineralsAmountMin (sodium 1.5))
	(modify ?mineralsAmountMax (sodium 0.7))
	(retract ?arterialHypertension)
)

(defrule RESTRICTIONS::diabetes "Rule to modify total income of recommended nutrients and minerals if diabetes disease is present"
	?diabetes <- (disease diabetes)
	?macronutrientsAmount <- (macronutrientsAmount (cholesterolMax ?cholesterolMax) (saturated ?saturated))
	=>
	(modify ?macronutrientsAmount (cholesterolMax (* 0.7 ?cholesterolMax))(saturated (* 0.7 ?saturated)))
	(retract ?diabetes)
	(assert (dietType diabetes))
)

(defrule RESTRICTIONS::osteoporosis "Rule to modify total income of recommended nutrients and minerals if diabetes disease is present"
	?osteoporosis <- (disease diabetes)
	?mineralsAmountMin <- (mineralsAmount (name mineralMin) (calcium ?calciumMin))
	?mineralsAmountMax <- (mineralsAmount (name mineralMax) (calcium ?calciumMax))
	=>
	(modify ?mineralsAmountMin (calcium (* ?calciumMin 1.2)))
	(modify ?mineralsAmountMax (calcium (* ?calciumMax 1.4)))
	(retract ?osteoporosis)
)

(defrule RESTRICTIONS::dysphagia "rule to create filterDysphagia"
	?dysphagia <- (disease dysphagia)
	=>
	(retract ?dysphagia)
	(assert (dietType dysphagia))
) 

(defrule RESTRICTIONS::inflammatoryJoints "rule to create filterDysphagia"
	?inflammatoryJoints <- (disease inflammatoryJoints)
	=>
	(retract ?inflammatoryJoints)
	(assert (dietType inflammatoryJoints))
)

(defrule RESTRICTIONS::endRestrictions "Rule to go to next module if everything is calculated are left"
 	(declare (salience -1))
	=>
	(focus GENERATOR)
	(printout t "endRestrictions hecho: " crlf)
	;(facts)
)

; 8========D
; GENERATOR
; 8========D

;https://stackoverflow.com/questions/45673459/how-to-get-the-objects-in-clips-in-order-on-lhs-side-based-on-a-particular-slot
;(defmodule MAIN(export ?ALL))
;(defmodule GENERATOR (import MAIN ?ALL)(export ?ALL))

; (clear)

; (load defclasses.clp)
; (load ingredients.clp)
; (load dishes.clp)
(defmodule GENERATOR
		(import MAIN ?ALL)
		(import GETUSERINFO ?ALL)
		(import RESTRICTIONS ?ALL)
		(export ?ALL)
)

(defrule GENERATOR::generateInitialDishesFacts "Rule to generate initial facts "
	?d <- 	(object 	
				(is-a Dish)
				(dishName ?name)
			)
	=>
	(assert (initialDishes 
				(dishName (send ?d get-dishName))
				(dishAttributes (send ?d get-dishAttributes))
				(ingredients (send ?d get-ingredients))
				(ingredientsWeights (send ?d get-ingredientsWeights))
				(category (type ?d))
			)
	)
)

(defrule GENERATOR::filterDiabetes "Rule to filter dishes that are not available for diabetic people"
	?d <- (initialDishes (dishAttributes $?attrs))
	(dietType diabetes)
	(test (member$ "diabetes" ?attrs)) ; The initial dishes with the diabetes attribute will be retracted
	=>
	(retract ?d)
)

(defrule GENERATOR::filterDisphagia "Rule to filter dishes that are not available for people with disphagia"
	?d <- (initialDishes (dishAttributes $?attrs))
	(dietType dysphagia)
	(test (not (member$ "dysphagia" ?attrs))) ; The initial dishes with the diabetes attribute will be retracted
	=>
	(retract ?d)
)

(defrule GENERATOR::filterVegan "Rule to filter dishes that are not available for vegan people"
	?d <- (initialDishes (dishAttributes $?attrs))
	(dietType vegan)
	(test (not (member$ "vegan" ?attrs))) ; The initial dishes with the diabetes attribute will be retracted
	=>
	(retract ?d)
)

(defrule GENERATOR::filterVegetarian "Rule to filter dishes that are not available for people with vegetarian"
	?d <- (initialDishes (dishAttributes $?attrs))
	(dietType vegetarian)
	(test (not (member$ "vegetarian" ?attrs))) ; The initial dishes with the diabetes attribute will be retracted
	=>
	(retract ?d)
)

(defrule GENERATOR::calculateDishStats "Rule to define facts for dish stats (nutrients, calories and so)"
	(declare (salience -1))
	?dish <- (initialDishes (dishName ?name )(ingredients $?ingredients) (ingredientsWeights $?ingredientsWeights))
	=>
	(bind ?auxcalcium 0)
	(bind ?auxcalories 0)
	(bind ?auxcarbohydrates 0)
	(bind ?auxcholesterol 0)
	(bind ?auxcopper 0)
	(bind ?auxfiber 0)
	(bind ?auxiron 0)
	(bind ?auxmagnesium 0)
	(bind ?auxpotassium 0)
	(bind ?auxprotein 0)
	(bind ?auxsaturedFat 0)
	(bind ?auxselenium 0)
	(bind ?auxsodium 0)
	(bind ?auxvitamineA 0)
	(bind ?auxvitamineB12 0)
	(bind ?auxvitamineB2 0)
	(bind ?auxvitamineB3 0)
	(bind ?auxvitamineB6 0)
	(bind ?auxvitamineB9 0)
	(bind ?auxvitamineC  0)
	(bind ?auxvitamineE  0)
	(bind ?auxzinc 0)

	(loop-for-count(?i 1 (length$ ?ingredients)) do
		(bind ?ingredientSymbol (nth$ ?i ?ingredients))
		(bind ?ingredientFactor(/ (nth$ ?i ?ingredientsWeights) 100.0))
		;;
		(bind ?ingredient (symbol-to-instance-name (sym-cat "MAIN::"?ingredientSymbol)))

		(bind ?calcium (* ?ingredientFactor (send ?ingredient get-calcium)))
		(bind ?calories (* ?ingredientFactor (send ?ingredient get-calories)))
		(bind ?carbohydrates (* ?ingredientFactor (send ?ingredient get-carbohydrates)))
		(bind ?cholesterol (* ?ingredientFactor (send ?ingredient get-cholesterol)))
		(bind ?copper (* ?ingredientFactor (send ?ingredient get-copper)))
		(bind ?fiber (* ?ingredientFactor (send ?ingredient get-fiber)))
		(bind ?iron (* ?ingredientFactor (send ?ingredient get-iron)))
		(bind ?magnesium (* ?ingredientFactor (send ?ingredient get-magnesium)))
		(bind ?potassium (* ?ingredientFactor (send ?ingredient get-potassium)))
		(bind ?protein (* ?ingredientFactor (send ?ingredient get-protein)))
		(bind ?saturedFat (* ?ingredientFactor (send ?ingredient get-saturedFat)))
		(bind ?selenium (* ?ingredientFactor (send ?ingredient get-selenium)))
		(bind ?sodium (* ?ingredientFactor (send ?ingredient get-sodium)))
		(bind ?vitamineA (* ?ingredientFactor (send ?ingredient get-vitamineA)))
		(bind ?vitamineB12 (* ?ingredientFactor (send ?ingredient get-vitamineB12)))
		(bind ?vitamineB2 (* ?ingredientFactor (send ?ingredient get-vitamineB2)))
		(bind ?vitamineB3 (* ?ingredientFactor (send ?ingredient get-vitamineB3)))
		(bind ?vitamineB6 (* ?ingredientFactor (send ?ingredient get-vitamineB6)))
		(bind ?vitamineB9 (* ?ingredientFactor (send ?ingredient get-vitamineB9)))
		(bind ?vitamineC (* ?ingredientFactor (send ?ingredient get-vitamineC)))
		(bind ?vitamineE (* ?ingredientFactor (send ?ingredient get-vitamineE)))
		(bind ?zinc (* ?ingredientFactor (send ?ingredient get-zinc)))

		(bind ?auxcalcium (+ ?calcium ?auxcalcium))
		(bind ?auxcalories (+ ?calories ?auxcalories))
		(bind ?auxcarbohydrates (+ ?carbohydrates ?auxcarbohydrates))
		(bind ?auxcholesterol (+ ?cholesterol ?auxcholesterol))
		(bind ?auxcopper (+ ?copper  ?auxcopper))
		(bind ?auxfiber (+ ?fiber  ?auxfiber))
		(bind ?auxiron (+ ?iron  ?auxiron))
		(bind ?auxmagnesium (+ ?magnesium ?auxmagnesium ))
		(bind ?auxpotassium (+ ?potassium ?auxpotassium))
		(bind ?auxprotein (+ ?protein ?auxprotein))
		(bind ?auxsaturedFat (+ ?saturedFat ?auxsaturedFat))
		(bind ?auxselenium (+ ?selenium ?auxselenium))
		(bind ?auxsodium (+ ?sodium  ?auxsodium))
		(bind ?auxvitamineA (+ ?vitamineA ?auxvitamineA))
		(bind ?auxvitamineB12 (+ ?vitamineB12 ?auxvitamineB12))
		(bind ?auxvitamineB2 (+ ?vitamineB2 ?auxvitamineB2))
		(bind ?auxvitamineB3 (+ ?vitamineB3 ?auxvitamineB3))
		(bind ?auxvitamineB6 (+ ?vitamineB6 ?auxvitamineB6))
		(bind ?auxvitamineB9 (+ ?vitamineB9 ?auxvitamineB9))
		(bind ?auxvitamineC  (+ ?vitamineC ?auxvitamineC))
		(bind ?auxvitamineE  (+ ?vitamineE ?auxvitamineE ))
		(bind ?auxzinc (+ ?zinc  ?auxzinc))) 
	(assert(dishStats 
		(name ?name)
		(calories ?auxcalories) 
		(vitA ?auxvitamineA)
		(vitB2 ?auxvitamineB2)
		(vitB3 ?auxvitamineB3)
		(vitB6 ?auxvitamineB6)
		(vitB9 ?auxvitamineB9)
		(vitB12 ?auxvitamineB12)
		(vitC ?auxvitamineC)
		(vitE ?auxvitamineE)
		(protein ?auxprotein)
		(saturated ?auxsaturedFat)
		(cholesterolMax ?auxcholesterol)
		(carbs ?auxcarbohydrates)
		(calcium ?auxcalcium)
		(copper ?auxcopper)
		(magnesium ?auxmagnesium)
		(selenium ?auxselenium)
		(sodium ?auxsodium)
		(zinc ?auxzinc)
		(fiber ?auxfiber)
		(iron ?auxiron)
		(potassium ?auxpotassium)
		))
)
(defrule GENERATOR::completeMenuGenerator "Rule to generate completeMenus (dinner, lunch)"
	(initialDishes (dishName ?first)(category FirstCourse))
	(initialDishes (dishName ?second)(category SecondCourse))
	(initialDishes (dishName ?dessert)(category Dessert))
	(dishStats 
		(name ?first)
		(calories ?firstCalories)
		(vitA ?firstVitA)
		(vitB2 ?firstVitB2)
		(vitB3 ?firstVitB3)
		(vitB6 ?firstVitB6)
		(vitB9 ?firstVitB9)
		(vitB12 ?firstVitB12)
		(vitC ?firstVitC)
		(vitE ?firstVitE)
		(protein ?firstProtein)
		(saturated ?firstSaturate)
		(cholesterolMax ?firstCholesterolMax)
		(carbs ?firstCarbs)
		(calcium ?firstCalcium)
		(copper ?firstCopper)
		(magnesium ?firstMagnesium)
		(selenium ?firstSelenium)
    	(sodium ?firstSodium)
		(zinc ?firstZinc)
		(fiber ?firstFiber)
		(iron ?firstIron)
		(potassium ?firstPotassium))
	(dishStats 
		(name ?second)
		(calories ?secondCalories)
		(vitA ?secondVitA)
		(vitB2 ?secondVitB2)
		(vitB3 ?secondVitB3)
		(vitB6 ?secondVitB6)
		(vitB9 ?secondVitB9)
		(vitB12 ?secondVitB12)
		(vitC ?secondVitC)
		(vitE ?secondVitE)
		(protein ?secondProtein)
		(saturated ?secondSaturate)
		(cholesterolMax ?secondCholesterolMax)
		(carbs ?secondCarbs)
		(calcium ?secondCalcium)
		(copper ?secondCopper)
		(magnesium ?secondMagnesium)
		(selenium ?secondSelenium)
    	(sodium ?secondSodium)
		(zinc ?secondZinc)
		(fiber ?secondFiber)
		(iron ?secondIron)
		(potassium ?secondPotassium))
	(dishStats 
		(name ?dessert)
		(calories ?dessertCalories)
		(vitA ?dessertVitA)
		(vitB2 ?dessertVitB2)
		(vitB3 ?dessertVitB3)
		(vitB6 ?dessertVitB6)
		(vitB9 ?dessertVitB9)
		(vitB12 ?dessertVitB12)
		(vitC ?dessertVitC)
		(vitE ?dessertVitE)
		(protein ?dessertProtein)
		(saturated ?dessertSaturate)
		(cholesterolMax ?dessertCholesterolMax)
		(carbs ?dessertCarbs)
		(calcium ?dessertCalcium)
		(copper ?dessertCopper)
		(magnesium ?dessertMagnesium)
		(selenium ?dessertSelenium)
    	(sodium ?dessertSodium)
		(zinc ?dessertZinc)
		(fiber ?dessertFiber)
		(iron ?dessertIron)
		(potassium ?dessertPotassium))
	=>
	(assert
		(completeMenu 
			(firstName ?first) 
			(secondName ?second) 
			(dessertName ?dessert)
			
			(vitA (+ (+ ?dessertVitA ?firstVitA) ?secondVitA))
			(vitB2 (+ (+ ?dessertVitB2 ?firstVitB2) ?secondVitB2)) 
			(vitB3 (+ (+ ?dessertVitB3 ?firstVitB3) ?secondVitB3))
			(vitB6 (+ (+ ?dessertVitB6 ?firstVitB6) ?secondVitB6))
			(vitB9 (+ (+ ?dessertVitB9 ?firstVitB9) ?secondVitB9))
			(vitB12 (+ (+ ?dessertVitB12 ?firstVitB12) ?secondVitB12))
			(vitC (+ (+ ?dessertVitC ?firstVitC) ?secondVitC))
			(vitE (+ (+ ?dessertVitE ?firstVitE) ?secondVitE))
			(protein (+ (+ ?dessertProtein ?firstProtein) ?secondProtein))
			(saturated (+ (+ ?dessertSaturate ?firstSaturate) ?secondSaturate))
			(cholesterolMax (+ (+ ?dessertCholesterolMax ?firstCholesterolMax) ?secondCholesterolMax))
			(carbs (+ (+ ?dessertCarbs ?firstCarbs) ?secondCarbs))
			(calcium (+ (+ ?dessertCalcium ?firstCalcium) ?secondCalcium))
			(copper (+ (+ ?dessertCopper ?firstCopper) ?secondCopper))
			(magnesium (+ (+ ?dessertMagnesium ?firstMagnesium) ?secondMagnesium))
			(selenium (+ (+ ?dessertSelenium ?firstSelenium) ?secondSelenium ))
			(sodium (+ (+ ?dessertSodium ?firstSodium) ?secondSodium))
			(zinc (+ (+ ?dessertZinc ?firstZinc) ?secondZinc))
			(fiber(+ (+ ?dessertFiber ?firstFiber) ?secondFiber))
			(iron (+ (+ ?dessertIron ?firstIron) ?secondIron))
			(potassium (+ (+ ?dessertPotassium ?firstPotassium) ?secondPotassium))
			(calories (+ (+ ?dessertCalories ?firstCalories) ?secondCalories))

		))
)

(defrule GENERATOR::simpleMenuGenerator "Rule to generate simpleMenus (breakfast)"
	(initialDishes (dishName ?appetizer )(category Appetizer))
	(initialDishes (dishName ?beverage )(category Beverage))
	(dishStats 
		(name ?appetizer)
		(calories ?appetizerCalories)
		(vitA ?appetizerVitA)
		(vitB2 ?appetizerVitB2)
		(vitB3 ?appetizerVitB3)
		(vitB6 ?appetizerVitB6)
		(vitB9 ?appetizerVitB9)
		(vitB12 ?appetizerVitB12)
		(vitC ?appetizerVitC)
		(vitE ?appetizerVitE)
		(protein ?appetizerProtein)
		(saturated ?appetizerSaturate)
		(cholesterolMax ?appetizerCholesterolMax)
		(carbs ?appetizerCarbs)
		(calcium ?appetizerCalcium)
		(copper ?appetizerCopper)
		(magnesium ?appetizerMagnesium)
		(selenium ?appetizerSelenium)
    	(sodium ?appetizerSodium)
		(zinc ?appetizerZinc)
		(fiber ?appetizerFiber)
		(iron ?appetizerIron)
		(potassium ?appetizerPotassium))
	(dishStats 
		(name ?beverage)
		(calories ?beverageCalories)
		(vitA ?beverageVitA)
		(vitB2 ?beverageVitB2)
		(vitB3 ?beverageVitB3)
		(vitB6 ?beverageVitB6)
		(vitB9 ?beverageVitB9)
		(vitB12 ?beverageVitB12)
		(vitC ?beverageVitC)
		(vitE ?beverageVitE)
		(protein ?beverageProtein)
		(saturated ?beverageSaturate)
		(cholesterolMax ?beverageCholesterolMax)
		(carbs ?beverageCarbs)
		(calcium ?beverageCalcium)
		(copper ?beverageCopper)
		(magnesium ?beverageMagnesium)
		(selenium ?beverageSelenium)
    	(sodium ?beverageSodium)
		(zinc ?beverageZinc)
		(fiber ?beverageFiber)
		(iron ?beverageIron)
		(potassium ?beveragePotassium))
	=>
	(assert
		(simpleMenu 
			(appetizerName ?appetizer) 
			(beverageName ?beverage)
			(vitA (+ ?beverageVitA ?appetizerVitA))
			(vitB2 (+ ?beverageVitB2 ?appetizerVitB2)) 
			(vitB3 (+ ?beverageVitB3 ?appetizerVitB3))
			(vitB6 (+ ?beverageVitB6 ?appetizerVitB6))
			(vitB9 (+ ?beverageVitB9 ?appetizerVitB9))
			(vitB12 (+ ?beverageVitB12 ?appetizerVitB12))
			(vitC (+ ?beverageVitC ?appetizerVitC))
			(vitE (+ ?beverageVitE ?appetizerVitE))
			(protein (+ ?beverageProtein ?appetizerProtein))
			(saturated (+ ?beverageSaturate ?appetizerSaturate))
			(cholesterolMax (+ ?beverageCholesterolMax ?appetizerCholesterolMax))
			(carbs (+ ?beverageCarbs ?appetizerCarbs))
			(calcium (+ ?beverageCalcium ?appetizerCalcium))
			(copper (+ ?beverageCopper ?appetizerCopper))
			(magnesium (+ ?beverageMagnesium ?appetizerMagnesium))
			(selenium (+ ?beverageSelenium ?appetizerSelenium ))
			(sodium (+ ?beverageSodium ?appetizerSodium))
			(zinc (+ ?beverageZinc ?appetizerZinc))
			(fiber(+ ?beverageFiber ?appetizerFiber))
			(iron (+ ?beverageIron ?appetizerIron))
			(potassium (+ ?beveragePotassium ?appetizerPotassium))
			(calories (+ ?beverageCalories ?appetizerCalories))

		)
	)
	(assert (generateDaily 1))
)

(defglobal
?*dailyGen* = 0)

(defrule GENERATOR::dailyMenuGenerator "Rule to generate completeMenus (dinner, lunch, dessert)"
	?g <- (generateDaily 1)
	?desayuno <- (simpleMenu 
		(appetizerName ?appetizer)
		(beverageName ?beverage)

		(vitA ?breakfastVitA)
		(vitB2 ?breakfastVitB2)
		(vitB3 ?breakfastVitB3)
		(vitB6 ?breakfastVitB6)
		(vitB9 ?breakfastVitB9)
		(vitB12 ?breakfastVitB12)
		(vitC ?breakfastVitC)
		(vitE ?breakfastVitE)
		(protein ?breakfastProtein)
		(saturated ?breakfastSaturate)
		(cholesterolMax ?breakfastCholesterolMax)
		(carbs ?breakfastCarbs)
		(calcium ?breakfastCalcium)
		(copper ?breakfastCopper)
		(magnesium ?breakfastMagnesium)
		(selenium ?breakfastSelenium)
		(sodium ?breakfastSodium)
		(zinc ?breakfastZinc)
		(fiber ?breakfastFiber)
		(iron ?breakfastIron)
		(potassium ?breakfastPotassium)
		(calories ?breakfastCalories)
	)

	?comida <- (completeMenu 
		(firstName ?firstLunch)
		(secondName ?secondLunch)
		(dessertName ?dessertLunch)

		(vitA ?lunchVitA)
		(vitB2 ?lunchVitB2)
		(vitB3 ?lunchVitB3)
		(vitB6 ?lunchVitB6)
		(vitB9 ?lunchVitB9)
		(vitB12 ?lunchVitB12)
		(vitC ?lunchVitC)
		(vitE ?lunchVitE)
		(protein ?lunchProtein)
		(saturated ?lunchSaturate)
		(cholesterolMax ?lunchCholesterolMax)
		(carbs ?lunchCarbs)
		(calcium ?lunchCalcium)
		(copper ?lunchCopper)
		(magnesium ?lunchMagnesium)
		(selenium ?lunchSelenium)
		(sodium ?lunchSodium)
		(zinc ?lunchZinc)
		(fiber ?lunchFiber)
		(iron ?lunchIron)
		(potassium ?lunchPotassium)
		(calories ?lunchCalories)
		
	)

	?cena <- (completeMenu 
		(firstName ?firstDinner)
		(secondName ?secondDinner)
		(dessertName ?dessertDinner)

		(vitA ?dinnerVitA)
		(vitB2 ?dinnerVitB2)
		(vitB3 ?dinnerVitB3)
		(vitB6 ?dinnerVitB6)
		(vitB9 ?dinnerVitB9)
		(vitB12 ?dinnerVitB12)
		(vitC ?dinnerVitC)
		(vitE ?dinnerVitE)
		(protein ?dinnerProtein)
		(saturated ?dinnerSaturate)
		(cholesterolMax ?dinnerCholesterolMax)
		(carbs ?dinnerCarbs)
		(calcium ?dinnerCalcium)
		(copper ?dinnerCopper)
		(magnesium ?dinnerMagnesium)
		(selenium ?dinnerSelenium)
		(sodium ?dinnerSodium)
		(zinc ?dinnerZinc)
		(fiber ?dinnerFiber)
		(iron ?dinnerIron)
		(potassium ?dinnerPotassium)
		(calories ?dinnerCalories)
	)
	; (test (< ?lunchCalories ?dinnerCalories))

	(test (not(eq ?firstLunch ?firstDinner)))
	(test (not(eq ?secondLunch ?secondDinner)))
	(test (not(eq ?dessertLunch ?dessertDinner)))

	=>
	; (printout t crlf "Estoy trabajando " crlf
	; 	"appetizer: " ?appetizer crlf
	; 	"beverage: "?beverage crlf
	; 	"primer plato comida: "?firstLunch crlf
	; 	"segundo plato comida: "?secondLunch crlf
	; 	"postre comida: "?dessertLunch crlf
	; 	; "primer plato cena: "?firstDinner crlf
	; 	; "secundo plato cena: "?secondDinner crlf
	; 	; "postre cena: "?dessertDinner crlf crlf
	
	; )

	(if (> ?*dailyGen* 100000) then
		(retract ?g)
	)

	(bind ?newDailyGen (+ ?*dailyGen* 1))
	(bind ?*dailyGen* ?newDailyGen)
	
	(assert	(dailyMenu 
		(nameAppetizer ?appetizer)
		(nameBeverage ?beverage)

		(nameFirstLunch  ?firstLunch)
		(nameSecondLunch ?secondLunch)
		(nameDessertLunch ?dessertLunch)

		(nameFirstDinner ?firstDinner)
		(nameSecondDinner ?secondDinner)
		(nameDessertDinner ?dessertDinner)
	
		(vitA (+ (+ ?dinnerVitA ?lunchVitA) ?breakfastVitA))
		(vitB2 (+ (+ ?dinnerVitB2 ?lunchVitB2) ?breakfastVitB2)) 
		(vitB3 (+ (+ ?dinnerVitB3 ?lunchVitB3) ?breakfastVitB3))
		(vitB6 (+ (+ ?dinnerVitB6 ?lunchVitB6) ?breakfastVitB6))
		(vitB9 (+ (+ ?dinnerVitB9 ?lunchVitB9) ?breakfastVitB9))
		(vitB12 (+ (+ ?dinnerVitB12 ?lunchVitB12) ?breakfastVitB12))
		(vitC (+ (+ ?dinnerVitC ?lunchVitC) ?breakfastVitC))
		(vitE (+ (+ ?dinnerVitE ?lunchVitE) ?breakfastVitE))
		(protein (+ (+ ?dinnerProtein ?lunchProtein) ?breakfastProtein))
		(saturated (+ (+ ?dinnerSaturate ?lunchSaturate) ?breakfastSaturate))
		(cholesterolMax (+ (+ ?dinnerCholesterolMax ?lunchCholesterolMax) ?breakfastCholesterolMax))
		(carbs (+ (+ ?dinnerCarbs ?lunchCarbs) ?breakfastCarbs))
		(calcium (+ (+ ?dinnerCalcium ?lunchCalcium) ?breakfastCalcium))
		(copper (+ (+ ?dinnerCopper ?lunchCopper) ?breakfastCopper))
		(magnesium (+ (+ ?dinnerMagnesium ?lunchMagnesium) ?breakfastMagnesium))
		(selenium (+ (+ ?dinnerSelenium ?lunchSelenium) ?breakfastSelenium ))
		(sodium (+ (+ ?dinnerSodium ?lunchSodium) ?breakfastSodium))
		(zinc (+ (+ ?dinnerZinc ?lunchZinc) ?breakfastZinc))
		(fiber (+ (+ ?dinnerFiber ?lunchFiber) ?breakfastFiber))
		(iron (+ (+ ?dinnerIron ?lunchIron) ?breakfastIron))
		(potassium (+ (+ ?dinnerPotassium ?lunchPotassium) ?breakfastPotassium))
		(calories (+ (+ ?dinnerCalories ?lunchCalories) ?breakfastCalories))
		)
	)
)


; VALIDATING THE GENERATED MENUS BEFORE TO THE ONES THAT FULFILL ALL THE RESTRICTIONS
(defrule GENERATOR::filterAmounts "Filter daily menus by calories, macronutrients and vitamins"
	(recommendedCalories ?recommendedCalories)
	(dailyMenu 
		(nameAppetizer ?appetizer)
		(nameBeverage ?beverage)

		(nameFirstLunch  ?firstLunch)
		(nameSecondLunch ?secondLunch)
		(nameDessertLunch ?dessertLunch)

		(nameFirstDinner ?firstDinner)
		(nameSecondDinner ?secondDinner)
		(nameDessertDinner ?dessertDinner)
	
		(vitA ?dailyVitA)
		(vitB2 ?dailyVitB2)
		(vitB3 ?dailyVitB3)
		(vitB6 ?dailyVitB6)
		(vitB9 ?dailyVitB9)
		(vitB12 ?dailyVitB12)
		(vitC ?dailyVitC)
		(vitE ?dailyVitE)
		(protein ?dailyProtein)
		(saturated ?dailySaturated)
		(cholesterolMax ?dailyCholesterolMax)
		(carbs ?dailyCarbs)
		(calcium ?dailyCalcium)
		(copper ?dailyCopper)
		(magnesium ?dailyMagnesium)
		(selenium ?dailySelenium)
		(sodium ?dailySodium)
		(zinc ?dailyZinc)
		(fiber ?dailyFiber)
		(iron ?dailyIron)
		(potassium ?dailyPotassium)
		(calories ?dailyCalories))
	(vitaminsAmount 
		(name vitaminMin) 
		(vitA ?minVitA) 
		(vitB2 ?minVitB2)
		(vitB3 ?minVitB3) 
		(vitB6 ?minVitB6) 
		(vitB9 ?minVitB9) 
		(vitB12 ?minVitB12) 
		(vitC ?minVitC) 
		(vitE ?minVitE))
	(vitaminsAmount 
		(name vitaminMax) 
		(vitA ?maxVitA) 
		(vitB2 ?maxVitB2) 
		(vitB3 ?maxVitB3) 
		(vitB6 ?maxVitB6) 
		(vitB9 ?maxVitB9) 
		(vitB12 ?maxVitB12) 
		(vitC ?maxVitC) 
		(vitE ?maxVitE))
	(macronutrientsAmount
		(name macrosAmount) 
		(protein ?proteins) 
		(saturated ?saturated) 
		(cholesterolMax ?cholesterol) 
		(carbs ?carbs))
	(mineralsAmount 
		(name mineralMin) 
		(calcium ?minCalcium) 
		(copper ?minCopper) 
		(magnesium ?minMagnesium) 
		(selenium ?minSelenium) 
		(sodium ?minSodium) 
		(zinc ?minZinc) 
		(fiber ?minFiber) 
		(iron ?minIron) 
		(potassium ?minPotassium))
	(mineralsAmount 
		(name mineralMax) 
		(calcium ?maxCalcium) 
		(copper ?maxCopper) 
		(magnesium ?maxMagnesium) 
		(selenium ?maxSelenium) 
		(sodium ?maxSodium) 
		(zinc ?maxZinc) 
		(fiber ?maxFiber) 
		(iron ?maxIron) 
		(potassium ?maxPotassium)
	)
	(test (not(eq ?firstLunch ?firstDinner)))
	(test (not(eq ?secondLunch ?secondDinner)))
	(test (not(eq ?dessertLunch ?dessertDinner)))

	?t <-(generatedMenus ?gen)
	=>
	;(modify ?t (generatedMenus (+ ?gen 1)))
	(bind ?extraFactor 1.8)
	(bind ?lowerFactor 0.3)
	(bind ?r ( or (<= ?dailyVitA  ?minVitA) (> ?dailyVitA ?maxVitA))) ; si estamos por debajo del min o encima del max
	(bind ?r (or ?r (or (<= ?dailyVitB2 (* ?minVitB2 ?lowerFactor)) (> ?dailyVitB2 (* ?maxVitB2 ?extraFactor)))))
	(bind ?r (or ?r (or (<= ?dailyVitB3 (* ?minVitB3 ?lowerFactor)) (> ?dailyVitB3 (* ?maxVitB3 ?extraFactor)))))
	(bind ?r (or ?r (or (<= ?dailyVitB6 (* ?minVitB6 ?lowerFactor)) (> ?dailyVitB6 (* ?maxVitB6 ?extraFactor)))))
	(bind ?r (or ?r (or (<= ?dailyVitB9 (* ?minVitB9 ?lowerFactor)) (> ?dailyVitB9 (* ?maxVitB9 ?extraFactor)))))
	(bind ?r (or ?r (or (<= ?dailyVitB12 (* ?minVitB12 ?lowerFactor)) (> ?dailyVitB12 (* ?maxVitB12 ?extraFactor)))))
	; (bind ?r (or ?r (or (<= ?dailyVitC (* ?minVitC ?lowerFactor)) (> ?dailyVitC (* ?maxVitC ?extraFactor)))))
	(bind ?r (or ?r (or (<= ?dailyVitE (* ?minVitE ?lowerFactor)) (> ?dailyVitE (* ?maxVitE ?extraFactor)))))
	(bind ?r (or ?r (or (<= ?dailyProtein (* ?proteins ?lowerFactor)) (> ?dailyProtein (* ?proteins ?extraFactor)))))
	(bind ?r (or ?r (or (<= ?dailySaturated (* ?saturated ?lowerFactor)) (> ?dailySaturated (* ?saturated ?extraFactor)))))
	(bind ?r (or ?r (or (<= ?dailyCholesterolMax (* ?cholesterol ?lowerFactor)) (> ?cholesterol (* ?cholesterol ?extraFactor)))))
	;(bind ?r (or ?r (or (<= ?dailyCarbs (* ?carbs ?lowerFactor)) (> ?dailyCarbs (* ?carbs ?extraFactor)))))
	;(bind ?r (or ?r (or (<= ?dailyCalories (* ?recommendedCalories ?lowerFactor)) (> ?dailyCalories (* ?recommendedCalories ?extraFactor)))))
	;(bind ?r (or ?r (or (<= ?dailyCalcium (* ?minCalcium ?lowerFactor)) (> ?dailyCalcium (* ?maxCalcium ?extraFactor)))))
	;(bind ?r (or ?r (or (<= ?dailyCopper (* ?minCopper ?lowerFactor)) (> ?dailyCopper (* ?maxCopper ?extraFactor)))))
	(bind ?r (or ?r (or (<= ?dailySelenium (* ?minSelenium ?lowerFactor)) (> ?dailySelenium (* ?maxSelenium ?extraFactor)))))
	; (bind ?r (or ?r (or (<= ?dailySodium (* ?minSodium ?lowerFactor)) (> ?dailySodium (* ?maxSodium ?extraFactor)))))
	; (bind ?r (or ?r (or (<= ?dailyZinc (* ?minZinc ?lowerFactor)) (> ?dailyZinc (* ?maxZinc ?extraFactor)))))
	; (bind ?r (or ?r (or (<= ?dailyFiber (* ?minFiber ?lowerFactor)) (> ?dailyFiber (* ?maxFiber ?extraFactor)))))
	; (bind ?r (or ?r (or (<= ?dailyIron (* ?minIron ?lowerFactor)) (> ?dailyIron (* ?maxIron ?extraFactor)))))
	; (bind ?r (or ?r (or (<= ?dailyPotassium (* ?minPotassium ?lowerFactor)) (> ?dailyPotassium (* ?maxPotassium ?extraFactor)))))
	; (bind ?r (or ?r (or (<= ?dailyMagnesium (* ?minMagnesium ?lowerFactor)) (> ?dailyMagnesium (* ?maxMagnesium ?extraFactor)))))

	;vitc
	;carbs
	;añadir ricos en calcio para los putos veganos

	(if(not ?r) then
		; (bind ?newGen (+ ?gen 1))
		; (retract ?t)
		; (assert (generatedMenus ?newGen))
		; (printout t "Valor de gen: " ?gen crlf)
		(assert (finalMenu
			(nameAppetizer ?appetizer)
			(nameBeverage ?beverage)
			(nameFirstLunch ?firstLunch)
			(nameSecondLunch ?secondLunch)
			(nameDessertLunch ?dessertLunch)
			(nameFirstDinner ?firstDinner)
			(nameSecondDinner ?secondDinner)
			(nameDessertDinner ?dessertDinner)
		))
	)
	(assert (printable 1))
	; else
	; ; 	(printout t ?d crlf)
	; 	(printout t crlf "Estoy trabajando " crlf
	; 		"appetizer: " ?appetizer crlf
	; 		"beverage: "?beverage crlf
	; 		"primer plato comida: "?firstLunch crlf
	; 		"segundo plato comida: "?secondLunch crlf
	; 		"postre comida: "?dessertLunch crlf
	; 		 "primer plato cena: "?firstDinner crlf
	; 		 "secundo plato cena: "?secondDinner crlf
	; 		 "postre cena: "?dessertDinner crlf crlf
	; 	)
)

(defglobal
 ?*generated* = 0
)

(defrule GENERATOR::printMenus "Rule to print the final menus generated"
	(declare (salience -10))
	?p <- (printable ?c)
	(finalMenu 
		(nameAppetizer ?appetizer)
		(nameBeverage ?beverage)

		(nameFirstLunch  ?firstLunch)
		(nameSecondLunch ?secondLunch)
		(nameDessertLunch ?dessertLunch)

		(nameFirstDinner ?firstDinner)
		(nameSecondDinner ?secondDinner)
		(nameDessertDinner ?dessertDinner)
	)
	=>
	(bind ?newGen (+ ?*generated* 1))
	(printout t "new gen is " ?newGen crlf)
	(bind ?*generated* ?newGen)
	(printout t "generated is " ?*generated* crlf)
	(if (> ?*generated* 10) then
		(retract ?p)
	)
	(printout t crlf "Estoy trabajando " crlf
		"appetizer: " ?appetizer crlf
		"beverage: "?beverage crlf
		"primer plato comida: "?firstLunch crlf
		"segundo plato comida: "?secondLunch crlf
		"postre comida: "?dessertLunch crlf
		 "primer plato cena: "?firstDinner crlf
		 "secundo plato cena: "?secondDinner crlf
		 "postre cena: "?dessertDinner crlf crlf
	)
)



; (defrule diaryMenuGenerator "Rule to generate dailyMenus (dinner, lunch, breakfast"
; 	(declare (salience -1))
; 	?lunch <- (completeMenu (first ?firstLunch) (second ?secondLunch) (dessert ?dessertLunch))
; 	=>
; 	(assert (initialDishes 
; 				(dishName (send ?d get-dsishName))
; 				(dishAttributes (send ?d get-dishAttributes))
; 				(ingredients (send ?d get-ingredients))
; 				(ingredientsWeights (send ?d get-ingredientsWeights))
; 				(category (type ?d))
; 			)
; 	)
; )


; (defrule finalFactsPrint
;   	(declare (salience 2))
;   	=>
	
;  )

(defrule GENERATOR::mmm ""
	(declare (salience 10))
	=>
	(assert (terminar no))
)

; (defrule GENERATOR::output2 "Output de algunas cosas"
;  	(declare (salience -10))
; 	?s <- (mineralsAmount 
; 		(name mineralMax))
; 	=>
; 	(modify ?s (name mineralMax))
; 	(facts)
; 	(printout t "esto debería ir al final")

; )

; (defrule GENERATOR::output "Output de algunas cosas"
; 	(recommendedCalories ?value)
; 	=>
; 	(printout t "Calorias recomendadas: "?value crlf)
; )
(defrule GENERATOR::output "Output de algunas cosas"
 	(declare (salience 666))
	=>
	(assert (generatedMenus 0))
)
; (defrule test2
;     (diseasess $?r) 
;     => 
;     (loop-for-count (?i 1 (length$ ?r)) do
; 		(bind ?aux (nth$ ?i ?r))
; 		(printout t ?aux crlf)
; 	)
; )


 
; Usar make-instance para ir creando el menu definitivo

; Consultar un slot (send <VARIABLE> get-<NOM_ATRIBUT>)
; Asignar valor a slot (send ?instancia put-nom "nom")

; Acceder instancia si sabemos nombre (bind ?altura_rect1 (send [rect1] get-altura))
; ronutrientsAmount (name macrosAmount) (protein 87.5) (saturated 15) (cholesterolMax 300) (carbs 1062.01))
; f-9     (vitaminsAmount (name vitaminMin) (vitA 900.0) (vitB2 2.4) (vitB3 16.0) (vitB6 1.7) (vitB9 400) (vitB12 2.4) (vitC 90.0) (vitE 15.0))
; f-10    (vitaminsAmount (name vitaminMax) (vitA 3000.0) (vitB2 999999.0) (vitB3 35.0) (vitB6 100.0) (vitB9 1000.0) (vitB12 999999.0) (vitC 2000.0) (vitE 1000.0))
; f-11    (mineralsAmount (name mineralMin) (calcium 1200.0) (copper 900.0) (magnesium 320.0) (selenium 55.0) (sodium 2.3) (zinc 8.0) (fiber 27) (iron 8.0) (potassium 3500.0))
; f-12    (mineralsAmount (name mineralMax) (calcium 2500.0) (copper 10000.0) (magnesium 700.0) (selenium 400.0) (sodium 2.8) (zinc 40.0) (fiber 10000.0) (iron 10.0) (potassium 4700.0))