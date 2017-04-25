# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

NAMES = ['Esteban Suárez', 'Martín Beraldi', 'Ileana Pazos', 'Carmen Ibañez', 'Juliana Álvarez', 'Gustavo Molinari', 'Señora Insoportable', 'Víctor Morales', 'Luciano Arnol', 'Andrés Menghi']
MOVEMENT_NAMES = ['Pastas', 'Avena', 'Semillas', 'Café', 'Agua', 'Gaseosa', 'Nueces', 'Pan', 'Queso', 'Fiambrín', 'Jamón', 'Jamón crudo', 'Papas', 'Batatas', 'Locro', 'Pizza', 'Empanada', 'Resma', 'Lapicera', 'Bon o Bon']

for name in NAMES
  client = Client.create! name: name
  puts client.name
  rand(10).times do
    movement = client.movements.create! name: MOVEMENT_NAMES.sample, ammount: rand(-100.0..100.0)
    puts movement.name
  end
  puts '-------------------------------------------------'
end
