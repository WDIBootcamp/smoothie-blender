# Every Morning I make a smoothie with the follow ingredients:
smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}
 
class Blender

  # on and off switch and only allow the blender to function when on
  switch = false

  def initialize(smoothie_ingredients)
    # save this instance of the variable for good
    @smoothie_ingredients = smoothie_ingredients

  end

  def start()
    curr_smoothie_ingredients = @smoothie_ingredients

    if switch_on()
      blend(curr_smoothie_ingredients)
    else
      puts "We'll blend some other time!"
    end

  end

  # switch the blender on or off
  def switch_on
    puts "Do you want your blender [on] or [off]?"
    switch_mode = gets.chomp
    case switch_mode
      when "on" then switch = true
      else switch = false
    end
    return switch

  end

  # accepts one variable: an array of ingredients
  # returns a mixed string of characters 
  def blend(smoothie_ingredients)
    # grabs the keys (an array of words), turns in a single string, deletes the spaces,
    # turns into an array of letters, then shuffles
    blended_ingredients = smoothie_ingredients.keys.join("").delete(" ").split("").shuffle
    p blended_ingredients
    
  end

end

make_smoothie = Blender.new(smoothie_ingredients)
make_smoothie.start()

