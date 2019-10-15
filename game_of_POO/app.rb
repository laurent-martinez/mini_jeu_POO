require 'bundler'
Bundler.require
require 'pry'
require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("josiane")
player2 = Player.new("josé")
puts"-----------------------------------------------------------à ma droite
------------------------------------<#{player1.name}> A.K.A _josy from the block_"
puts"à ma gauche--------------------VS------------------------------------------
<#{player2.name}> A.K.A _jojo la faucheuse_----------------------------------------"
  while (player1.life_points > 0) || (player2.life_points > 0)

  puts "\n wesh comment va ?
  ---------------------------------
<#{player1.name}> a actuellement : (#{player1.life_points}) de points de vie \n <#{player2.name}>   a actuellement : (#{player2.life_points}) de points de vie"

  puts "\n And now Ladies and Gentlemen, Enter the Gungeon !!!\n\n"

 player1.attacks(player2)
  if player2.life_points <= 0
   break
  end
 player2.attacks(player1)
  if player1.life_points <= 0
   break
  end

end









































binding.pry
