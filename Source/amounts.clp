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
	(slot proteins)
	(slot saturated)
	(slot cholesterolMax)
	(slot carbs)
)

(deftemplate mineralsAmount
    (slot name)
	(slot calcium)
	(slot copper)
	(slot magnesium)
	(slot selenium)
    (slot sodium)
	(slot zinc)
	(slot fiber)
	(slot iron)
	(slot potassium)
)


; (defrule find_title
;     ?macros<-(macronutrientsAmount(name "macrosAmount")(proteinsMult ?pMult))
;     =>
;     (printout t ?pMult crlf)
; )
