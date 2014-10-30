def most_expensive
  rest = restaurants()
  maximum = 0
  rname = ""
  fname = ""

  rest.each do |places, info|
    info[:meals].each do |meal, items|
      items.each do |key, value|
        if value[:price_in_cents] > maximum
          maximum = value[:price_in_cents]
          rname = places
          fname = key.to_s.gsub(/[^a-zA-Z]/, " ").capitalize
        end
      end
    end
  end
  return "#{fname} from #{rname}"
end

def one_of_everything_from(name)
  rest = restaurants()
  total = 0

  rest[name][:meals].each do |meal, choices|
    choices.each do |food, desc|
      total += desc[:price_in_cents].to_i
    end
  end
  return total.to_f / 100
end

def monthly_egg_count
  rest = restaurants()
  total = 0

  rest.each do |places, info|
    info[:meals].each do |meal, items|
      items.each do |key, value|
        value[:ingredients].each do |contents|
          if contents == "eggs"
            total += 30 * 8 * info[:hours] * 2
          end
        end
      end
    end
  end
  total
end

def lactose_free_items
  rest = restaurants()
  lactosehash = {}
  lactose = []

  rest.each do |places, info|
    info[:meals].each do |meal, items|
      items.each do |key, value|
        if !value[:ingredients].include?("cheese")
          lactosehash[key] = value[:price_in_cents]
        end
      end
    end
  end
  lactosehash = lactosehash.sort_by { |word, count| count}
  lactosehash.each do |key, value|
    lactose << key
  end
  return lactose
end



# restaurant data
def restaurants
  {
    "Sam's Sandwhiches" => {
      hours: 7,
      meals: {
        breakfast: {
          hamncheese: {
            price_in_cents: 499,
            ingredients: ["ham", "cheese", "english muffin"]
          },
          mcwaffle: {
            price_in_cents: 525,
            ingredients: ["waffles", "syrup", "sausage", "cheese"]
          }
        },
        lunch: {
          meatball_rollup: {
            price_in_cents: 709,
            ingredients: ["meatballs", "cheese", "tortilla"]
          },
          fluffer_nutter_with_bacon: {
            price_in_cents: 639,
            ingredients: ["bread", "fluff", "peanutbutter", "bacon"]
          }
        }
      }
    },
    "Adam's Veggie Express" => {
      hours: 9,
      meals: {
        breakfast: {
          asparagus_omlette: {
            price_in_cents: 688,
            ingredients: ["eggs", "cheese", "asparagus"]
          },
          fajita_frittata: {
            price_in_cents: 500,
            ingredients: ["eggs", "green peppers", "red peppers", "yellow peppers", "onions", "cheese"]
          }
        },
        lunch: {
          veggie_surprise_bag: {
            price_in_cents: 925,
            ingredients: ["tomato", "onion", "squash", "other stuff"]
          },
          corn_on_the_cob: {
            price_in_cents: 229,
            ingredients: ["corn"]
          }
        }
      }
    },
    "Eric's Emo Eats" => {
      hours: 3,
      meals: {
        breakfast: {
          sad_cereal: {
            price_in_cents: 277,
            ingredients: ["cereal", "milk"]
          },
          apathetic_eggs: {
            price_in_cents: 320,
            ingredients: ["eggs"]
          }
        },
        lunch: {
          mopey_falafels: {
            price_in_cents: 625,
            ingredients: ["pita", "falafel", "tahini"]
          },
          tearful_tacos: {
            price_in_cents: 719,
            ingredients: ["beef", "taco shells", "cheese", ]
          }
        }
      }
    }
  }
end
