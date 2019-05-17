
(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(multislot availability
		(type INTEGER)
		(cardinality 1 12)
		(create-accessor read-write))
	(single-slot chromium
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot secondCourse
		(type INSTANCE)
;+		(allowed-classes SecondCourse)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot ingredientClassification
		(type SYMBOL)
		(allowed-values dysphagia hyperlipidemia hypertriglyceridemia highDensityLipoprotein ischemicCardiopathy arterialHypertension diabetes osteoporosis inflammatoryJoints goutHyperuricemia)
		(create-accessor read-write))
	(single-slot cholesterol
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot copper
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot drinkClassification
		(type SYMBOL)
		(allowed-values Spanish)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot magnesium
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot saturedFat
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot breakfast
		(type INSTANCE)
;+		(allowed-classes SimpleMenu)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot iode
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot fiber
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot vitamineB6
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot dishIngredients
		(type INSTANCE)
;+		(allowed-classes Ingredient)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot inverse_of_dishIngredients)
		(create-accessor read-write))
	(single-slot calories
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot zinc
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot vitamineB9
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot sodium
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot vitamineB3
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot carbohydrates
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot vitamineB2
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot middaySnack
		(type INSTANCE)
;+		(allowed-classes SimpleMenu)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot calcium
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot protein
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot dishName
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot ingredients
		(type INSTANCE)
;+		(allowed-classes Ingredient)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot properties
		(type SYMBOL)
		(allowed-values curated raw)
		(create-accessor read-write))
	(single-slot afternoonSnack
		(type INSTANCE)
;+		(allowed-classes SimpleMenu)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot vitamineK
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot drink
		(type INSTANCE)
;+		(allowed-classes Beverage)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot dinner
		(type INSTANCE)
;+		(allowed-classes CompleteMenu)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot firstCourse
		(type INSTANCE)
;+		(allowed-classes FirstCourse)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot dishDifficulty
		(type INTEGER)
		(default 0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot potassium
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot drinkName
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot link
		(type STRING)
		(default "")
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot inverse_of_dishIngredients
		(type INSTANCE)
;+		(allowed-classes Dish)
;+		(inverse-slot dishIngredients)
		(create-accessor read-write))
	(single-slot selenium
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot monounsaturatedFat
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot lunch
		(type INSTANCE)
;+		(allowed-classes CompleteMenu)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot ingredientsWeights
		(type FLOAT)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot dishClassification
		(type SYMBOL)
		(allowed-values Vegan Spanish French Mexican Italian Japanese Chinese Thai)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot name_
		(type STRING)
		(default "")
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot beverage
		(type INSTANCE)
;+		(allowed-classes Beverage)
		(create-accessor read-write))
	(single-slot dessert
		(type INSTANCE)
;+		(allowed-classes Dessert)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot polyunsaturatedFat
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot dishPrice
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot iron
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot vitamineB12
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot vitamineE
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot drinkPrice
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot vitamineC
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot appetizer
		(type INSTANCE)
;+		(allowed-classes Appetizer)
		(create-accessor read-write))
	(single-slot vitamineD
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot vitamineA
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot molybdenum
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Dish
	(is-a USER)
	(role abstract)
	(multislot ingredientsWeights
		(type FLOAT)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot link
		(type STRING)
		(default "")
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot dishClassification
		(type SYMBOL)
		(allowed-values Vegan Spanish French Mexican Italian Japanese Chinese Thai)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot dishName
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot ingredients
		(type INSTANCE)
;+		(allowed-classes Ingredient)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot availability
		(type INTEGER)
		(cardinality 1 12)
		(create-accessor read-write)))

(defclass Dessert
	(is-a Dish)
	(role concrete))

(defclass FirstCourse
	(is-a Dish)
	(role concrete))

(defclass SecondCourse
	(is-a Dish)
	(role concrete))

(defclass Appetizer
	(is-a Dish)
	(role concrete))

(defclass Beverage
	(is-a Dish)
	(role concrete))

(defclass Ingredient
	(is-a USER)
	(role concrete)
	(multislot properties
		(type SYMBOL)
		(allowed-values curated raw)
		(create-accessor read-write))
	(single-slot potassium
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot ingredientClassification
		(type SYMBOL)
		(allowed-values dysphagia hyperlipidemia hypertriglyceridemia highDensityLipoprotein ischemicCardiopathy arterialHypertension diabetes osteoporosis inflammatoryJoints goutHyperuricemia)
		(create-accessor read-write))
	(single-slot cholesterol
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot copper
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot magnesium
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot selenium
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot monounsaturatedFat
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot saturedFat
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot fiber
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot name_
		(type STRING)
		(default "")
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot vitamineB6
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot calories
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot zinc
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot polyunsaturatedFat
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot vitamineB9
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot sodium
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot vitamineB3
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot carbohydrates
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot iron
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot vitamineB2
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot vitamineB12
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot calcium
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot protein
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot vitamineE
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot vitamineC
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot vitamineA
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass DailyMenu
	(is-a USER)
	(role concrete)
	(single-slot dinner
		(type INSTANCE)
;+		(allowed-classes CompleteMenu)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot lunch
		(type INSTANCE)
;+		(allowed-classes CompleteMenu)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot breakfast
		(type INSTANCE)
;+		(allowed-classes SimpleMenu)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass SimpleMenu
	(is-a USER)
	(role concrete)
	(multislot appetizer
		(type INSTANCE)
;+		(allowed-classes Appetizer)
		(create-accessor read-write))
	(multislot beverage
		(type INSTANCE)
;+		(allowed-classes Beverage)
		(create-accessor read-write)))

(defclass CompleteMenu
	(is-a USER)
	(role concrete)
	(single-slot firstCourse
		(type INSTANCE)
;+		(allowed-classes FirstCourse)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot dessert
		(type INSTANCE)
;+		(allowed-classes Dessert)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot beverage
		(type INSTANCE)
;+		(allowed-classes Beverage)
		(create-accessor read-write))
	(single-slot secondCourse
		(type INSTANCE)
;+		(allowed-classes SecondCourse)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass %3AUNDEFINED
	(is-a USER)
	(role concrete))





;
;	INSTANCIAS
;	

(definstances instances

([AceiteOliva] of  Ingredient

	(calcium 1.0)
	(calories 884.0)
	(carbohydrates 0.0)
	(cholesterol 0.0)
	(copper 0.0)
	(fiber 0.0)
	(iron 0.56)
	(magnesium 0.0)
	(monounsaturatedFat 73.0)
	(name "Aceite de oliva")
	(polyunsaturatedFat 11.0)
	(potassium 1.0)
	(protein 0.0)
	(saturedFat 14.0)
	(selenium 0.0)
	(sodium 2.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.0)
	(vitamineB3 0.0)
	(vitamineB6 0.0)
	(vitamineB9 0.0)
	(vitamineC 0.0)
	(vitamineE 14.35)
	(zinc 0.0))

([AceitunaNegra] of  Ingredient

	(calcium 52.0)
	(calories 145.0)
	(carbohydrates 3.84)
	(cholesterol 0.0)
	(copper 0.12)
	(fiber 3.3)
	(iron 0.49)
	(magnesium 11.0)
	(monounsaturatedFat 14.0)
	(name "Oliva negra")
	(polyunsaturatedFat 2.23)
	(potassium 91.0)
	(protein 1.03)
	(saturedFat 2.81)
	(selenium 0.9)
	(sodium 2250.0)
	(vitamineA 20.0)
	(vitamineB12 0.0)
	(vitamineB2 0.0070)
	(vitamineB3 0.237)
	(vitamineB6 0.018235294)
	(vitamineB9 3.0)
	(vitamineC 0.0)
	(vitamineE 3.81)
	(zinc 0.04))

([Aguacate] of  Ingredient

	(calcium 12.0)
	(calories 160.0)
	(carbohydrates 8.53)
	(cholesterol 0.0)
	(copper 0.19)
	(fiber 6.7)
	(iron 0.55)
	(magnesium 29.0)
	(monounsaturatedFat 9.8)
	(name "Aguacate")
	(polyunsaturatedFat 1.81)
	(potassium 507.0)
	(protein 2.0)
	(saturedFat 2.12)
	(selenium 0.4)
	(sodium 8.0)
	(vitamineA 7.0)
	(vitamineB12 0.0)
	(vitamineB2 0.13)
	(vitamineB3 1.738)
	(vitamineB6 0.15117647)
	(vitamineB9 81.0)
	(vitamineC 0.11111111)
	(vitamineE 2.07)
	(zinc 0.64))

([Ajo] of  Ingredient

	(calcium 181.0)
	(calories 149.0)
	(carbohydrates 33.06)
	(cholesterol 0.0)
	(copper 0.299)
	(fiber 2.1)
	(iron 1.7)
	(magnesium 25.0)
	(monounsaturatedFat 0.01)
	(name "Ajo")
	(polyunsaturatedFat 0.249)
	(potassium 401.0)
	(protein 6.36)
	(saturedFat 0.089)
	(selenium 14.2)
	(sodium 17.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.11)
	(vitamineB3 0.7)
	(vitamineB6 0.7264706)
	(vitamineB9 3.0)
	(vitamineC 0.34666666)
	(vitamineE 0.08)
	(zinc 1.16))

([Almendra] of  Ingredient

	(calcium 269.0)
	(calories 579.0)
	(carbohydrates 21.55)
	(cholesterol 0.0)
	(copper 1.031)
	(fiber 12.5)
	(iron 3.71)
	(magnesium 270.0)
	(monounsaturatedFat 31.551)
	(name "Almendra")
	(polyunsaturatedFat 12.329)
	(potassium 733.0)
	(protein 21.15)
	(saturedFat 3.802)
	(selenium 4.1)
	(sodium 1.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 1.138)
	(vitamineB3 3.618)
	(vitamineB6 0.08058824)
	(vitamineB9 44.0)
	(vitamineC 0.0)
	(vitamineE 25.63)
	(zinc 3.12))

([Aperitivo1] of  Appetizer

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Manzana")
	(ingredients [Manzana])
	(ingredientsWeights 200.0))

([Aperitivo10] of  Appetizer

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Tostada con mermelada de fresa")
	(ingredients
		[Pan]
		[MermeladaFresa])
	(ingredientsWeights 100.0 10.0))

([Aperitivo2] of  Appetizer

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Naranja")
	(ingredients [Naranja])
	(ingredientsWeights 200.0))

([Aperitivo3] of  Appetizer

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Bocadillo jamón")
	(ingredients
		[Jamon]
		[Pan])
	(ingredientsWeights 20.0 100.0))

([Aperitivo4] of  Appetizer

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Bocadillo pavo")
	(ingredients
		[Pavo]
		[Pan])
	(ingredientsWeights 20.0 100.0))

([Aperitivo5] of  Appetizer

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Bocadillo queso")
	(ingredients
		[Queso]
		[Pan])
	(ingredientsWeights 20.0 100.0))

([Aperitivo6] of  Appetizer

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Tostada con mantequilla")
	(ingredients
		[MantequillaSinSal]
		[Pan])
	(ingredientsWeights 20.0 100.0))

([Aperitivo7] of  Appetizer

	(availability 1 2 3 4 5)
	(dishClassification Spanish)
	(dishName "Tostada queso fresco con fruta")
	(ingredients
		[Pan]
		[Queso]
		[Fresa])
	(ingredientsWeights 100.0 20.0 40.0))

([Aperitivo8] of  Appetizer

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Porridge")
	(ingredients
		[Avena]
		[Leche])
	(ingredientsWeights 30.0 100.0))

([Aperitivo9] of  Appetizer

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Tostada con margarina")
	(ingredients
		[Pan]
		[Margarina])
	(ingredientsWeights 100.0 7.0))

([Atun] of  Ingredient

	(calcium 8.0)
	(calories 144.0)
	(carbohydrates 0.0)
	(cholesterol 38.0)
	(copper 0.086)
	(fiber 0.0)
	(iron 1.02)
	(magnesium 50.0)
	(monounsaturatedFat 1.6)
	(name "Atún")
	(polyunsaturatedFat 1.433)
	(potassium 252.0)
	(protein 23.33)
	(saturedFat 1.257)
	(selenium 36.5)
	(sodium 39.0)
	(vitamineA 655.0)
	(vitamineB12 9.43)
	(vitamineB2 0.251)
	(vitamineB3 8.654)
	(vitamineB6 0.26764706)
	(vitamineB9 2.0)
	(vitamineC 0.0)
	(vitamineE 1.0)
	(zinc 0.6))

([Avellana] of  Ingredient

	(calcium 441.0)
	(calories 628.0)
	(carbohydrates 22.98)
	(cholesterol 0.0)
	(copper 1.2)
	(fiber 9.8)
	(iron 3.12)
	(magnesium 235.0)
	(monounsaturatedFat 45.652)
	(name "Avellana")
	(polyunsaturatedFat 7.92)
	(potassium 680.0)
	(protein 14.89)
	(saturedFat 4.464)
	(selenium 0.0)
	(sodium 0.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.16)
	(vitamineB3 3.19)
	(vitamineB6 0.32352942)
	(vitamineB9 0.0)
	(vitamineC 0.0)
	(vitamineE 0.0)
	(zinc 2.06))

([Avena] of  Ingredient

	(calcium 52.0)
	(calories 379.0)
	(carbohydrates 67.7)
	(cholesterol 0.0)
	(copper 0.391)
	(fiber 10.1)
	(iron 4.25)
	(magnesium 138.0)
	(monounsaturatedFat 1.98)
	(name "Avena")
	(polyunsaturatedFat 2.3)
	(potassium 362.0)
	(protein 13.15)
	(saturedFat 1.11)
	(selenium 28.9)
	(sodium 6.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.155)
	(vitamineB3 1.125)
	(vitamineB6 0.05882353)
	(vitamineB9 32.0)
	(vitamineC 0.0)
	(vitamineE 0.42)
	(zinc 3.64))

([Azucar] of  Ingredient

	(calcium 83.0)
	(calories 380.0)
	(carbohydrates 98.09)
	(cholesterol 0.0)
	(copper 0.047)
	(fiber 0.0)
	(iron 0.71)
	(magnesium 9.0)
	(monounsaturatedFat 0.0)
	(name "Azúcar")
	(polyunsaturatedFat 0.0)
	(potassium 133.0)
	(protein 0.12)
	(saturedFat 0.0)
	(selenium 1.2)
	(sodium 28.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.0)
	(vitamineB3 0.11)
	(vitamineB6 0.024117647)
	(vitamineB9 1.0)
	(vitamineC 0.0)
	(vitamineE 0.0)
	(zinc 0.03))

([Bacalao] of  Ingredient

	(calcium 14.0)
	(calories 85.0)
	(carbohydrates 0.0)
	(cholesterol 52.0)
	(copper 0.027)
	(fiber 0.0)
	(iron 0.32)
	(magnesium 26.0)
	(monounsaturatedFat 0.35)
	(name "Bacalao")
	(polyunsaturatedFat 0.3)
	(potassium 437.0)
	(protein 17.66)
	(saturedFat 0.197)
	(selenium 36.5)
	(sodium 59.0)
	(vitamineA 15.0)
	(vitamineB12 3.6)
	(vitamineB2 0.114)
	(vitamineB3 1.9)
	(vitamineB6 0.1764706)
	(vitamineB9 9.0)
	(vitamineC 0.0)
	(vitamineE 0.0)
	(zinc 0.45))

([Bebida1] of  Beverage

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Vaso de leche")
	(ingredients [Leche])
	(ingredientsWeights 225.0))

([Bebida2] of  Beverage

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Té")
	(ingredients [Te])
	(ingredientsWeights 3.0))

([Bebida3] of  Beverage

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Té con leche")
	(ingredients
		[Te]
		[Leche])
	(ingredientsWeights 3.0 100.0))

([Bebida4] of  Beverage

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Café")
	(ingredients [Cafe])
	(ingredientsWeights 5.0))

([Bebida5] of  Beverage

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Café con leche")
	(ingredients
		[Cafe]
		[Leche])
	(ingredientsWeights 5.0 100.0))

([Bebida6] of  Beverage

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Zumo natural naranja")
	(ingredients [Naranja])
	(ingredientsWeights 250.0))

([Berenjena] of  Ingredient

	(calcium 9.0)
	(calories 25.0)
	(carbohydrates 5.88)
	(cholesterol 0.0)
	(copper 0.081)
	(fiber 3.0)
	(iron 0.23)
	(magnesium 14.0)
	(monounsaturatedFat 0.016)
	(name "Berenjena")
	(polyunsaturatedFat 0.076)
	(potassium 229.0)
	(protein 0.98)
	(saturedFat 0.034)
	(selenium 0.3)
	(sodium 2.0)
	(vitamineA 1.0)
	(vitamineB12 0.0)
	(vitamineB2 0.037)
	(vitamineB3 0.649)
	(vitamineB6 0.049411766)
	(vitamineB9 22.0)
	(vitamineC 0.024444444)
	(vitamineE 0.3)
	(zinc 0.16))

([Cacahuete] of  Ingredient

	(calcium 92.0)
	(calories 567.0)
	(carbohydrates 16.13)
	(cholesterol 0.0)
	(copper 1.144)
	(fiber 8.5)
	(iron 4.58)
	(magnesium 168.0)
	(monounsaturatedFat 24.426)
	(name "Cacahuete")
	(polyunsaturatedFat 15.558)
	(potassium 705.0)
	(protein 25.8)
	(saturedFat 6.279)
	(selenium 7.2)
	(sodium 18.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.135)
	(vitamineB3 12.066)
	(vitamineB6 0.20470588)
	(vitamineB9 240.0)
	(vitamineC 0.0)
	(vitamineE 8.33)
	(zinc 3.27))

([Cafe] of  Ingredient

	(calcium 2.0)
	(calories 9.0)
	(carbohydrates 1.69)
	(cholesterol 0.0)
	(copper 0.05)
	(fiber 0.0)
	(iron 0.13)
	(magnesium 80.0)
	(monounsaturatedFat 0.0)
	(name "Cafe")
	(polyunsaturatedFat 0.092)
	(potassium 115.0)
	(protein 0.1)
	(saturedFat 0.092)
	(selenium 0.0)
	(sodium 14.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.177)
	(vitamineB3 5.207)
	(vitamineB6 0.0011764705)
	(vitamineB9 1.0)
	(vitamineC 0.0022222223)
	(vitamineE 0.0)
	(zinc 0.05))

([Calabacin] of  Ingredient

	(calcium 16.0)
	(calories 17.0)
	(carbohydrates 3.11)
	(cholesterol 0.0)
	(copper 0.053)
	(fiber 1.0)
	(iron 0.37)
	(magnesium 18.0)
	(monounsaturatedFat 0.011)
	(name "Calabacín")
	(polyunsaturatedFat 0.091)
	(potassium 261.0)
	(protein 1.21)
	(saturedFat 0.084)
	(selenium 0.2)
	(sodium 8.0)
	(vitamineA 10.0)
	(vitamineB12 0.0)
	(vitamineB2 0.094)
	(vitamineB3 0.451)
	(vitamineB6 0.095882356)
	(vitamineB9 24.0)
	(vitamineC 0.19888888)
	(vitamineE 0.12)
	(zinc 0.32))

([Calabaza] of  Ingredient

	(calcium 21.0)
	(calories 26.0)
	(carbohydrates 6.5)
	(cholesterol 0.0)
	(copper 0.127)
	(fiber 0.5)
	(iron 0.8)
	(magnesium 12.0)
	(monounsaturatedFat 0.013)
	(name "Calabaza")
	(polyunsaturatedFat 0.0050)
	(potassium 340.0)
	(protein 1.0)
	(saturedFat 0.052)
	(selenium 0.3)
	(sodium 1.0)
	(vitamineA 426.0)
	(vitamineB12 0.0)
	(vitamineB2 0.11)
	(vitamineB3 0.6)
	(vitamineB6 0.035882354)
	(vitamineB9 16.0)
	(vitamineC 0.1)
	(vitamineE 1.06)
	(zinc 0.32))

([Calamar] of  Ingredient

	(calcium 32.0)
	(calories 92.0)
	(carbohydrates 3.08)
	(cholesterol 233.0)
	(copper 1.891)
	(fiber 0.0)
	(iron 0.68)
	(magnesium 33.0)
	(monounsaturatedFat 0.107)
	(name "Calamar")
	(polyunsaturatedFat 0.524)
	(potassium 246.0)
	(protein 15.58)
	(saturedFat 0.358)
	(selenium 44.8)
	(sodium 44.0)
	(vitamineA 10.0)
	(vitamineB12 1.3)
	(vitamineB2 0.412)
	(vitamineB3 2.175)
	(vitamineB6 0.032941177)
	(vitamineB9 5.0)
	(vitamineC 0.052222222)
	(vitamineE 1.2)
	(zinc 1.53))

([CaldoPollo] of  Ingredient

	(calcium 4.0)
	(calories 6.0)
	(carbohydrates 0.44)
	(cholesterol 2.0)
	(copper 0.015)
	(fiber 0.0)
	(iron 0.07)
	(magnesium 1.0)
	(monounsaturatedFat 0.019)
	(name "Caldo de pollo")
	(polyunsaturatedFat 0.0090)
	(potassium 18.0)
	(protein 0.64)
	(saturedFat 0.013)
	(selenium 0.4)
	(sodium 371.0)
	(vitamineA 0.0)
	(vitamineB12 0.02)
	(vitamineB2 0.059)
	(vitamineB3 0.219)
	(vitamineB6 0.0)
	(vitamineB9 0.0)
	(vitamineC 0.0)
	(vitamineE 0.04)
	(zinc 0.07))

([CaldoVerdura] of  Ingredient

	(calcium 0.0)
	(calories 5.0)
	(carbohydrates 1.28)
	(cholesterol 0.0)
	(copper 0.0)
	(fiber 0.0)
	(iron 0.0)
	(magnesium 0.0)
	(monounsaturatedFat 0.0060)
	(name "Caldo de Verdura")
	(polyunsaturatedFat 0.0040)
	(potassium 20.0)
	(protein 0.0)
	(saturedFat 0.031)
	(selenium 0.0)
	(sodium 303.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.0)
	(vitamineB3 0.0)
	(vitamineB6 0.0)
	(vitamineB9 0.0)
	(vitamineC 0.0)
	(vitamineE 0.0)
	(zinc 0.0))

([Canonigo] of  Ingredient

	(calcium 33.0)
	(calories 17.0)
	(carbohydrates 3.29)
	(cholesterol 0.0)
	(copper 0.048)
	(fiber 2.1)
	(iron 0.97)
	(magnesium 14.0)
	(monounsaturatedFat 0.012)
	(name "Canonigo")
	(polyunsaturatedFat 0.16)
	(potassium 247.0)
	(protein 1.23)
	(saturedFat 0.039)
	(selenium 0.4)
	(sodium 8.0)
	(vitamineA 436.0)
	(vitamineB12 0.0)
	(vitamineB2 0.067)
	(vitamineB3 0.313)
	(vitamineB6 0.04352941)
	(vitamineB9 136.0)
	(vitamineC 0.044444446)
	(vitamineE 0.13)
	(zinc 0.23))

([CarrilleraCerdo] of  Ingredient

	(calcium 19.0)
	(calories 171.0)
	(carbohydrates 0.0)
	(cholesterol 89.0)
	(copper 0.082)
	(fiber 0.0)
	(iron 1.14)
	(magnesium 6.0)
	(monounsaturatedFat 5.134)
	(name "Carrillera cerdo")
	(polyunsaturatedFat 1.198)
	(potassium 47.0)
	(protein 19.11)
	(saturedFat 3.231)
	(selenium 26.3)
	(sodium 1050.0)
	(vitamineA 23.0)
	(vitamineB12 0.51)
	(vitamineB2 0.068)
	(vitamineB3 1.1)
	(vitamineB6 0.037647057)
	(vitamineB9 1.0)
	(vitamineC 0.0)
	(vitamineE 0.17)
	(zinc 2.38))

([Castana] of  Ingredient

	(calcium 18.0)
	(calories 224.0)
	(carbohydrates 49.07)
	(cholesterol 0.0)
	(copper 0.363)
	(fiber 0.0)
	(iron 1.41)
	(magnesium 84.0)
	(monounsaturatedFat 0.581)
	(name "Castaña")
	(polyunsaturatedFat 0.288)
	(potassium 447.0)
	(protein 4.2)
	(saturedFat 0.164)
	(selenium 0.0)
	(sodium 3.0)
	(vitamineA 10.0)
	(vitamineB12 0.0)
	(vitamineB2 0.18)
	(vitamineB3 0.8)
	(vitamineB6 0.24117647)
	(vitamineB9 68.0)
	(vitamineC 0.4)
	(vitamineE 0.0)
	(zinc 0.87))

([Cebolla] of  Ingredient

	(calcium 23.0)
	(calories 40.0)
	(carbohydrates 9.34)
	(cholesterol 0.0)
	(copper 0.039)
	(fiber 1.7)
	(iron 0.21)
	(magnesium 10.0)
	(monounsaturatedFat 0.013)
	(name "Cebolla")
	(polyunsaturatedFat 0.017)
	(potassium 146.0)
	(protein 1.1)
	(saturedFat 0.042)
	(selenium 0.5)
	(sodium 4.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.027)
	(vitamineB3 0.116)
	(vitamineB6 0.07058824)
	(vitamineB9 19.0)
	(vitamineC 0.08222222)
	(vitamineE 0.02)
	(zinc 0.17))

([Cebolleta] of  Ingredient

	(calcium 72.0)
	(calories 32.0)
	(carbohydrates 7.34)
	(cholesterol 0.0)
	(copper 0.083)
	(fiber 2.6)
	(iron 1.48)
	(magnesium 20.0)
	(monounsaturatedFat 0.027)
	(name "Cebolleta")
	(polyunsaturatedFat 0.074)
	(potassium 276.0)
	(protein 1.83)
	(saturedFat 0.032)
	(selenium 0.6)
	(sodium 16.0)
	(vitamineA 50.0)
	(vitamineB12 0.0)
	(vitamineB2 0.08)
	(vitamineB3 0.525)
	(vitamineB6 0.035882354)
	(vitamineB9 64.0)
	(vitamineC 0.20888889)
	(vitamineE 0.55)
	(zinc 0.39))

([Cerdo] of  Ingredient

	(calcium 19.0)
	(calories 171.0)
	(carbohydrates 0.0)
	(cholesterol 89.0)
	(copper 0.082)
	(fiber 0.0)
	(iron 1.14)
	(magnesium 6.0)
	(monounsaturatedFat 5.134)
	(name "Cerdo")
	(polyunsaturatedFat 1.198)
	(potassium 47.0)
	(protein 19.11)
	(saturedFat 3.231)
	(selenium 26.3)
	(sodium 1050.0)
	(vitamineA 23.0)
	(vitamineB12 0.51)
	(vitamineB2 0.068)
	(vitamineB3 1.1)
	(vitamineB6 0.037647057)
	(vitamineB9 1.0)
	(vitamineC 0.0)
	(vitamineE 0.17)
	(zinc 2.38))

([Champinon] of  Ingredient

	(calcium 3.0)
	(calories 22.0)
	(carbohydrates 3.87)
	(cholesterol 0.0)
	(copper 0.286)
	(fiber 1.3)
	(iron 0.31)
	(magnesium 0.0)
	(monounsaturatedFat 0.044)
	(name "Champiñon")
	(polyunsaturatedFat 0.296)
	(potassium 364.0)
	(protein 2.11)
	(saturedFat 0.01)
	(selenium 18.6)
	(sodium 9.0)
	(vitamineA 0.0)
	(vitamineB12 0.05)
	(vitamineB2 0.13)
	(vitamineB3 4.494)
	(vitamineB6 0.08705882)
	(vitamineB9 28.0)
	(vitamineC 0.0)
	(vitamineE 0.02)
	(zinc 0.53))

([Codillo] of  Ingredient

	(calcium 5.0)
	(calories 133.0)
	(carbohydrates 0.0)
	(cholesterol 61.0)
	(copper 0.093)
	(fiber 0.0)
	(iron 2.14)
	(magnesium 24.0)
	(monounsaturatedFat 2.152)
	(name "Codillo")
	(polyunsaturatedFat 0.277)
	(potassium 378.0)
	(protein 21.41)
	(saturedFat 1.755)
	(selenium 31.4)
	(sodium 62.0)
	(vitamineA 0.0)
	(vitamineB12 3.17)
	(vitamineB2 0.17)
	(vitamineB3 5.455)
	(vitamineB6 0.36)
	(vitamineB9 7.0)
	(vitamineC 0.0)
	(vitamineE 0.17)
	(zinc 4.97))

([ColaBacalao] of  Ingredient

	(calcium 14.0)
	(calories 85.0)
	(carbohydrates 0.0)
	(cholesterol 52.0)
	(copper 0.027)
	(fiber 0.0)
	(iron 0.32)
	(magnesium 26.0)
	(monounsaturatedFat 0.35)
	(name "Cola bacalao")
	(polyunsaturatedFat 0.3)
	(potassium 437.0)
	(protein 17.66)
	(saturedFat 0.197)
	(selenium 36.5)
	(sodium 59.0)
	(vitamineA 15.0)
	(vitamineB12 3.6)
	(vitamineB2 0.114)
	(vitamineB3 1.9)
	(vitamineB6 0.1764706)
	(vitamineB9 9.0)
	(vitamineC 0.0)
	(vitamineE 0.0)
	(zinc 0.45))

([Conejo] of  Ingredient

	(calcium 18.0)
	(calories 173.0)
	(carbohydrates 0.0)
	(cholesterol 123.0)
	(copper 0.176)
	(fiber 0.0)
	(iron 4.85)
	(magnesium 31.0)
	(monounsaturatedFat 0.95)
	(name "Conejo")
	(polyunsaturatedFat 0.68)
	(potassium 343.0)
	(protein 33.02)
	(saturedFat 1.05)
	(selenium 15.2)
	(sodium 45.0)
	(vitamineA 0.0)
	(vitamineB12 6.51)
	(vitamineB2 0.07)
	(vitamineB3 6.4)
	(vitamineB6 0.2)
	(vitamineB9 8.0)
	(vitamineC 0.0)
	(vitamineE 0.41)
	(zinc 2.38))

([Escarola] of  Ingredient

	(calcium 52.0)
	(calories 17.0)
	(carbohydrates 3.35)
	(cholesterol 0.0)
	(copper 0.099)
	(fiber 3.1)
	(iron 0.83)
	(magnesium 15.0)
	(monounsaturatedFat 0.0040)
	(name "Escarola")
	(polyunsaturatedFat 0.087)
	(potassium 314.0)
	(protein 1.25)
	(saturedFat 0.048)
	(selenium 0.2)
	(sodium 22.0)
	(vitamineA 108.0)
	(vitamineB12 0.0)
	(vitamineB2 0.075)
	(vitamineB3 0.4)
	(vitamineB6 0.011764706)
	(vitamineB9 142.0)
	(vitamineC 0.072222225)
	(vitamineE 0.44)
	(zinc 0.79))

([Espagueti] of  Ingredient

	(calcium 21.0)
	(calories 371.0)
	(carbohydrates 74.67)
	(cholesterol 0.0)
	(copper 0.289)
	(fiber 3.2)
	(iron 3.3)
	(magnesium 53.0)
	(monounsaturatedFat 0.171)
	(name "Espagueti")
	(polyunsaturatedFat 0.564)
	(potassium 223.0)
	(protein 13.04)
	(saturedFat 0.277)
	(selenium 63.2)
	(sodium 6.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.4)
	(vitamineB3 7.177)
	(vitamineB6 0.08352941)
	(vitamineB9 391.0)
	(vitamineC 0.0)
	(vitamineE 0.11)
	(zinc 1.41))

([Espinaca] of  Ingredient

	(calcium 99.0)
	(calories 23.0)
	(carbohydrates 3.63)
	(cholesterol 0.0)
	(copper 0.13)
	(fiber 2.2)
	(iron 2.71)
	(magnesium 79.0)
	(monounsaturatedFat 0.01)
	(name "Espinaca")
	(polyunsaturatedFat 0.165)
	(potassium 558.0)
	(protein 2.86)
	(saturedFat 0.063)
	(selenium 1.0)
	(sodium 79.0)
	(vitamineA 469.0)
	(vitamineB12 0.0)
	(vitamineB2 0.189)
	(vitamineB3 0.724)
	(vitamineB6 0.11470588)
	(vitamineB9 194.0)
	(vitamineC 0.3122222)
	(vitamineE 2.03)
	(zinc 0.53))

([Fresa] of  Ingredient

	(calcium 6.0)
	(calories 254.0)
	(carbohydrates 66.3)
	(cholesterol 0.0)
	(copper 0.032)
	(fiber 0.7)
	(iron 0.28)
	(magnesium 4.0)
	(monounsaturatedFat 0.014)
	(name "Fresa")
	(polyunsaturatedFat 0.05)
	(potassium 51.0)
	(protein 0.2)
	(saturedFat 0.0050)
	(selenium 0.8)
	(sodium 21.0)
	(vitamineA 1.0)
	(vitamineB12 0.0)
	(vitamineB2 0.024)
	(vitamineB3 0.161)
	(vitamineB6 0.0070588235)
	(vitamineB9 6.0)
	(vitamineC 0.15222222)
	(vitamineE 0.1)
	(zinc 0.06))

([Gamba] of  Ingredient

	(calcium 91.0)
	(calories 83.0)
	(carbohydrates 0.0)
	(cholesterol 97.0)
	(copper 0.814)
	(fiber 0.0)
	(iron 0.5)
	(magnesium 36.0)
	(monounsaturatedFat 0.129)
	(name "Gamba")
	(polyunsaturatedFat 0.258)
	(potassium 259.0)
	(protein 17.88)
	(saturedFat 0.201)
	(selenium 42.9)
	(sodium 563.0)
	(vitamineA 1.0)
	(vitamineB12 3.33)
	(vitamineB2 0.093)
	(vitamineB3 2.747)
	(vitamineB6 0.0917647)
	(vitamineB9 51.0)
	(vitamineC 0.036666665)
	(vitamineE 1.84)
	(zinc 3.81))

([Garbanzo] of  Ingredient

	(calcium 45.0)
	(calories 387.0)
	(carbohydrates 57.82)
	(cholesterol 0.0)
	(copper 0.912)
	(fiber 10.8)
	(iron 4.86)
	(magnesium 166.0)
	(monounsaturatedFat 1.504)
	(name "Garbanzo")
	(polyunsaturatedFat 2.983)
	(potassium 846.0)
	(protein 22.39)
	(saturedFat 0.693)
	(selenium 8.3)
	(sodium 64.0)
	(vitamineA 2.0)
	(vitamineB12 0.0)
	(vitamineB2 0.106)
	(vitamineB3 1.762)
	(vitamineB6 0.28941175)
	(vitamineB9 437.0)
	(vitamineC 0.0)
	(vitamineE 0.83)
	(zinc 2.81))

([Guisante] of  Ingredient

	(calcium 25.0)
	(calories 81.0)
	(carbohydrates 14.45)
	(cholesterol 0.0)
	(copper 0.176)
	(fiber 5.1)
	(iron 1.47)
	(magnesium 33.0)
	(monounsaturatedFat 0.035)
	(name "Guisante")
	(polyunsaturatedFat 0.187)
	(potassium 244.0)
	(protein 5.42)
	(saturedFat 0.071)
	(selenium 1.8)
	(sodium 5.0)
	(vitamineA 38.0)
	(vitamineB12 0.0)
	(vitamineB2 0.132)
	(vitamineB3 2.09)
	(vitamineB6 0.09941176)
	(vitamineB9 65.0)
	(vitamineC 0.44444445)
	(vitamineE 0.13)
	(zinc 1.24))

([Harina] of  Ingredient

	(calcium 15.0)
	(calories 361.0)
	(carbohydrates 72.53)
	(cholesterol 0.0)
	(copper 0.182)
	(fiber 2.4)
	(iron 0.9)
	(magnesium 25.0)
	(monounsaturatedFat 0.14)
	(name "Harina")
	(polyunsaturatedFat 0.727)
	(potassium 100.0)
	(protein 11.98)
	(saturedFat 0.244)
	(selenium 39.7)
	(sodium 2.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.06)
	(vitamineB3 1.0)
	(vitamineB6 0.021764705)
	(vitamineB9 33.0)
	(vitamineC 0.0)
	(vitamineE 0.4)
	(zinc 0.85))

([Higo] of  Ingredient

	(calcium 35.0)
	(calories 74.0)
	(carbohydrates 19.18)
	(cholesterol 0.0)
	(copper 0.07)
	(fiber 2.9)
	(iron 0.37)
	(magnesium 17.0)
	(monounsaturatedFat 0.066)
	(name "Higo")
	(polyunsaturatedFat 0.144)
	(potassium 232.0)
	(protein 0.75)
	(saturedFat 0.06)
	(selenium 0.2)
	(sodium 1.0)
	(vitamineA 7.0)
	(vitamineB12 0.0)
	(vitamineB2 0.05)
	(vitamineB3 0.4)
	(vitamineB6 0.066470586)
	(vitamineB9 6.0)
	(vitamineC 0.022222223)
	(vitamineE 0.11)
	(zinc 0.15))

([Huevo] of  Ingredient

	(calcium 56.0)
	(calories 143.0)
	(carbohydrates 0.72)
	(cholesterol 372.0)
	(copper 0.072)
	(fiber 0.0)
	(iron 1.75)
	(magnesium 12.0)
	(monounsaturatedFat 3.658)
	(name "Huevo")
	(polyunsaturatedFat 1.911)
	(potassium 138.0)
	(protein 12.56)
	(saturedFat 3.126)
	(selenium 30.7)
	(sodium 142.0)
	(vitamineA 160.0)
	(vitamineB12 0.89)
	(vitamineB2 0.457)
	(vitamineB3 0.075)
	(vitamineB6 0.1)
	(vitamineB9 47.0)
	(vitamineC 0.0)
	(vitamineE 1.05)
	(zinc 1.29))

([Jamon] of  Ingredient

	(calcium 7.0)
	(calories 180.0)
	(carbohydrates 4.2)
	(cholesterol 59.0)
	(copper 0.06)
	(fiber 0.0)
	(iron 0.83)
	(magnesium 16.0)
	(monounsaturatedFat 8.2)
	(name "Jamon")
	(polyunsaturatedFat 2.11)
	(potassium 319.0)
	(protein 16.5)
	(saturedFat 6.1)
	(selenium 17.4)
	(sodium 1194.0)
	(vitamineA 0.0)
	(vitamineB12 0.92)
	(vitamineB2 0.204)
	(vitamineB3 3.88)
	(vitamineB6 0.20588236)
	(vitamineB9 1.0)
	(vitamineC 0.0)
	(vitamineE 0.23)
	(zinc 1.94))

([JudiaVerde] of  Ingredient

	(calcium 37.0)
	(calories 31.0)
	(carbohydrates 6.97)
	(cholesterol 0.0)
	(copper 0.069)
	(fiber 2.7)
	(iron 1.03)
	(magnesium 25.0)
	(monounsaturatedFat 0.01)
	(name "Judía verde")
	(polyunsaturatedFat 0.113)
	(potassium 211.0)
	(protein 1.83)
	(saturedFat 0.05)
	(selenium 0.6)
	(sodium 6.0)
	(vitamineA 35.0)
	(vitamineB12 0.0)
	(vitamineB2 0.104)
	(vitamineB3 0.734)
	(vitamineB6 0.082941175)
	(vitamineB9 33.0)
	(vitamineC 0.13555555)
	(vitamineE 0.41)
	(zinc 0.24))

([Leche] of  Ingredient

	(calcium 101.0)
	(calories 61.0)
	(carbohydrates 4.46)
	(cholesterol 14.0)
	(copper 0.01)
	(fiber 0.0)
	(iron 0.05)
	(magnesium 5.0)
	(monounsaturatedFat 0.999)
	(name "Leche")
	(polyunsaturatedFat 0.128)
	(potassium 253.0)
	(protein 3.1)
	(saturedFat 2.154)
	(selenium 2.0)
	(sodium 3.0)
	(vitamineA 29.0)
	(vitamineB12 0.36)
	(vitamineB2 0.105)
	(vitamineB3 0.043)
	(vitamineB6 0.02)
	(vitamineB9 5.0)
	(vitamineC 0.01)
	(vitamineE 0.08)
	(zinc 0.38))

([LecheOveja] of  Ingredient

	(calcium 101.0)
	(calories 61.0)
	(carbohydrates 4.46)
	(cholesterol 14.0)
	(copper 0.01)
	(fiber 0.0)
	(iron 0.05)
	(magnesium 5.0)
	(monounsaturatedFat 0.999)
	(name "Leche de oveja")
	(polyunsaturatedFat 0.128)
	(potassium 253.0)
	(protein 3.1)
	(saturedFat 2.154)
	(selenium 2.0)
	(sodium 3.0)
	(vitamineA 29.0)
	(vitamineB12 0.36)
	(vitamineB2 0.105)
	(vitamineB3 0.043)
	(vitamineB6 0.02)
	(vitamineB9 5.0)
	(vitamineC 0.01)
	(vitamineE 0.08)
	(zinc 0.38))

([Lechuga] of  Ingredient

	(calcium 33.0)
	(calories 17.0)
	(carbohydrates 3.29)
	(cholesterol 0.0)
	(copper 0.048)
	(fiber 2.1)
	(iron 0.97)
	(magnesium 14.0)
	(monounsaturatedFat 0.012)
	(name "Lechuga")
	(polyunsaturatedFat 0.16)
	(potassium 247.0)
	(protein 1.23)
	(saturedFat 0.039)
	(selenium 0.4)
	(sodium 8.0)
	(vitamineA 436.0)
	(vitamineB12 0.0)
	(vitamineB2 0.067)
	(vitamineB3 0.313)
	(vitamineB6 0.04352941)
	(vitamineB9 136.0)
	(vitamineC 0.044444446)
	(vitamineE 0.13)
	(zinc 0.23))

([Levadura] of  Ingredient

	(calcium 67.0)
	(calories 185.0)
	(carbohydrates 20.42)
	(cholesterol 0.0)
	(copper 0.245)
	(fiber 6.5)
	(iron 4.04)
	(magnesium 180.0)
	(monounsaturatedFat 0.0)
	(name "Levadura")
	(polyunsaturatedFat 0.0)
	(potassium 2100.0)
	(protein 23.88)
	(saturedFat 0.0)
	(selenium 27.6)
	(sodium 3380.0)
	(vitamineA 0.0)
	(vitamineB12 0.5)
	(vitamineB2 17.5)
	(vitamineB3 127.5)
	(vitamineB6 0.0)
	(vitamineB9 5881.0)
	(vitamineC 0.0)
	(vitamineE 0.0)
	(zinc 4.19))

([Limon] of  Ingredient

	(calcium 26.0)
	(calories 29.0)
	(carbohydrates 9.32)
	(cholesterol 0.0)
	(copper 0.037)
	(fiber 2.8)
	(iron 0.6)
	(magnesium 8.0)
	(monounsaturatedFat 0.011)
	(name "Limón")
	(polyunsaturatedFat 0.089)
	(potassium 138.0)
	(protein 1.1)
	(saturedFat 0.039)
	(selenium 0.4)
	(sodium 2.0)
	(vitamineA 1.0)
	(vitamineB12 0.0)
	(vitamineB2 0.02)
	(vitamineB3 0.1)
	(vitamineB6 0.047058824)
	(vitamineB9 11.0)
	(vitamineC 0.5888889)
	(vitamineE 0.15)
	(zinc 0.06))

([Mandarina] of  Ingredient

	(calcium 37.0)
	(calories 53.0)
	(carbohydrates 13.34)
	(cholesterol 0.0)
	(copper 0.042)
	(fiber 1.8)
	(iron 0.15)
	(magnesium 12.0)
	(monounsaturatedFat 0.06)
	(name "Mandarina")
	(polyunsaturatedFat 0.065)
	(potassium 166.0)
	(protein 0.81)
	(saturedFat 0.039)
	(selenium 0.1)
	(sodium 2.0)
	(vitamineA 34.0)
	(vitamineB12 0.0)
	(vitamineB2 0.036)
	(vitamineB3 0.376)
	(vitamineB6 0.04588235)
	(vitamineB9 16.0)
	(vitamineC 0.29666665)
	(vitamineE 0.2)
	(zinc 0.07))

([Mango] of  Ingredient

	(calcium 11.0)
	(calories 60.0)
	(carbohydrates 14.98)
	(cholesterol 0.0)
	(copper 0.111)
	(fiber 1.6)
	(iron 0.16)
	(magnesium 10.0)
	(monounsaturatedFat 0.14)
	(name "Mango")
	(polyunsaturatedFat 0.071)
	(potassium 168.0)
	(protein 0.82)
	(saturedFat 0.092)
	(selenium 0.6)
	(sodium 1.0)
	(vitamineA 54.0)
	(vitamineB12 0.0)
	(vitamineB2 0.038)
	(vitamineB3 0.669)
	(vitamineB6 0.07)
	(vitamineB9 43.0)
	(vitamineC 0.40444446)
	(vitamineE 0.9)
	(zinc 0.09))

([MantequillaSinSal] of  Ingredient

	(calcium 24.0)
	(calories 717.0)
	(carbohydrates 0.06)
	(cholesterol 215.0)
	(copper 0.016)
	(fiber 0.0)
	(iron 0.02)
	(magnesium 2.0)
	(monounsaturatedFat 23.43)
	(name "Mantequilla sin sal")
	(polyunsaturatedFat 3.01)
	(potassium 24.0)
	(protein 0.85)
	(saturedFat 50.489)
	(selenium 1.0)
	(sodium 11.0)
	(vitamineA 684.0)
	(vitamineB12 0.17)
	(vitamineB2 0.034)
	(vitamineB3 0.042)
	(vitamineB6 0.0017647059)
	(vitamineB9 3.0)
	(vitamineC 0.0)
	(vitamineE 2.32)
	(zinc 0.09))

([Manzana] of  Ingredient

	(calcium 29.0)
	(calories 25.0)
	(carbohydrates 5.7)
	(cholesterol 0.0)
	(copper 0.016)
	(fiber 0.0)
	(iron 0.07)
	(magnesium 5.0)
	(monounsaturatedFat 0.0)
	(name "Manzana")
	(polyunsaturatedFat 0.0)
	(potassium 123.0)
	(protein 0.6)
	(saturedFat 0.0)
	(selenium 0.0)
	(sodium 0.0)
	(vitamineA 17.0)
	(vitamineB12 0.0)
	(vitamineB2 0.03)
	(vitamineB3 0.8)
	(vitamineB6 0.0)
	(vitamineB9 0.0)
	(vitamineC 0.24777777)
	(vitamineE 0.0)
	(zinc 0.06))

([Margarina] of  Ingredient

	(calcium 10.0)
	(calories 727.0)
	(carbohydrates 0.77)
	(cholesterol 12.0)
	(copper 0.01)
	(fiber 0.0)
	(iron 0.04)
	(magnesium 1.0)
	(monounsaturatedFat 30.292)
	(name "Margarina")
	(polyunsaturatedFat 24.17)
	(potassium 22.0)
	(protein 0.31)
	(saturedFat 14.198)
	(selenium 0.2)
	(sodium 719.0)
	(vitamineA 819.0)
	(vitamineB12 0.0)
	(vitamineB2 0.023)
	(vitamineB3 0.022)
	(vitamineB6 0.0052941176)
	(vitamineB9 2.0)
	(vitamineC 0.0011111111)
	(vitamineE 3.88)
	(zinc 0.03))

([Membrillo] of  Ingredient

	(calcium 11.0)
	(calories 57.0)
	(carbohydrates 15.3)
	(cholesterol 0.0)
	(copper 0.13)
	(fiber 1.9)
	(iron 0.7)
	(magnesium 8.0)
	(monounsaturatedFat 0.036)
	(name "Membrillo")
	(polyunsaturatedFat 0.05)
	(potassium 197.0)
	(protein 0.4)
	(saturedFat 0.01)
	(selenium 0.6)
	(sodium 4.0)
	(vitamineA 2.0)
	(vitamineB12 0.0)
	(vitamineB2 0.03)
	(vitamineB3 0.2)
	(vitamineB6 0.023529412)
	(vitamineB9 3.0)
	(vitamineC 0.16666667)
	(vitamineE 0.0)
	(zinc 0.04))

([MermeladaFresa] of  Ingredient

	(calcium 9.0)
	(calories 132.0)
	(carbohydrates 53.6)
	(cholesterol 0.0)
	(copper 0.024)
	(fiber 2.5)
	(iron 0.4)
	(magnesium 5.0)
	(monounsaturatedFat 0.042)
	(name "Mermelada de fresa")
	(polyunsaturatedFat 0.151)
	(potassium 69.0)
	(protein 0.3)
	(saturedFat 0.016)
	(selenium 1.7)
	(sodium 0.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.0)
	(vitamineB3 0.0)
	(vitamineB6 0.011764706)
	(vitamineB9 9.0)
	(vitamineC 0.0)
	(vitamineE 0.09)
	(zinc 0.06))

([Miel] of  Ingredient

	(calcium 6.0)
	(calories 304.0)
	(carbohydrates 82.4)
	(cholesterol 0.0)
	(copper 0.036)
	(fiber 0.2)
	(iron 0.42)
	(magnesium 2.0)
	(monounsaturatedFat 0.0)
	(name "Miel")
	(polyunsaturatedFat 0.0)
	(potassium 52.0)
	(protein 0.3)
	(saturedFat 0.0)
	(selenium 0.8)
	(sodium 4.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.038)
	(vitamineB3 0.121)
	(vitamineB6 0.014117647)
	(vitamineB9 2.0)
	(vitamineC 0.0055555557)
	(vitamineE 0.0)
	(zinc 0.22))

([Mora] of  Ingredient

	(calcium 29.0)
	(calories 43.0)
	(carbohydrates 9.61)
	(cholesterol 0.0)
	(copper 0.165)
	(fiber 5.3)
	(iron 0.62)
	(magnesium 20.0)
	(monounsaturatedFat 0.047)
	(name "Mora")
	(polyunsaturatedFat 0.28)
	(potassium 162.0)
	(protein 1.39)
	(saturedFat 0.014)
	(selenium 0.4)
	(sodium 1.0)
	(vitamineA 11.0)
	(vitamineB12 0.0)
	(vitamineB2 0.026)
	(vitamineB3 0.646)
	(vitamineB6 0.01764706)
	(vitamineB9 25.0)
	(vitamineC 0.23333333)
	(vitamineE 1.17)
	(zinc 0.53))

([Mostaza] of  Ingredient

	(calcium 63.0)
	(calories 60.0)
	(carbohydrates 5.83)
	(cholesterol 0.0)
	(copper 0.074)
	(fiber 4.0)
	(iron 1.61)
	(magnesium 48.0)
	(monounsaturatedFat 2.182)
	(name "Mostaza")
	(polyunsaturatedFat 0.774)
	(potassium 152.0)
	(protein 3.74)
	(saturedFat 0.214)
	(selenium 33.5)
	(sodium 1104.0)
	(vitamineA 5.0)
	(vitamineB12 0.0)
	(vitamineB2 0.07)
	(vitamineB3 0.565)
	(vitamineB6 0.04117647)
	(vitamineB9 7.0)
	(vitamineC 0.0033333334)
	(vitamineE 0.36)
	(zinc 0.64))

([Naranja] of  Ingredient

	(calcium 43.0)
	(calories 46.0)
	(carbohydrates 11.54)
	(cholesterol 0.0)
	(copper 0.039)
	(fiber 2.4)
	(iron 0.09)
	(magnesium 10.0)
	(monounsaturatedFat 0.039)
	(name "Naranja")
	(polyunsaturatedFat 0.042)
	(potassium 169.0)
	(protein 0.7)
	(saturedFat 0.025)
	(selenium 0.5)
	(sodium 0.0)
	(vitamineA 11.0)
	(vitamineB12 0.0)
	(vitamineB2 0.04)
	(vitamineB3 0.4)
	(vitamineB6 0.03)
	(vitamineB9 17.0)
	(vitamineC 0.5)
	(vitamineE 0.18)
	(zinc 0.08))

([Nata] of  Ingredient

	(calcium 101.0)
	(calories 257.0)
	(carbohydrates 12.49)
	(cholesterol 76.0)
	(copper 0.01)
	(fiber 0.0)
	(iron 0.05)
	(magnesium 11.0)
	(monounsaturatedFat 6.418)
	(name "Nata")
	(polyunsaturatedFat 0.825)
	(potassium 147.0)
	(protein 3.2)
	(saturedFat 13.831)
	(selenium 1.4)
	(sodium 8.0)
	(vitamineA 188.0)
	(vitamineB12 0.29)
	(vitamineB2 0.065)
	(vitamineB3 0.07)
	(vitamineB6 0.024117647)
	(vitamineB9 3.0)
	(vitamineC 0.0)
	(vitamineE 0.64)
	(zinc 0.37))

([NataLiquida] of  Ingredient

	(calcium 1.0)
	(calories 71.0)
	(carbohydrates 9.1)
	(cholesterol 34.0)
	(copper 0.0)
	(fiber 0.0)
	(iron 0.56)
	(magnesium 0.0)
	(monounsaturatedFat 2.95)
	(name "Nata líquida")
	(polyunsaturatedFat 0.32)
	(potassium 132.0)
	(protein 0.8)
	(saturedFat 5.93)
	(selenium 0.9)
	(sodium 40.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.0)
	(vitamineB3 0.0)
	(vitamineB6 0.0)
	(vitamineB9 0.0)
	(vitamineC 0.0)
	(vitamineE 0.28)
	(zinc 0.05))

([Nuez] of  Ingredient

	(calcium 71.0)
	(calories 500.0)
	(carbohydrates 47.59)
	(cholesterol 0.0)
	(copper 0.0)
	(fiber 3.6)
	(iron 1.29)
	(magnesium 0.0)
	(monounsaturatedFat 5.357)
	(name "Nuez")
	(polyunsaturatedFat 25.0)
	(potassium 232.0)
	(protein 8.28)
	(saturedFat 3.571)
	(selenium 0.0)
	(sodium 446.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.0)
	(vitamineB3 0.0)
	(vitamineB6 0.0)
	(vitamineB9 0.0)
	(vitamineC 0.0)
	(vitamineE 0.0)
	(zinc 0.0))

([Oregano] of  Ingredient

	(calcium 1597.0)
	(calories 265.0)
	(carbohydrates 68.92)
	(cholesterol 0.0)
	(copper 0.633)
	(fiber 42.5)
	(iron 36.8)
	(magnesium 270.0)
	(monounsaturatedFat 0.716)
	(name "Oregano")
	(polyunsaturatedFat 1.369)
	(potassium 1260.0)
	(protein 9.0)
	(saturedFat 1.551)
	(selenium 4.5)
	(sodium 25.0)
	(vitamineA 85.0)
	(vitamineB12 0.0)
	(vitamineB2 0.528)
	(vitamineB3 4.64)
	(vitamineB6 0.6141176)
	(vitamineB9 237.0)
	(vitamineC 0.025555555)
	(vitamineE 18.26)
	(zinc 2.69))

([Pan] of  Ingredient

	(calcium 684.0)
	(calories 238.0)
	(carbohydrates 43.91)
	(cholesterol 0.0)
	(copper 0.149)
	(fiber 9.2)
	(iron 4.89)
	(magnesium 26.0)
	(monounsaturatedFat 0.393)
	(name "Pan")
	(polyunsaturatedFat 0.973)
	(potassium 127.0)
	(protein 10.66)
	(saturedFat 0.63)
	(selenium 16.1)
	(sodium 478.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.255)
	(vitamineB3 4.455)
	(vitamineB6 0.047058824)
	(vitamineB9 162.0)
	(vitamineC 0.0)
	(vitamineE 0.38)
	(zinc 0.95))

([Pasta] of  Ingredient

	(calcium 21.0)
	(calories 371.0)
	(carbohydrates 74.67)
	(cholesterol 0.0)
	(copper 0.289)
	(fiber 3.2)
	(iron 3.3)
	(magnesium 53.0)
	(monounsaturatedFat 0.171)
	(name "Pasta")
	(polyunsaturatedFat 0.564)
	(potassium 223.0)
	(protein 13.04)
	(saturedFat 0.277)
	(selenium 63.2)
	(sodium 6.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.4)
	(vitamineB3 7.177)
	(vitamineB6 0.08352941)
	(vitamineB9 391.0)
	(vitamineC 0.0)
	(vitamineE 0.11)
	(zinc 1.41))

([Patata] of  Ingredient

	(calcium 30.0)
	(calories 58.0)
	(carbohydrates 12.44)
	(cholesterol 0.0)
	(copper 0.423)
	(fiber 2.5)
	(iron 3.24)
	(magnesium 23.0)
	(monounsaturatedFat 0.0020)
	(name "Patata")
	(polyunsaturatedFat 0.043)
	(potassium 413.0)
	(protein 2.57)
	(saturedFat 0.026)
	(selenium 0.3)
	(sodium 10.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.038)
	(vitamineB3 1.033)
	(vitamineB6 0.14058824)
	(vitamineB9 17.0)
	(vitamineC 0.12666667)
	(vitamineE 0.0)
	(zinc 0.35))

([Pavo] of  Ingredient

	(calcium 11.0)
	(calories 139.0)
	(carbohydrates 3.34)
	(cholesterol 68.0)
	(copper 0.05)
	(fiber 0.1)
	(iron 4.2)
	(magnesium 14.0)
	(monounsaturatedFat 1.93)
	(name "Pavo")
	(polyunsaturatedFat 1.42)
	(potassium 345.0)
	(protein 16.3)
	(saturedFat 1.395)
	(selenium 16.1)
	(sodium 1123.0)
	(vitamineA 4.0)
	(vitamineB12 0.24)
	(vitamineB2 0.25)
	(vitamineB3 3.527)
	(vitamineB6 0.15882353)
	(vitamineB9 5.0)
	(vitamineC 0.09)
	(vitamineE 0.22)
	(zinc 2.16))

([PechugaPollo] of  Ingredient

	(calcium 5.0)
	(calories 120.0)
	(carbohydrates 0.0)
	(cholesterol 73.0)
	(copper 0.037)
	(fiber 0.0)
	(iron 0.37)
	(magnesium 28.0)
	(monounsaturatedFat 0.689)
	(name "Pechuga de pollo")
	(polyunsaturatedFat 0.424)
	(potassium 334.0)
	(protein 22.5)
	(saturedFat 0.563)
	(selenium 22.8)
	(sodium 45.0)
	(vitamineA 7.0)
	(vitamineB12 0.21)
	(vitamineB2 0.177)
	(vitamineB3 9.6)
	(vitamineB6 0.47705883)
	(vitamineB9 9.0)
	(vitamineC 0.0)
	(vitamineE 0.56)
	(zinc 0.68))

([Pera] of  Ingredient

	(calcium 9.0)
	(calories 57.0)
	(carbohydrates 15.23)
	(cholesterol 0.0)
	(copper 0.082)
	(fiber 3.1)
	(iron 0.18)
	(magnesium 7.0)
	(monounsaturatedFat 0.084)
	(name "Pera")
	(polyunsaturatedFat 0.094)
	(potassium 116.0)
	(protein 0.36)
	(saturedFat 0.022)
	(selenium 0.1)
	(sodium 1.0)
	(vitamineA 1.0)
	(vitamineB12 0.0)
	(vitamineB2 0.026)
	(vitamineB3 0.161)
	(vitamineB6 0.017058823)
	(vitamineB9 7.0)
	(vitamineC 0.04777778)
	(vitamineE 0.12)
	(zinc 0.1))

([Perejil] of  Ingredient

	(calcium 138.0)
	(calories 36.0)
	(carbohydrates 6.33)
	(cholesterol 0.0)
	(copper 0.149)
	(fiber 3.3)
	(iron 6.2)
	(magnesium 50.0)
	(monounsaturatedFat 0.295)
	(name "Perejil")
	(polyunsaturatedFat 0.124)
	(potassium 554.0)
	(protein 2.97)
	(saturedFat 0.132)
	(selenium 0.1)
	(sodium 56.0)
	(vitamineA 421.0)
	(vitamineB12 0.0)
	(vitamineB2 0.098)
	(vitamineB3 1.313)
	(vitamineB6 0.052941177)
	(vitamineB9 152.0)
	(vitamineC 1.4777777)
	(vitamineE 0.75)
	(zinc 1.07))

([Pimienta] of  Ingredient

	(calcium 61.0)
	(calories 281.0)
	(carbohydrates 51.42)
	(cholesterol 0.0)
	(copper 0.508)
	(fiber 21.6)
	(iron 10.93)
	(magnesium 113.0)
	(monounsaturatedFat 0.492)
	(name "Pimienta")
	(polyunsaturatedFat 4.511)
	(potassium 2411.0)
	(protein 11.86)
	(saturedFat 0.82)
	(selenium 2.9)
	(sodium 43.0)
	(vitamineA 1022.0)
	(vitamineB12 0.0)
	(vitamineB2 2.255)
	(vitamineB3 6.403)
	(vitamineB6 2.0794117)
	(vitamineB9 69.0)
	(vitamineC 0.022222223)
	(vitamineE 0.0)
	(zinc 1.42))

([PimientoPiquillo] of  Ingredient

	(calcium 7.0)
	(calories 31.0)
	(carbohydrates 6.03)
	(cholesterol 0.0)
	(copper 0.017)
	(fiber 2.1)
	(iron 0.43)
	(magnesium 12.0)
	(monounsaturatedFat 0.0070)
	(name "Pimiento piquillo")
	(polyunsaturatedFat 0.156)
	(potassium 211.0)
	(protein 0.99)
	(saturedFat 0.059)
	(selenium 0.1)
	(sodium 4.0)
	(vitamineA 157.0)
	(vitamineB12 0.0)
	(vitamineB2 0.085)
	(vitamineB3 0.979)
	(vitamineB6 0.17117646)
	(vitamineB9 46.0)
	(vitamineC 1.4188889)
	(vitamineE 1.58)
	(zinc 0.25))

([PimientoRojo] of  Ingredient

	(calcium 7.0)
	(calories 31.0)
	(carbohydrates 6.03)
	(cholesterol 0.0)
	(copper 0.017)
	(fiber 2.1)
	(iron 0.43)
	(magnesium 12.0)
	(monounsaturatedFat 0.0070)
	(name "Pimiento rojo")
	(polyunsaturatedFat 0.156)
	(potassium 211.0)
	(protein 0.99)
	(saturedFat 0.059)
	(selenium 0.1)
	(sodium 4.0)
	(vitamineA 157.0)
	(vitamineB12 0.0)
	(vitamineB2 0.085)
	(vitamineB3 0.979)
	(vitamineB6 0.17117646)
	(vitamineB9 46.0)
	(vitamineC 1.4188889)
	(vitamineE 1.58)
	(zinc 0.25))

([PimientoVerde] of  Ingredient

	(calcium 10.0)
	(calories 20.0)
	(carbohydrates 4.64)
	(cholesterol 0.0)
	(copper 0.066)
	(fiber 1.7)
	(iron 0.34)
	(magnesium 10.0)
	(monounsaturatedFat 0.0080)
	(name "Pimiento verde")
	(polyunsaturatedFat 0.062)
	(potassium 175.0)
	(protein 0.86)
	(saturedFat 0.058)
	(selenium 0.0)
	(sodium 3.0)
	(vitamineA 18.0)
	(vitamineB12 0.0)
	(vitamineB2 0.028)
	(vitamineB3 0.48)
	(vitamineB6 0.13176471)
	(vitamineB9 10.0)
	(vitamineC 0.8933333)
	(vitamineE 0.37)
	(zinc 0.13))

([Pinon] of  Ingredient

	(calcium 16.0)
	(calories 673.0)
	(carbohydrates 13.08)
	(cholesterol 0.0)
	(copper 1.324)
	(fiber 3.7)
	(iron 5.53)
	(magnesium 251.0)
	(monounsaturatedFat 18.764)
	(name "Piñón")
	(polyunsaturatedFat 34.071)
	(potassium 597.0)
	(protein 13.69)
	(saturedFat 4.899)
	(selenium 0.7)
	(sodium 2.0)
	(vitamineA 1.0)
	(vitamineB12 0.0)
	(vitamineB2 0.227)
	(vitamineB3 4.387)
	(vitamineB6 0.05529412)
	(vitamineB9 34.0)
	(vitamineC 0.008888889)
	(vitamineE 9.33)
	(zinc 6.45))

([Pollo] of  Ingredient

	(calcium 5.0)
	(calories 120.0)
	(carbohydrates 0.0)
	(cholesterol 73.0)
	(copper 0.037)
	(fiber 0.0)
	(iron 0.37)
	(magnesium 28.0)
	(monounsaturatedFat 0.689)
	(name "Pollo")
	(polyunsaturatedFat 0.424)
	(potassium 334.0)
	(protein 22.5)
	(saturedFat 0.563)
	(selenium 22.8)
	(sodium 45.0)
	(vitamineA 7.0)
	(vitamineB12 0.21)
	(vitamineB2 0.177)
	(vitamineB3 9.6)
	(vitamineB6 0.47705883)
	(vitamineB9 9.0)
	(vitamineC 0.0)
	(vitamineE 0.56)
	(zinc 0.68))

([Postre1] of  Dessert

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Flan de leche")
	(ingredients
		[Leche]
		[Huevo]
		[Pinon]
		[Membrillo]
		[Nata]
		[Azucar])
	(ingredientsWeights 62.5 32.5 18.75 2.5 12.5 25.0 3.125)
	(link "https://www.hogarmania.com/cocina/recetas/postres/201503/flan-leche-oveja-28433.html"))

([Postre10] of  Dessert

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Yogurt natural")
	(ingredients [Yogurt])
	(ingredientsWeights 150.0))

([Postre2] of  Dessert

	(availability 8 9 10 11)
	(dishClassification Spanish)
	(dishName "Crema fría de mango")
	(ingredients
		[Mango]
		[Huevo]
		[Azucar]
		[Sal]
		[AceiteOliva])
	(ingredientsWeights 375.0 48.75 12.5 0.25 10.0)
	(link "https://www.hogarmania.com/cocina/recetas/postres/201606/crema-fria-mango-33155.html"))

([Postre3] of  Dessert

	(availability 2 3 4 5)
	(dishClassification Spanish)
	(dishName "Bizcocho de cacahuete borracho")
	(ingredients
		[Harina]
		[Cacahuete]
		[Azucar]
		[Huevo]
		[AceiteOliva]
		[Levadura]
		[Mango]
		[Fresa])
	(ingredientsWeights 20.0 10.0 20.0 6.5 6.0 1.6 50.0 42.0)
	(link "https://www.hogarmania.com/cocina/recetas/postres/201904/bizcocho-cacahuete-borracho-42992.html"))

([Postre4] of  Dessert

	(availability 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Manzana")
	(ingredients [Manzana])
	(ingredientsWeights 200.0))

([Postre5] of  Dessert

	(availability 7 8 9 10)
	(dishClassification Spanish)
	(dishName "Pera")
	(ingredients [Pera])
	(ingredientsWeights 150.0))

([Postre6] of  Dessert

	(availability 1 2 3 4 5 11 12)
	(dishClassification Spanish)
	(dishName "Naranja")
	(ingredients [Naranja])
	(ingredientsWeights 250.0))

([Postre7] of  Dessert

	(availability 1 2 3 11 12)
	(dishClassification Spanish)
	(dishName "Mandarina")
	(ingredients [Mandarina])
	(ingredientsWeights 90.0))

([Postre8] of  Dessert

	(availability 10 11 12)
	(dishClassification Spanish)
	(dishName "Bizcocho de castañas")
	(ingredients
		[Castana]
		[Harina]
		[Huevo]
		[Levadura]
		[Azucar]
		[MantequillaSinSal])
	(ingredientsWeights 50.0 31.25 32.5 6.0 25.0 5.0)
	(link "https://www.hogarmania.com/cocina/recetas/postres/201810/bizcocho-castanas-41373.html"))

([Postre9] of  Dessert

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Flan de huevo")
	(ingredients
		[Huevo]
		[Azucar]
		[Leche]
		[Nata])
	(ingredientsWeights 19.5 30.0 50.0 12.0)
	(link "https://www.hogarmania.com/cocina/recetas/postres/201808/flan-huevo-40923.html"))

([Primero] of  FirstCourse

	(dishClassification Japanese))

([Primero1] of  FirstCourse

	(availability 2)
	(dishClassification Spanish)
	(dishName "Ensalada de lechugas variadas, aguacate y fresas")
	(ingredients
		[Lechuga]
		[Fresa]
		[AceiteOliva]
		[Sal]
		[Aguacate]
		[Pan]
		[Vinagre])
	(ingredientsWeights 75.0 25.0 10.0 3.0 50.0 30.0 10.0)
	(link "https://www.hogarmania.com/cocina/recetas/ensaladas-verduras/201905/ensalada-lechugas-variadas-aguacate-fresas-43254.html"))

([Primero10] of  FirstCourse

	(dishClassification Japanese)
	(dishName "Ensalada de calabacín, canónigos y queso")
	(ingredients
		[Calabacin]
		[Queso]
		[AceiteOliva]
		[Sal]
		[Canonigo]
		[Membrillo]
		[Vinagre])
	(ingredientsWeights 50.0 25.0 10.0 3.0 25.0 25.0 10.0)
	(link "https://www.hogarmania.com/cocina/recetas/ensaladas-verduras/201904/ensalada-calabacin-canonigos-queso-43010.html"))

([Primero11] of  FirstCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Crema de calabacín con queso")
	(ingredients
		[Calabacin]
		[Patata]
		[Cebolla]
		[AceiteOliva]
		[Sal]
		[QuesoPhiladelphia])
	(ingredientsWeights 100.0 50.0 40.0 10.0 3.0 30.0)
	(link "https://www.pequerecetas.com/receta/crema-calabacin-queso-thermomix/"))

([Primero12] of  FirstCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Salmorejo")
	(ingredients
		[Tomate]
		[Pan]
		[AceiteOliva]
		[Ajo])
	(ingredientsWeights 200.0 50.0 40.0 4.0)
	(link "https://www.pequerecetas.com/receta/salmorejo/"))

([Primero13] of  FirstCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Puré de calabaza")
	(ingredients
		[Calabaza]
		[Cebolleta]
		[AceiteOliva]
		[Ajo])
	(ingredientsWeights 200.0 50.0 40.0 4.0)
	(link "https://www.pequerecetas.com/receta/salmorejo/"))

([Primero14] of  FirstCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Puré de verduras")
	(ingredients
		[Zanahoria]
		[Calabacin]
		[Puerro]
		[JudiaVerde]
		[Patata]
		[Sal]
		[QuesoPhiladelphia]
		[AceiteOliva])
	(ingredientsWeights 70.0 50.0 60.0 40.0 3.0 30.0 4.0)
	(link "https://www.pequerecetas.com/receta/pure-de-verduras-sano-y-delicioso/"))

([Primero15] of  FirstCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Sopa de ajo")
	(ingredients
		[Ajo]
		[Pan]
		[Huevo]
		[CaldoPollo])
	(ingredientsWeights 30.0 50.0 50.0 250.0)
	(link "http://recetasdecocina.elmundo.es/2015/10/sopa-ajo-castellana-receta-casera.html"))

([Primero16] of  FirstCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Sopa de cebolla")
	(ingredients
		[Cebolla]
		[AceiteOliva]
		[Ajo]
		[CaldoPollo])
	(ingredientsWeights 120.0 10.0 10.0 250.0)
	(link "http://recetasdecocina.elmundo.es/2015/02/sopa-de-cebolla-receta-facil.html"))

([Primero17] of  FirstCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Sopa de pollo y pasta")
	(ingredients
		[CaldoPollo]
		[PimientoVerde]
		[Cebolla]
		[Pollo]
		[Pasta])
	(ingredientsWeights 250.0 40.0 30.0 50.0 50.0)
	(link "http://recetasdecocina.elmundo.es/2013/09/sopa-pollo-receta-facil.html"))

([Primero2] of  FirstCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Ensalada de rabanitos y salmón")
	(ingredients
		[Lechuga]
		[SalmonAhumado]
		[AceiteOliva]
		[Sal]
		[Rabanito]
		[AceitunaNegra]
		[Mostaza])
	(ingredientsWeights 75.0 25.0 10.0 3.0 70.0 19.2 15.0)
	(link "https://www.hogarmania.com/cocina/recetas/ensaladas-verduras/201905/ensalada-rabanitos-salmon-43230.html"))

([Primero3] of  FirstCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Pastel de espinacas con provenzal de queso")
	(ingredients
		[Espinaca]
		[Zanahoria]
		[QuesoParmesano]
		[Harina]
		[AceiteOliva]
		[Pimienta]
		[Ajo]
		[Pan]
		[Ajo]
		[Leche]
		[Sal])
	(ingredientsWeights 333.33 50.0 10.0 6.66 10.0 10.0 60.0 5.0 2.0 100.0 3.0)
	(link "https://www.hogarmania.com/cocina/recetas/ensaladas-verduras/201905/pastel-espinacas-provenzal-queso-43222.html"))

([Primero4] of  FirstCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Patatas con bacalao")
	(ingredients
		[Patata]
		[ColaBacalao]
		[Cebolla]
		[Ajo]
		[Sal]
		[Bacalao]
		[Puerro]
		[Tomate]
		[PimientoVerde]
		[AceiteOliva]
		[Perejil])
	(ingredientsWeights 250.0 60.0 100.0 2.0 3.0 100.0 25.0 110.0 45.0 10.0 1.0)
	(link "https://www.hogarmania.com/cocina/recetas/ensaladas-verduras/201905/patatas-bacalao-43198.html"))

([Primero5] of  FirstCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Ensalada de escarola, aguacate y nueces")
	(ingredients
		[Escarola]
		[Nuez]
		[Vinagre]
		[Aguacate]
		[AceiteOliva]
		[Sal])
	(ingredientsWeights 75.0 15.0 10.0 50.0 10.0 3.0)
	(link "https://www.hogarmania.com/cocina/recetas/ensaladas-verduras/201904/ensalada-escarola-aguacate-nueces-43182.html"))

([Primero6] of  FirstCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Ensalada de lechugas variadas con higos, moras y avellanas")
	(ingredients
		[Lechuga]
		[Mora]
		[AceiteOliva]
		[Miel]
		[Higo]
		[Avellana]
		[Vinagre]
		[Sal])
	(ingredientsWeights 50.0 0.6 10.0 10.0 160.0 7.5 10.0 3.0)
	(link "https://www.hogarmania.com/cocina/recetas/ensaladas-verduras/201904/ensalada-lechugas-variadas-higos-moras-43086.html"))

([Primero7] of  FirstCourse

	(dishClassification Spanish)
	(dishName "Garbanzos con calabacín y huevo escalfado")
	(ingredients
		[Garbanzo]
		[Zanahoria]
		[Ajo]
		[Huevo]
		[AceiteOliva]
		[Oregano]
		[Cebolla]
		[Puerro]
		[Calabacin]
		[CaldoVerdura]
		[Sal]
		[Perejil])
	(ingredientsWeights 62.5 25.0 22.5 60.0 10.0 1.0 25.0 25.0 50.0 2000.0 3.0 1.0)
	(link "https://www.hogarmania.com/cocina/recetas/legumbres/201904/garbanzos-calabacin-huevo-escalfado-43082.html"))

([Primero8] of  FirstCourse

	(dishClassification Spanish)
	(dishName "Ensalada de escarola, cebolla y cacahuetes")
	(ingredients
		[Escarola]
		[AceitunaNegra]
		[AceiteOliva]
		[Sal]
		[Cebolla]
		[Cacahuete]
		[Vinagre])
	(ingredientsWeights 75.0 14.4 10.0 3.0 25.0 10.0 10.0)
	(link "https://www.hogarmania.com/cocina/recetas/ensaladas-verduras/201904/ensalada-escarola-cebolla-cacahuetes-43076.html"))

([Primero9] of  FirstCourse

	(dishClassification Japanese)
	(dishName "Ensalada de lechugas variadas, pasta y fresas")
	(ingredients
		[Lechuga]
		[Fresa]
		[AceiteOliva]
		[Sal]
		[Pasta]
		[Nuez]
		[Vinagre])
	(ingredientsWeights 75.0 50.0 10.0 3.0 25.0 10.0 10.0)
	(link "https://www.hogarmania.com/cocina/recetas/ensaladas-verduras/201904/ensalada-lechugas-variadas-pasta-fresas-42998.html"))

([Puerro] of  Ingredient

	(calcium 59.0)
	(calories 61.0)
	(carbohydrates 14.15)
	(cholesterol 0.0)
	(copper 0.12)
	(fiber 1.8)
	(iron 2.1)
	(magnesium 28.0)
	(monounsaturatedFat 0.166)
	(name "Puerro")
	(polyunsaturatedFat 0.0040)
	(potassium 180.0)
	(protein 1.5)
	(saturedFat 0.04)
	(selenium 1.0)
	(sodium 20.0)
	(vitamineA 83.0)
	(vitamineB12 0.0)
	(vitamineB2 0.03)
	(vitamineB3 0.4)
	(vitamineB6 0.13705882)
	(vitamineB9 64.0)
	(vitamineC 0.13333334)
	(vitamineE 0.92)
	(zinc 0.12))

([Queso] of  Ingredient

	(calcium 756.0)
	(calories 351.0)
	(carbohydrates 2.14)
	(cholesterol 69.0)
	(copper 0.026)
	(fiber 0.0)
	(iron 0.52)
	(magnesium 28.0)
	(monounsaturatedFat 7.393)
	(name "Queso")
	(polyunsaturatedFat 0.769)
	(potassium 138.0)
	(protein 25.58)
	(saturedFat 17.078)
	(selenium 14.5)
	(sodium 727.0)
	(vitamineA 236.0)
	(vitamineB12 1.46)
	(vitamineB2 0.321)
	(vitamineB3 0.156)
	(vitamineB6 0.042941175)
	(vitamineB9 10.0)
	(vitamineC 0.0)
	(vitamineE 0.23)
	(zinc 3.23))

([QuesoParmesano] of  Ingredient

	(calcium 853.0)
	(calories 420.0)
	(carbohydrates 13.91)
	(cholesterol 86.0)
	(copper 0.04)
	(fiber 0.0)
	(iron 0.49)
	(magnesium 34.0)
	(monounsaturatedFat 7.13)
	(name "Queso Parmesano")
	(polyunsaturatedFat 1.386)
	(potassium 180.0)
	(protein 28.42)
	(saturedFat 15.371)
	(selenium 34.4)
	(sodium 1804.0)
	(vitamineA 262.0)
	(vitamineB12 1.4)
	(vitamineB2 0.358)
	(vitamineB3 0.08)
	(vitamineB6 0.04764706)
	(vitamineB9 6.0)
	(vitamineC 0.0)
	(vitamineE 0.53)
	(zinc 4.2))

([QuesoPhiladelphia] of  Ingredient

	(calcium 98.0)
	(calories 342.0)
	(carbohydrates 4.07)
	(cholesterol 101.0)
	(copper 0.019)
	(fiber 0.0)
	(iron 0.38)
	(magnesium 9.0)
	(monounsaturatedFat 8.907)
	(name "Queso Philadelphia")
	(polyunsaturatedFat 1.483)
	(potassium 132.0)
	(protein 5.93)
	(saturedFat 1.173)
	(selenium 2.4)
	(sodium 314.0)
	(vitamineA 366.0)
	(vitamineB12 0.25)
	(vitamineB2 0.125)
	(vitamineB3 0.145)
	(vitamineB6 0.020588236)
	(vitamineB9 11.0)
	(vitamineC 0.0)
	(vitamineE 0.29)
	(zinc 0.51))

([Rabanito] of  Ingredient

	(calcium 25.0)
	(calories 16.0)
	(carbohydrates 3.4)
	(cholesterol 0.0)
	(copper 0.05)
	(fiber 1.6)
	(iron 0.34)
	(magnesium 10.0)
	(monounsaturatedFat 0.017)
	(name "Rabanito")
	(polyunsaturatedFat 0.048)
	(potassium 270.0)
	(protein 0.68)
	(saturedFat 0.032)
	(selenium 0.6)
	(sodium 45.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.039)
	(vitamineB3 0.254)
	(vitamineB6 0.041764706)
	(vitamineB9 25.0)
	(vitamineC 0.16444445)
	(vitamineE 0.0)
	(zinc 0.28))

([Rape] of  Ingredient

	(calcium 8.0)
	(calories 76.0)
	(carbohydrates 0.0)
	(cholesterol 25.0)
	(copper 0.028)
	(fiber 0.0)
	(iron 0.32)
	(magnesium 21.0)
	(monounsaturatedFat 0.24)
	(name "Rape")
	(polyunsaturatedFat 0.61)
	(potassium 400.0)
	(protein 14.48)
	(saturedFat 0.34)
	(selenium 36.5)
	(sodium 18.0)
	(vitamineA 12.0)
	(vitamineB12 0.9)
	(vitamineB2 0.06)
	(vitamineB3 2.1)
	(vitamineB6 0.14117648)
	(vitamineB9 7.0)
	(vitamineC 0.011111111)
	(vitamineE 0.0)
	(zinc 0.41))

([Sal] of  Ingredient

	(calcium 24.0)
	(calories 0.0)
	(carbohydrates 0.0)
	(cholesterol 0.0)
	(copper 0.03)
	(fiber 0.0)
	(iron 0.33)
	(magnesium 1.0)
	(monounsaturatedFat 0.0)
	(name "Sal")
	(polyunsaturatedFat 0.0)
	(potassium 8.0)
	(protein 0.0)
	(saturedFat 0.0)
	(selenium 0.1)
	(sodium 38758.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.0)
	(vitamineB3 0.0)
	(vitamineB6 0.0)
	(vitamineB9 0.0)
	(vitamineC 0.0)
	(vitamineE 0.0)
	(zinc 0.1))

([SalmonAhumado] of  Ingredient

	(calcium 11.0)
	(calories 117.0)
	(carbohydrates 0.0)
	(cholesterol 23.0)
	(copper 0.23)
	(fiber 0.0)
	(iron 0.85)
	(magnesium 18.0)
	(monounsaturatedFat 2.023)
	(name "Salmón Ahumado")
	(polyunsaturatedFat 0.995)
	(potassium 175.0)
	(protein 18.28)
	(saturedFat 0.929)
	(selenium 32.4)
	(sodium 672.0)
	(vitamineA 26.0)
	(vitamineB12 3.26)
	(vitamineB2 0.101)
	(vitamineB3 4.72)
	(vitamineB6 0.16352941)
	(vitamineB9 2.0)
	(vitamineC 0.0)
	(vitamineE 1.35)
	(zinc 0.31))

([Second1] of  SecondCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Conejo guisado al estilo mediterráneo")
	(ingredients
		[Conejo]
		[Tomate]
		[Zanahoria]
		[Cebolla]
		[Ajo]
		[Almendra]
		[PimientoVerde]
		[AceitunaNegra]
		[VinoBlanco]
		[AceiteOliva]
		[Sal])
	(ingredientsWeights 250.0 275.0 40.0 25.0 2.0 10.0 90.0 75.0 20.0 3.0 1.0)
	(link "https://www.cocina-familiar.com/conejo-guisado-al-estilo-mediterraneo.html"))

([Second10] of  SecondCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Tortilla de patata y calabacín")
	(ingredients
		[Patata]
		[Huevo]
		[Calabacin]
		[Cebolla]
		[AceiteOliva]
		[Sal])
	(ingredientsWeights 90.0 90.0 30.0 30.0 3.0 2.0)
	(link "https://www.cocina-familiar.com/tortilla-de-patata-y-calabacin-con-parmesano.html"))

([Second11] of  SecondCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Pollo con salsa de limón")
	(ingredients
		[Pollo]
		[Limon]
		[AceiteOliva]
		[Sal])
	(ingredientsWeights 200.0 10.0 3.0 2.0)
	(link "https://www.cocina-familiar.com/pollo-con-salsa-de-limon.html"))

([Second12] of  SecondCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Pollo a la plancha")
	(ingredients
		[Pollo]
		[Sal]
		[AceiteOliva])
	(ingredientsWeights 200.0 3.0 2.0)
	(link "https://cookpad.com/es/recetas/7254856-pechuga-de-pollo-a-la-plancha?via=search&search_term=pechuga%20de%20pollo%20a%20la%20plancha"))

([Second13] of  SecondCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Hamburguesa de cerdo a la plancha")
	(ingredients
		[Cerdo]
		[Sal]
		[AceiteOliva])
	(ingredientsWeights 175.0 3.0 2.0))

([Second14] of  SecondCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Hamburguesa de ternera a la plancha")
	(ingredients
		[Ternera]
		[Sal]
		[AceiteOliva])
	(ingredientsWeights 175.0 3.0 2.0))

([Second15] of  SecondCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Hamburguesa de pollo a la plancha")
	(ingredients
		[Cerdo]
		[Sal]
		[AceiteOliva])
	(ingredientsWeights 175.0 3.0 2.0))

([Second2] of  SecondCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Atún con tomate y pimientos")
	(ingredients
		[Atun]
		[TomateFrito]
		[PimientoPiquillo]
		[AceiteOliva]
		[Sal])
	(ingredientsWeights 250.0 125.0 75.0 10.0 1.0)
	(link "https://www.cocina-familiar.com/atun-con-tomate-y-pimientos.html"))

([Second3] of  SecondCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish French)
	(dishName "Pechuga de pollo a la mostaza con patatas")
	(ingredients
		[PechugaPollo]
		[Patata]
		[Mostaza]
		[AceiteOliva]
		[Sal])
	(ingredientsWeights 100.0 280.0 10.0 3.0 1.0)
	(link "https://www.cocina-familiar.com/pechugas-de-pollo-a-la-mostaza-con-patatas.html"))

([Second4] of  SecondCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Berenjena rellena de pisto")
	(ingredients
		[Berenjena]
		[Calabacin]
		[PimientoRojo]
		[Tomate]
		[Zanahoria]
		[Ajo]
		[Champinon]
		[Queso]
		[AceiteOliva]
		[Sal])
	(ingredientsWeights 80.0 70.0 80.0 50.0 25.0 2.0 20.0 10.0 3.0 2.0)
	(link "https://www.cocina-familiar.com/berenjenas-rellenas-de-pisto-receta-para-dieta.html"))

([Second5] of  SecondCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Carrilleras con salsa y puré de patata casero")
	(ingredients
		[CarrilleraCerdo]
		[PimientoVerde]
		[Zanahoria]
		[Cebolla]
		[Ajo]
		[Patata]
		[TomateFrito]
		[VinoBlanco]
		[NataLiquida]
		[AceiteOliva]
		[Sal])
	(ingredientsWeights 75.0 70.0 20.0 38.0 2.0 150.0 87.5 15.0 4.0 3.0 2.0)
	(link "https://www.cocina-familiar.com/carrilleras-con-salsa-picante-y-pure-de-patata-casero.html"))

([Second6] of  SecondCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Estofado de ternera con patatas")
	(ingredients
		[Ternera]
		[Patata]
		[PimientoRojo]
		[PimientoVerde]
		[Zanahoria]
		[Cebolla]
		[Ajo]
		[Guisante]
		[AceiteOliva]
		[Sal])
	(ingredientsWeights 150.0 100.0 50.0 50.0 40.0 30.0 2.0 15.0 3.0 2.0)
	(link "https://www.cocina-familiar.com/estofado-de-ternera-con-patatas.html"))

([Second7] of  SecondCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Codillo de cerdo asado con verduras a la plancha")
	(ingredients
		[Codillo]
		[PimientoVerde]
		[PimientoRojo]
		[Berenjena]
		[AceiteOliva]
		[Sal])
	(ingredientsWeights 150.0 40.0 40.0 40.0 3.0 2.0)
	(link "https://www.cocina-familiar.com/codillo-de-cerdo-asado-con-verduras-a-la-plancha.html"))

([Second8] of  SecondCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Suquet de pescado y marisco")
	(ingredients
		[Rape]
		[Calamar]
		[Gamba]
		[Zanahoria]
		[Puerro]
		[Tomate]
		[Ajo]
		[Patata]
		[AceiteOliva]
		[Sal])
	(ingredientsWeights 250.0 100.0 50.0 40.0 40.0 40.0 2.0 200.0 3.0 2.0)
	(link "https://www.cocina-familiar.com/suquet-de-pescado-y-marisco.html"))

([Second9] of  SecondCourse

	(availability 1 2 3 4 5 6 7 8 9 10 11 12)
	(dishClassification Spanish)
	(dishName "Albóndigas de pollo con salsa de tomate")
	(ingredients
		[PechugaPollo]
		[Leche]
		[Huevo]
		[TomateFrito]
		[AceiteOliva]
		[Sal])
	(ingredientsWeights 75.0 12.0 15.0 30.0 3.0 2.0)
	(link "https://www.cocina-familiar.com/albondigas-de-pollo-con-salsa-de-tomate.html"))

([Te] of  Ingredient

	(calcium 0.0)
	(calories 0.0)
	(carbohydrates 0.0)
	(cholesterol 0.0)
	(copper 0.0)
	(fiber 0.0)
	(iron 0.0)
	(magnesium 0.0)
	(monounsaturatedFat 0.0)
	(name "Té")
	(polyunsaturatedFat 0.0)
	(potassium 0.0)
	(protein 0.0)
	(saturedFat 0.0)
	(selenium 0.0)
	(sodium 0.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.0)
	(vitamineB3 0.0)
	(vitamineB6 0.0)
	(vitamineB9 0.0)
	(vitamineC 0.0)
	(vitamineE 0.0)
	(zinc 0.0))

([Ternera] of  Ingredient

	(calcium 12.0)
	(calories 197.0)
	(carbohydrates 0.0)
	(cholesterol 49.0)
	(copper 0.088)
	(fiber 0.0)
	(iron 1.37)
	(magnesium 31.0)
	(monounsaturatedFat 6.159)
	(name "Ternera")
	(polyunsaturatedFat 0.732)
	(potassium 198.0)
	(protein 18.58)
	(saturedFat 5.108)
	(selenium 13.1)
	(sodium 103.0)
	(vitamineA 0.0)
	(vitamineB12 2.28)
	(vitamineB2 0.28)
	(vitamineB3 5.52)
	(vitamineB6 0.26235294)
	(vitamineB9 3.0)
	(vitamineC 0.0)
	(vitamineE 0.49)
	(zinc 2.51))

([Tomate] of  Ingredient

	(calcium 10.0)
	(calories 18.0)
	(carbohydrates 3.89)
	(cholesterol 0.0)
	(copper 0.059)
	(fiber 1.2)
	(iron 0.27)
	(magnesium 11.0)
	(monounsaturatedFat 0.046)
	(name "Tomate")
	(polyunsaturatedFat 0.124)
	(potassium 237.0)
	(protein 0.88)
	(saturedFat 0.028)
	(selenium 0.0)
	(sodium 5.0)
	(vitamineA 42.0)
	(vitamineB12 0.0)
	(vitamineB2 0.019)
	(vitamineB3 0.594)
	(vitamineB6 0.047058824)
	(vitamineB9 15.0)
	(vitamineC 0.15222222)
	(vitamineE 0.54)
	(zinc 0.17))

([TomateFrito] of  Ingredient

	(calcium 20.0)
	(calories 104.0)
	(carbohydrates 19.79)
	(cholesterol 3.0)
	(copper 0.13)
	(fiber 5.9)
	(iron 0.8)
	(magnesium 12.0)
	(monounsaturatedFat 0.0)
	(name "Tomate Frito")
	(polyunsaturatedFat 0.0)
	(potassium 0.0)
	(protein 2.5)
	(saturedFat 0.33)
	(selenium 1.1)
	(sodium 667.0)
	(vitamineA 34.0)
	(vitamineB12 0.0)
	(vitamineB2 0.07)
	(vitamineB3 1.6)
	(vitamineB6 0.09411765)
	(vitamineB9 9.0)
	(vitamineC 0.17777778)
	(vitamineE 1.92)
	(zinc 0.16))

([Vinagre] of  Ingredient

	(calcium 7.0)
	(calories 21.0)
	(carbohydrates 0.93)
	(cholesterol 0.0)
	(copper 0.0080)
	(fiber 0.0)
	(iron 0.2)
	(magnesium 5.0)
	(monounsaturatedFat 0.0)
	(name "Vinagre")
	(polyunsaturatedFat 0.0)
	(potassium 73.0)
	(protein 0.0)
	(saturedFat 0.0)
	(selenium 0.1)
	(sodium 5.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.0)
	(vitamineB3 0.0)
	(vitamineB6 0.0)
	(vitamineB9 0.0)
	(vitamineC 0.0)
	(vitamineE 0.0)
	(zinc 0.04))

([VinoBlanco] of  Ingredient

	(calcium 9.0)
	(calories 82.0)
	(carbohydrates 2.6)
	(cholesterol 0.0)
	(copper 0.0040)
	(fiber 0.0)
	(iron 0.27)
	(magnesium 10.0)
	(monounsaturatedFat 0.0)
	(name "Vino blanco")
	(polyunsaturatedFat 0.0)
	(potassium 71.0)
	(protein 0.07)
	(saturedFat 0.0)
	(selenium 0.1)
	(sodium 5.0)
	(vitamineA 0.0)
	(vitamineB12 0.0)
	(vitamineB2 0.015)
	(vitamineB3 0.108)
	(vitamineB6 0.029411765)
	(vitamineB9 1.0)
	(vitamineC 0.0)
	(vitamineE 0.0)
	(zinc 0.12))

([Yogurt] of  Ingredient

	(calcium 199.0)
	(calories 56.0)
	(carbohydrates 7.68)
	(cholesterol 2.0)
	(copper 0.015)
	(fiber 0.0)
	(iron 0.09)
	(magnesium 19.0)
	(monounsaturatedFat 0.049)
	(name "Yogurt")
	(polyunsaturatedFat 0.0050)
	(potassium 255.0)
	(protein 5.73)
	(saturedFat 0.116)
	(selenium 3.6)
	(sodium 77.0)
	(vitamineA 2.0)
	(vitamineB12 0.61)
	(vitamineB2 0.234)
	(vitamineB3 0.124)
	(vitamineB6 0.03117647)
	(vitamineB9 12.0)
	(vitamineC 0.01)
	(vitamineE 0.0)
	(zinc 0.97))

([Zanahoria] of  Ingredient

	(calcium 33.0)
	(calories 41.0)
	(carbohydrates 9.58)
	(cholesterol 0.0)
	(copper 0.045)
	(fiber 2.8)
	(iron 0.3)
	(magnesium 12.0)
	(monounsaturatedFat 0.012)
	(name "Zanahoria")
	(polyunsaturatedFat 0.102)
	(potassium 320.0)
	(protein 0.93)
	(saturedFat 0.032)
	(selenium 0.1)
	(sodium 69.0)
	(vitamineA 835.0)
	(vitamineB12 0.0)
	(vitamineB2 0.058)
	(vitamineB3 0.983)
	(vitamineB6 0.08117647)
	(vitamineB9 19.0)
	(vitamineC 0.06555556)
	(vitamineE 0.66)
	(zinc 0.24))
)


;
;	MAIN
;

(defmodule MAIN
(export ?ALL))

(defrule MAIN::primeraRegla "regla inicial"
	?f <- (initial-fact)
	(not (FI))
	(not(imprimir))
	=>
	(reset)
	(printout t crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "-----------     Weekly menu calculation system     -----------" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t crlf)
	(assert (nou_usuari))	;;aixo ens permet crear un fact
	(focus PREGUNTES)
)