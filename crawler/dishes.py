import requests
import json
import re

AMOUNT = 100

meals = set()
ingredients = set()

units = {
    'tsp': 4.9,
    'teaspoon': 4.9,
    'teaspoons': 4.9,
    'tbs': 14.3,
    'tablespoons': 14.3,
    'tablespoon': 14.3,
    'tblsp': 14.3,
    'tbsp': 14.3,
    'lbs': 453.592,
    'cup': 128,
    'cups': 128,
    'ounce': 28.35,
    'can': 28.35,
    'kg': 1000,
    'g': 1,
    'ml': 1,
    'litre': 1000
}


def convert_to_float(frac_str):
    try:
        return float(frac_str)
    except ValueError:
        num, denom = frac_str.split('/')
        try:
            leading, num = num.split(' ')
            whole = float(leading)
        except ValueError:
            whole = 0
        frac = float(num) / float(denom)
        return whole - frac if whole < 0 else whole + frac


def convert(val, unit_from):
    return 0


class Meal:

    def __init__(self, name, meal_dict):
        self.name = name
        self.meal_dict = meal_dict
        # self.amount = amounts

    def __hash__(self):
        return hash(self.name)

    def __eq__(self, other):
        return self.name == other.name

    def save_meal(self, meal_str):
        file = open('meals.pins', 'a+')
        file.write(meal_str)

    def _str_measures(self):
        pass

    def _str_ingredients(self):
        ingredients_str = ""
        amount_str = ""
        for i in range(20):
            ingredient = self.meal_dict[f'strIngredient{i + 1}']

            if ingredient is not '' and ingredient is not None:
                ingredients.add(ingredient)
                ingredients_str += f'    [{ingredient}]\n'

                amount = self.meal_dict[f'strMeasure{i + 1}']
                amount_str += f'    [{amount}]\n'
                # match = re.match(r"([0-9]+/?[0-9]*)([a-z]+)", amount_str, re.I)

                # if match and len(match.groups()) >= 2:
                # print(f'match.groups[0]: {match.groups()[0]} match.groups[1]: {match.groups()[1]}')
                # convert(match.groups()[0], match.groups()[1])
                # else:
                #    return False, ""

        return ingredients_str[:-1], amount_str[:-1]

    def to_clip_instance(self):
        str_ingredients, str_amount = self._str_ingredients()

        instance_name = self.meal_dict['strMeal'].title().replace(' ', '')
        template = f"""
([{instance_name}] of  FirstCourse
  (dishClassification {self.meal_dict['strArea']})
  (dishIngredients
{str_ingredients})
  (ingredientsWeight
{str_amount}
  (dishName "{self.meal_dict['strMeal']}"))
                """

        return template


class Crawler:

    def parse_dish(self, dish_text):
        dish_json = json.loads(dish_text)
        meal_dict = dish_json['meals'][0]
        meal = Meal(meal_dict['strMeal'], meal_dict)
        meals.add(meal)


open('meals.pins', 'w').close()

crawler = Crawler()

while len(meals) < AMOUNT:
    r = requests.get('https://www.themealdb.com/api/json/v1/1/random.php')
    crawler.parse_dish(r.text)

print("INGREDIENTS:")

ingredients_file = open('ingredients.txt', 'w+')

for meal in meals:
    meal_str = meal.to_clip_instance()
    meal.save_meal(meal_str)

for ingredient in ingredients:
    ingredients_file.write(f'{ingredient}\n')
