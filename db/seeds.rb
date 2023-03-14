require 'faker'

User.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')
Item.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('items')


# Create 10 users 
10.times do |i|
	User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		email: Faker::Internet.email(domain: 'yopmail.com'),
		password: 'azerty'
		)
end 

picture_item = ['photo chat mignon', 'photo chat noir','photo chat blanc', 'photo chat gouttière','photo chat roux','photo chat tigré']
object_item = ['mug','poster','tableau','tablier', 'ensemble de lit', 'bouteille', 'assiette', 'coque de smartphone', 'totbag', 'porte-clé', 'serviette', 'set de table']
description_picture = [
	"La photo de chat montre un félin à la fourrure épaisse et soyeuse, avec des rayures distinctives qui lui donnent un air sauvage.",

	"Dans la photo de chat, le félin est assis fièrement sur un rebord de fenêtre, les yeux étroits et l'air vigilant, prêt à bondir à la moindre occasion.",

	"La photo de chat capture un instant de jeu, avec le félin bondissant dans les airs pour attraper un jouet suspendu.",

	"Le chat dans la photo est paisiblement allongé sur une couverture douce, les yeux mi-clos et le souffle régulier, parfaitement détendu.",

	"Dans la photo de chat, le félin est perché sur une étagère haute, observant le monde avec une curiosité tranquille.",

	"La photo de chat montre un chaton adorable avec de grands yeux ronds et des oreilles pointues, qui semble prêt à conquérir le monde."]
url_picture = [
	'https://unsplash.com/fr/photos/7AIDE8PrvA0',
	'https://unsplash.com/fr/photos/FXr_SnSAuOc',
	'https://unsplash.com/fr/photos/OSUIvOh1iaI',
	'https://unsplash.com/fr/photos/7_dpU-xh_Po',
	'https://unsplash.com/fr/photos/0d7Wk0Ouq_0',
	'https://unsplash.com/fr/photos/r0XRumv-I2k']

# Create 20 items
6.times do |i|
	Item.create(
		name: picture_item.sample,
		description: description_picture.sample,
		price: Faker::Number.between(from: 1.00, to: 30.00).round(2),
		image_url: url_picture.sample
		)
end

14.times do |i|
	Item.create(
		name: object_item.sample,
		description: "l'objet parfait à customiser",
		price: Faker::Number.between(from: 1.00, to: 30.00).round(2),
		image_url: url_picture.sample
		)
end


