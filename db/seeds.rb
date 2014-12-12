# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# player_list = [
# 	["Cristiano Ronaldo", 1, 23],
# 	["Ronaldinho", 2, 1],
# 	["Yaya Toure", 3, 8]
# ]

# team_list = [
# 	["Real Madrid C.F.", 21, 3],
# 	["Querétaro F.C.", 6, 8],
# 	["Manchester City FC", 10, 2]
# ]

# article_list = [
# 	[]


# ]

# player_list.each do |name, team, goals|
# 	Player.create( name: name, team_id: team, goals: goals )
# end

# team_list.each do |name, wins, loses|
# 	Player.create( name: name, wins: wins, loses: loses )
# end

users = User.create([{user_id: 2, email: "dmgraiser@gmail.com", encrypted_password: "$2a$10$9h7vNH8EeubcnmVuaKlQdu6gBml8P.tXTlyNnsjYEeI...", reset_password_token: "d5d8910536bc634ce1f1851be7db970ee26422bfd69c9a7853...", reset_password_sent_at: "2014-12-10 22:38:30", remember_created_at: nil, sign_in_count: 16, current_sign_in_at: "2014-12-11 15:36:34", last_sign_in_at: "2014-12-10 20:22:21", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", created_at: "2014-12-05 03:06:22", updated_at: "2014-12-11 15:36:34", name: "Doug Graiser", parental_approval: true, editor: true, publisher: true}])