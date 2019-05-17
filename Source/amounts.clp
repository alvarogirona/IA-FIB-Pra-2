; 8===========D
; NUTRIENTS LIMITS
; 8===========D

(deftemplate vitaminsAmount
	(slot name)
	(slot vitA)
	(slot vitB2)
	(slot vitB3)
	(slot vitB6)
	(slot vitB9)
	(slot vitB12)
	(slot vitC)
	(slot vitE)
)

(deftemplate macronutrientsAmount
	(slot name)
	(slot proteinsMult)
	(slot lipidsMult)
	(slot saturatedMult)
	(slot cholesterolMax)
	(slot carbsMult)
)

(deftemplate mineralsAmount
    (slot name)
	(slot calcium)
	(slot copper)
	(slot magnesium)
	(slot selenium)
    (slot sodium)
	(slot zinc)
)


(deffacts initialfacts
	(vitaminsAmount
		(name "MinVitMan")
		(vitA 900.0)
		(vitB2 2.4)
		(vitB3 16.0)
		(vitB6 1.7)
		(vitB9 400)
		(vitB12 2.4)
		(vitC 90.0)
		(vitE 15.0)
	)

    (vitaminsAmount 
        (name "MinVitWoman")
		(vitA 700)
		(vitB2 1.1)
		(vitB3 14.0)
		(vitB6 1.7)
		(vitB9 400)
		(vitB12 2.4)
		(vitC 75.0)
		(vitE 15.0)
	)

    (vitaminsAmount 
        (name "MaxVitManWoman")
        (vitA 3000.0)
        (vitB2 999999.0)
        (vitB3 35.0)
        (vitB6 100.0)
        (vitB9 1000.0)
        (vitB12 999999.0)
        (vitC 2000.0)
        (vitE 1000.0)
    )

    (mineralsAmount 
        (name "MinMineralMan")
        (calcium 1200.0)
        (copper 900.0)
        (magnesium 420.0)
        (selenium 55.0)
        (sodium 2.3)
        (zinc 11.0)
    )


    (mineralsAmount 
        (name "MinMineralWoman")
        (calcium 1200.0)
        (copper 900.0)
        (magnesium 320.0)
        (selenium 55.0)
        (sodium 2.3)
        (zinc 8.0)
    )


    (mineralsAmount 
        (name "MaxMineralManWoman")
        (calcium 2500.0)
        (copper 10000.0)
        (magnesium 700.0)
        (selenium 400.0)
        (sodium 2.8)
        (zinc 40.0)
    )

    (macronutrientsAmount 
        (name "macrosAmount")
        (proteinsMult 1.25)
        (lipidsMult 0.325)
        (saturatedMult 0.085)
        (cholesterolMax 300)
        (carbsMult 0.5)
    
    )

)

; (defrule find_title
;     ?macros<-(macronutrientsAmount(name "macrosAmount")(proteinsMult ?pMult))
;     =>
;     (printout t ?pMult crlf)
; )
