#! /usr/bin/env ruby

require_relative 'player'
require_relative 'team'

red_team = Team.new('red')
red_team.add_players(
    Player.new('bob', 13, 5),
    Player.new('mike', 21, 5),
    Player.new('scott', 16, 3),
    Player.new('jim', 15, 4.5),
    Player.new('joe', 14, 5)
)

# print list of players
puts '**** list of all players ****'
red_team.each { |player| puts player }
puts

eligible_players = red_team.select { |player| (14..20) === player.age }.reject { |player| player.skill_level < 4.5 }
puts '**** list of players between 14 and 20 and skill level (at least) > 4.5 ****'
eligible_players.each { |player| puts player }
puts
