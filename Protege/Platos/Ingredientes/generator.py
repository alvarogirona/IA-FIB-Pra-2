
import csv

def create_ingredient_instance(row):

    indexes = {
    "Name": 0,
    "InstanceName": 1,
    "ID": 2,
    "FoodGroup": 3,
    "ShortDescrip": 4,
    "Descrip": 5,
    "CommonName": 6,
    "MfgName": 7,
    "ScientificName": 8,
    "Energy_kcal": 9,
    "Protein_g": 10,
    "Fat_g": 11,
    "Carb_g": 12,
    "Sugar_g": 13,
    "Fiber_g": 14,
    "VitA_mcg": 15,
    "VitB6_mg": 16,
    "VitB12_mcg": 17,
    "VitC_mg": 18,
    "VitE_mg": 19,
    "Folate_mcg": 20,
    "Niacin_mg": 21,
    "Riboflavin_mg": 22,
    "Thiamin_mg": 23,
    "Calcium_mg": 24,
    "Copper_mcg": 25,
    "Iron_mg": 26,
    "Magnesium_mg": 27,
    "Manganese_mg": 28,
    "Phosphorus_mg": 29,
    "Selenium_mcg": 30,
    "Zinc_mg": 31,
    "VitA_USRDA": 32,
    "VitB6_USRDA": 33,
    "VitB12_USRDA": 34,
    "VitC_USRDA": 35,
    "VitE_USRDA": 36,
    "Folate_USRDA": 37,
    "Niacin_USRDA": 38,
    "Riboflavin_USRDA": 39,
    "Thiamin_USRDA": 40,
    "Calcium_USRDA": 41,
    "Copper_USRDA": 42,
    "Magnesium_USRDA": 43,
    "Phosphorus_USRDA": 44,
    "Selenium_USRDA": 45,
    "Zinc_USRDA": 46,
    "Cholesterol": 47,
    "MonounsaturatedFat": 48,
    "PolyunsaturatedFat": 49,
    "Potassium": 50,
    "SaturatedFat": 51,
    "Sodium": 52
    }

    # quitar chromium, iode, molybdenum, vitaminD, vitamineK
    # añadir Cholesterol, MonounsaturatedFat, PolyunsaturatedFat, Potassium, SaturatedFat, Sodium
    name = row[indexes["Name"]]
    calcium = row[indexes["Calcium_mg"]]
    calories = row[indexes["Energy_kcal"]]
    carbohydrates = row[indexes["Carb_g"]]
    cholesterol = row[indexes["Cholesterol"]]
    copper = row[indexes["Copper_mcg"]]
    fiber = row[indexes["Fiber_g"]]
    iron = row[indexes["Iron_mg"]]
    magnesium = row[indexes["Magnesium_mg"]]
    monounsaturatedFat = row[indexes["MonounsaturatedFat"]]
    instance_name = row[indexes["InstanceName"]]
    polyunsaturatedFat = row[indexes["PolyunsaturatedFat"]]
    potassium = row[indexes["Potassium"]]
    protein = row[indexes["Protein_g"]]
    saturedFat = row[indexes["SaturatedFat"]]
    selenium = row[indexes["Selenium_mcg"]]
    sodium = row[indexes["Sodium"]]
    vitamineA = row[indexes["VitA_mcg"]]
    vitamineB12 = row[indexes["VitB12_mcg"]]
    vitamineB2 = row[indexes["Riboflavin_mg"]]
    vitamineB3 = row[indexes["Niacin_mg"]]
    vitamineB6 = row[indexes["VitB6_USRDA"]]
    vitamineB9 = row[indexes["Folate_mcg"]]
    vitamineC = row[indexes["VitC_USRDA"]]
    vitamineE = row[indexes["VitE_mg"]]
    zinc = row[indexes["Zinc_mg"]]

    # quitar chromium, iode, molybdenum, vitaminD, vitamineK
    template = f"""
([{instance_name}] of Ingredient
	(calcium {calcium})
	(calories {calories})
	(carbohydrates {carbohydrates})
	(cholesterol {cholesterol})
	(copper {copper})
	(fiber {fiber})
	(iron {iron})
	(magnesium {magnesium})
	(monounsaturatedFat {monounsaturatedFat})
	(name "{name}")
	(polyunsaturatedFat {polyunsaturatedFat})
	(potassium {potassium})
	(protein {protein})
	(saturedFat {saturedFat})
	(selenium {selenium})
	(sodium {sodium})
	(vitamineA {vitamineA})
	(vitamineB12 {vitamineB12})
	(vitamineB2 {vitamineB2})
	(vitamineB3 {vitamineB3})
	(vitamineB6 {vitamineB6})
	(vitamineB9 {vitamineB9})
	(vitamineC {vitamineC})
	(vitamineE {vitamineE})
	(zinc {zinc}))\n"""

    return template

ingredients_file = open('ingredients.csv', 'r+')

csv_reader = csv.reader(ingredients_file, delimiter=',')
next(csv_reader)
csv_reader = sorted(csv_reader, key=lambda row: (row[1]))

output_file = open('generated_ingredients.clips', 'w+')

line_count = 0
for row in csv_reader:
    instance = create_ingredient_instance(row)
    output_file.write(instance)
    print(instance)
