# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Service.destroy_all
Service.create(name: "Cleaning", price: 100, tagligne: "J'astique votre intérieur sans fin !", photo: "charly-cleaning", description: "La propreté est un critère primordial pour moi, je propose donc mes services pour effectuer le nettoyage de votre intérieur, du sol au plafond, avec mes outils manuels et mes outils robotisés selon votre envie. J'aime commencer par l'avant mais si vous avez une préférence autre, je suivrais vos directives avec énergie et dévouement.")
Service.create(name: "Cooking", price: 100, tagligne: "Laissez moi ravir vos papilles !", photo: "cooking", description: "Je vous propose une aventure culinaire étonnante, vos papille en seront toutes exitées, mes ingrédients de prédilection sont le chocolat, les fraises, le champagne ou encore l'huile de coco pour les envies les plus tropicales...")
Service.create(name: "Body Sushis", price: 100, tagligne: "Votre appétit sera insatiable !", photo: "charly-sushis", description: "Une envie de faire jalouser vos copines lors d'un apréro dinatoire, ou une envie égoïste de profiter toute seule, je vous propose une dégustation à fleur de peau, durant laquelle je vais réveiller vos sens. Cette prestation nécessite une commande préalable des sushis de votre part et se terminera par une douche dans le cas ou vous en auriez mis de partout sur vous aussi !")
Service.create(name: "Dance", price: 200, tagligne: "Avec ou sans vêtements !", photo: "dance", description: "Vous souhaitez vous changer les idées, laissez moi vous emmener danser en extérieur ou préferez une danse privée chez vous en solitaire ou encore lors d'un enterrement de vie de jeune filles, mes déhanchés sur les musiques latines vous donneront des bouffées de chaleur, et mon éfeuillage musclé vous fera tourner la tête !")
Service.create(name: "Coach Sportif", price: 250, tagligne: "Boostez vos performances !", photo: "charly-coach", description: "La souplesse et l'endurance son des valeurs importantes, il faut donc s'entrainer régulièrement. Comptez sur moi et chaque miroir que vous croiserez vous dira que c'est vous la plus belle !")
Service.create(name: "Body Massage", price: 150, tagligne: "Après l'effort... ...beaucoup de réconfort !", photo: "charly-massage", description: "Laissez vous guider, votre voyage sera rythmé par mes allées et venues qui vous procureront détente et lâcher prise ! Chaque body massage est unique, vous aurez le choix de la technique, je m'occupe du reste avec mon huile de coco glissante a souhait !")

puts "#{Service.count} services created"
