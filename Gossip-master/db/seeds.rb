require 'faker'
tag_array= ["#Bromance", "#PasDamalGame", "#EnMarche", "#LesPauvres", "#LesRiches", "#LesAutres", "#LesRoux", "#JPP", "#VDM", "#NoHomo"]
    tag_array.each do |tag| #rempli la table specialty
        tags = Tag.create(title: tag)
    end
    10.times do 
        cities = City.create(
            name: Faker::Address.city,
            zip_code: Faker::Address.zip_code
        )
        users = User.create(
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            email: Faker::Internet.email,
            age: rand(18..50),
            city: cities
        )
    end
    20.times do
        users_rand = User.all.sample
        potin = Potin.create(
        title: Faker::Lorem.sentence,
        content: Faker::Lorem.paragraph(sentence_count: 3),
        user: users_rand
        )
    end
    10.times do 
        potin_all = Potin.all #l'ensemble des potins
        tag_rand = Tag.all.sample #un TAG au hasard
        potin_all.each do |potin|#on parcours tous les potin et on fait associer des tags
            JoinTablePotin.create(potin: potin, tag: tag_rand)
        end
    end