# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Added User
User.create( first_name: 'Peter', last_name: 'Ayeni', email: 'name@xample.com' )

Collection.create(
    [
        {
          name: 'London Bridge', 
          url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/London_Bridge_Illuminated.jpg/800px-London_Bridge_Illuminated.jpg',
          description: 'The London Bridge that still stands today dates from 1973. So, despite the fact London Bridge has existed here the longest, the actual bridge standing today is one of the more modern bridges over the Thames in London. Tower Bridge – Tower Bridge was opened in 1894 making this a purely Victorian bridge.', 
          user_id: User.first.id
        },

        name: 'Eiffel Tower', 
        url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Tour_Eiffel_Wikimedia_Commons_%28cropped%29.jpg/800px-Tour_Eiffel_Wikimedia_Commons_%28cropped%29.jpg',
        description: 'The Eiffel Tower French: tour Eiffel is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.', 
        user_id: User.first.id
    ]
    
)

Review.create(
    user_id: User.first.id, 
    collection_id: Collection.all.sample.id,
    rating: 4
)
