# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Added User
sample_ratings = [2, 4, 5]
User.create( first_name: 'Peter', last_name: 'Ayeni', email: 'name@xample.com' )

Collection.create(
    [
        {
          name: 'London Bridge', 
          url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/London_Bridge_Illuminated.jpg/800px-London_Bridge_Illuminated.jpg',
          description: 'The London Bridge that still stands today dates from 1973. So, despite the fact London Bridge has existed here the longest, the actual bridge standing today is one of the more modern bridges over the Thames in London. Tower Bridge – Tower Bridge was opened in 1894 making this a purely Victorian bridge. - Wikipedia', 
          user_id: User.first.id
        },

        {
          name: 'Eiffel Tower', 
        	url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Tour_Eiffel_Wikimedia_Commons_%28cropped%29.jpg/800px-Tour_Eiffel_Wikimedia_Commons_%28cropped%29.jpg',
        	description: 'The Eiffel Tower French: tour Eiffel is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. - Wikipedia', 
        	user_id: User.first.id
				},
				
				{
          name: 'The Great Wall of China', 
        	url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/The_Great_Wall_of_China_at_Jinshanling-edit.jpg/1280px-The_Great_Wall_of_China_at_Jinshanling-edit.jpg',
        	description: 'The Great Wall of China (Chinese: 萬里長城; pinyin: Wànlǐ Chángchéng) is the collective name of a series of fortification systems generally built across the historical northern borders of China to protect and consolidate territories of Chinese states and empires against various nomadic groups of the steppe and their polities. - Wikipedia', 
        	user_id: User.first.id
				},
				
				{
          name: 'Serengeti National Park', 
        	url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Serengeti-Landscape-2012.JPG/1280px-Serengeti-Landscape-2012.JPG',
        	description: 'The Serengeti National Park is a Tanzanian national park in the Serengeti ecosystem in the Mara and Simiyu regions.It is famous for its annual migration of over 1.5 million white-bearded (or brindled) wildebeest and 250,000 zebra and for its numerous Nile crocodile and honey badger. - Wikipedia', 
        	user_id: User.first.id
				},
				
				{
          name: 'Taj Mahal', 
        	url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Taj_Mahal_%28Edited%29.jpeg/1280px-Taj_Mahal_%28Edited%29.jpeg',
        	description: "The Taj Mahal (/ˌtɑːdʒ məˈhɑːl, ˌtɑːʒ-/; Urdu: تاج محل‎, lit. 'Crown of the Palace',[taːdʒ ˈmɛːɦ(ə)l]) is an ivory-white marble Islamic mausoleum on the south bank of the Yamuna river in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor Shah Jahan (reigned from 1628 to 1658) to house the tomb of his favourite wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself. - Wikipedia", 
        	user_id: User.first.id
				},
				
				{
          name: 'Machu Picchu', 
        	url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/80_-_Machu_Picchu_-_Juin_2009_-_edit.2.jpg/1024px-80_-_Machu_Picchu_-_Juin_2009_-_edit.2.jpg',
        	description: 'Machu Picchu (English: /ˈmɑːtʃuː ˈpiːktʃuː/ or /ˈpiːtʃuː/, Spanish: [ˈmatʃu ˈpi(k)tʃu]; Quechua: Machu Pikchu [ˈmatʃʊ ˈpɪktʃʊ]) is a 15th-century Inca citadel, located in the Eastern Cordillera of southern Peru, on a 2,430-metre (7,970 ft) mountain ridge. It is located in the Cusco Region, Urubamba Province, Machupicchu District, above the Sacred Valley, which is 80 kilometres (50 mi) northwest of Cuzco and through which the Urubamba River flows, cutting through the Cordillera and creating a canyon with a tropical mountain climate. - Wikipedia', 
        	user_id: User.first.id
				},
				
				{
          name: 'Victoria Falls', 
        	url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Cataratas_Victoria%2C_Zambia-Zimbabue%2C_2018-07-27%2C_DD_07.jpg/1280px-Cataratas_Victoria%2C_Zambia-Zimbabue%2C_2018-07-27%2C_DD_07.jpg',
        	description: 'David Livingstone, the Scottish missionary and explorer, is believed to have been the first European to view Victoria Falls on 16 November 1855, from what is now known as Livingstone Island, one of two land masses in the middle of the river, immediately upstream from the falls near the Zambian shore. - Wikipedia', 
        	user_id: User.first.id
				},
				
				{
          name: 'Stone Town', 
        	url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Tour_Eiffel_Wikimedia_Commons_%28cropped%29.jpg/800px-Tour_Eiffel_Wikimedia_Commons_%28cropped%29.jpg',
        	description: "Stone Town of Zanzibar, also known as Mji Mkongwe, is the old part of Zanzibar City, the main city of Zanzibar, in Tanzania. The newer portion of the city is known as Ng'ambo, Swahili for 'the other side'. Stone Town is located on the western coast of Unguja, the main island of the Zanzibar Archipelago. - Wikipedia", 
        	user_id: User.first.id
        }
    ]
    
)

Review.create(
    user_id: User.first.id, 
    collection_id: Collection.all.sample.id,
    rating: sample_ratings.sample
)
