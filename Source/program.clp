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

(deftemplate mineralsAmount
	(slot calcium)
	(slot copper)
	(slot magnesium)
	(slot selenium)
	(slot zinc)
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

([MinMineralMan] of mineralsAmount
	(calcium 1200.0)
	(copper 900.0)
	(magnesium 420.0)
	(selenium 55.0)
	(zinc )
)

([MinMineralWoman] of mineralsAmount
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
    (while (not (member (upcase ?answer) ?values)) do
        (format t "%s" ?question)
        (bind ?answer (read))
    )
	(upcase ?answer)
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
    (bind ?list (create$ M F))
	(bind ?question (choiceQuestion "What's your biological gender? (M F) " ?list))
	(switch ?question
		(case M then (assert(gender "M")))
		(case F then (assert(gender "F")))
	)
)

(defrule GETUSERINFO::askAge "rule to know user's age"
	(user)
	=>
	(bind ?question (numericalQuestion "How old are you? [60,125]: " 60 125))
    (assert(age ?question))
)

(defrule GETUSERINFO::askWeight "rule to know user's weight"
	(user)
	=>
	(bind ?question (numericalQuestion "How much do you weight? [40,300]: " 40 300))
    (assert(weight ?question))
)

(defrule GETUSERINFO::askHeight "rule to know user's height"
	(user)
	=>
	(bind ?question (numericalQuestion "How much tall are you (centimeters)? [130,220]: " 130 220))
    (assert(height ?question))
)
(defrule GETUSERINFO::askPhysicalActivity "rule to know user's physical activity"
	(user)
	=>
	(bind ?question (numericalQuestion "How often should you do physical activity? [never(1) barely(2) often(3) frequently(4)]: " 1 4))
	(switch ?question
		(case 1 then (assert(activity 0)))
		(case 2 then (assert(activity 1)))
		(case 3 then (assert(activity 2)))
		(case 4 then (assert(activity 3)))
	)
)



;
; TEST
;
(defrule test
    (gender ?g) 
    => 
    (printout t ?g)
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
