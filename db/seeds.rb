# frozen_string_literal: true

claudia = User.create!(
  email: 'claudia@able.co',
  first_name: 'Claudia',
  last_name: 'Valdivieso'
)

paul = User.create!(
  email: 'paul@able.co',
  first_name: 'Paul',
  last_name: 'Portillo'
)

Item.create!(
  [
    {
      title: 'The Hobbit, or There and Back Again',
      description: 'In a hole in the ground there lived a hobbit. Not a nasty, dirty, wet hole, filled with the ends of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it to sit down on or to eat: it was a hobbit-hole, and that means comfort.',
      user: claudia,
      image_url: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1546071216l/5907.jpg'
    },
    {
      title: 'The Fellowship of the Ring',
      description: 'In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, The Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell into the hands of Bilbo Baggins, as told in The Hobbit.',
      user: claudia,
      image_url: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1486871542l/3263607._SY475_.jpg'
    },
    {
      title: 'The Two Towers',
      description: 'Frodo and his Companions of the Ring have been beset by danger during their quest to prevent the Ruling Ring from falling into the hands of the Dark Lord by destroying it in the Cracks of Doom. They have lost the wizard, Gandalf, in a battle in the Mines of Moria. And Boromir, seduced by the power of the Ring, tried to seize it by force.',
      user: paul,
      image_url: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1486871714l/222910._SY475_.jpg'
    },
    {
      title: 'The Return of the King',
      description: 'In the third volume of The Lord of the Rings trilogy the good and evil forces join battle, and we see that the triumph of good is not absolute. The Third Age of Middle-earth ends, and the age of the dominion of Men begins.',
      user: paul,
      image_url: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1574117762l/838729._SY475_.jpg'
    },
    {
      title: 'The Silmarillion',
      description: 'The story of the creation of the world and of the the First Age, this is the ancient drama to which the characters in THE LORD OF THE RINGS look back and in whose events some of them, such as Elrond and Galadriel, took part. ',
      user: claudia,
      image_url: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1610045590l/7332._SX318_.jpg'
    }
  ]
)
