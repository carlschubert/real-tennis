require 'bcrypt'



m = User.new(name: "Mr. Monkey")
m.password = "natas"
m.save
puts "clear!"
User.create(name: 'Adrian', password: '123')
User.create(name: 'peon', password: '123')

Game.create(score: 4, compscore: 3, winner: true, user_id: 2, match_id: 1)
Game.create(score: 3, compscore: 4, winner: false, user_id: 2, match_id: 1)
Game.create(score: 4, compscore: 1, winner: true, user_id: 2, match_id: 1)
Game.create(score: 2, compscore: 4, winner: false, user_id: 2, match_id: 2)
Game.create(score: 4, compscore: 2, winner: true, user_id: 2, match_id: 2)
Game.create(score: 1, compscore: 4, winner: false, user_id: 2, match_id: 2)

Match.create(winner: true, user_id: 2)
Match.create(winner: false, user_id: 2)
