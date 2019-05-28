# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pokemon.create(name:"Bulbasaur",type:"Grass/Poison",description:"", trainer_id:1)
Pokemon.create(name:"Ivysaur",type:"Grass/Poison",description:"", trainer_id:2)
Pokemon.create(name:"Venasaur",type:"Grass/Poison",description:"", trainer_id:3)
Pokemon.create(name:"Charmander",type:"Fire",description:"", trainer_id:4)
Pokemon.create(name:"Charmeleon",type:"Fire",description:"", trainer_id:5)
Pokemon.create(name:"Charizard",type:"Fire",description:"",trainer_id:6)
Pokemon.create(name:"Squirtle",type:"Water",description:"", trainer_id:7)
Pokemon.create(name:"Wartortle",type:"Water",description:"", trainer_id:8)
Pokemon.create(name:"Blastoise",type:"Water",description:"", trainer_id:9)


Trainer.create(name:"Vidhi",age:25, user_id:1)
Trainer.create(name:"Bruno",age:30, user_id:1)
Trainer.create(name:"Agatha",age:65, user_id:1)
Trainer.create(name:"Ash",age:10, user_id:1)

User.create(name:"Luis")