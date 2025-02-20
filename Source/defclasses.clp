
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
	(single-slot ingredientName
		(type STRING)
		(default "")
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
	(multislot dishAttributes
		(type STRING)
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
	(multislot dishAttributes
		(type STRING)
		(create-accessor read-write))
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
	(pattern-match reactive)
	(role concrete))

(defclass FirstCourse
	(is-a Dish)
	(pattern-match reactive)
	(role concrete))

(defclass SecondCourse
	(is-a Dish)
	(pattern-match reactive)
	(role concrete))

(defclass Appetizer
	(is-a Dish)
	(pattern-match reactive)
	(role concrete))

(defclass Beverage
	(is-a Dish)
	(pattern-match reactive)
	(role concrete))

(defclass Ingredient
	(is-a USER)
	(pattern-match reactive)
	(role concrete)
	(multislot properties
		(type SYMBOL)
		(allowed-values curated raw)
		(create-accessor read-write))
	(single-slot ingredientName
		(type STRING)
		(default "")
;+		(cardinality 1 1)
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
	(pattern-match reactive)
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
	(pattern-match reactive)
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
	(pattern-match reactive)
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