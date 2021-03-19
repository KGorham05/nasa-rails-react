# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

9.times do |i|
  Picture.create(
      copyright: "Alan Pham",
      date: "2021-03-16",
      explanation: "In the constellation of the swan near the nebula of the pelican lies the gas cloud of the butterfly next to a star known as the hen.  That star, given the proper name Sadr, is just to the right of the featured frame, but the central Butterfly Nebula, designated IC 1318, is shown in high resolution. The intricate patterns in the bright gas and dark dust are caused by complex interactions between interstellar winds, radiation pressures, magnetic fields, and gravity. The featured telescopic view captures IC 1318's characteristic emission from ionized sulfur, hydrogen, and oxygen atoms mapped to the red, green, and blue hues of the popular Hubble Palette. The portion of the Butterfly Nebula pictured spans about 100 light years and lies about 4000 light years away.",
      hdurl: "https://apod.nasa.gov/apod/image/2103/IC1318_Pham_3200.jpg",
      title: "IC 1318: The Butterfly Nebula in Gas and Dust #{i + 1}",
  )
end