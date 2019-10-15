require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
puts"____      _
|  ___|    | |
| |__ _ __ | |_ ___ _ __
|  __| '_ \| __/ _ | '__|
| |__| | | | ||  __| |
\____|__ |__\__\___|_|
     | | | |
     | |_| |__   ___
     | __| '_ \ / _ \
     | |_| | | |  __/
__ _ _   _ _\__|_|____\____  ___  _ __
/ _` | | | | '_ \ / _` |/ _ \/ _ \| '_ \
| (_| | |_| | | | | (_| |  __| (_) | | | |
\__, |\__,_|_| |_|\__, |\___|\___/|_| |_|
__/ |             __/ |
|___/             |___/"

           puts" Quel sera ton Nom Houman ?"
user_name = gets.chomp
user = Humanplayer.new("#{user_name}")
enemies = [ Player.new("josiane"), Player.new("josé")]


while (user.life_points > 0) || (player1.life_points > 0 && player2.life_points > 0)

  while user.life_points > 0

  puts "\n wesh comment va ?
  # --------------------------------------------------------------------------#
  # <#{user_name}> a actuellement : (#{user.life_points}) de points de vie et c'est très bien comme ça"
puts"\n========================================================================="
  puts "And now Ladies and Gentlemen, Enter the Gungeon !!!"
puts"=========================================================================\n"

  puts "Quelle action veux-tu effectuer ?"
  puts"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

  puts "[a] - Chercher une meilleure arme"
  puts"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "[s]- Se soigner"
  puts"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "\n\nAttaquer un bot :"
  puts"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  enemies.each_with_index do |enemy, i|
  #j'utilise cette méthode pour ajouter l'indexation automatiquement si on ajoute des enemis dans l'array.
  enemy.life_points > 0 ? (puts"[#{i}]#{enemy.show_state}"):(puts"[#{i}]#{enemy.name} est mort(e)")
  end
  print ">"
  choice = gets.chomp

  puts "----------------------------------------------------------------------"

  case choice
  when "a"
    user.search_weapon
  when "s"
    user.search_health_pack
  when "0", "1"
    enemies[choice.to_i].life_points > 0 ? user.attacks(enemies[choice.to_i]) : (puts "les dieux te regardent et ils n'aiment pas ce que tu fais. Ils en parlent entres eux et tejugent en rigolant #{enemies[choice.to_i].name}...")
  else
    puts "-----------------------------niet----------------------------- ! \n\n"
  end

  break if enemies.all? { |enemy| enemy.life_points <= 0 }

    puts "Les autres joueurs attaquent !"

    enemies.each do |enemy|
    #On doit verifier user.life point avant chaque attaque ennemie car si un enemi le tue, la boucle each continuera et des enemis continueront à l'attaquer.
    enemy.attacks(user) if user.life_points > 0 && enemy.life_points > 0
    #On vérifie aussi que l'enemi soit vivant pour qu'il attaque, sinon ça n'a pas de sens.
    end
    #Un enemi peut attaquer uniquement si le joueur est en vie et que l'enemi aussi est en vie
  end

# h_player.attacks(player1)
# player1.attacks(player2)
# if player2.life_points <= 0
#  break
# end
# player2.attacks(player1)
# if player1.life_points <= 0
#  break
# end


   puts"                          _
                         | |
            ___ _ __   __| |
        __ / _ | '_ \ / _` |
       / _|  __| | | | (_| |
  ___ | |_ \_____|_|_____,_|__ ___   ___
 / _ \|  _|   / _` |/ _` | '_ ` _ \ / _ \
| (_) | |    | (_| | (_| | | | | | |  __/
 \___/|_|     \__, |\__,_|_| |_| |_|\___|
               __/ |
              |___/                      "

   if user.life_points > 0
    puts"

           _   _  ___  _   _
          | | | |/ _ \| | | |
          | |_| | (_) | |_| |
           \__, |\___/_\__,_|
            __/ |    (_)
           |___/    ___ _ __
            \ \ /\ / | | '_ \
             \ V  V /| | | | |
              \_/\_/ |_|_| |_|

                              "
    else
    puts"

           _   _  ___  _   _
          | | | |/ _ \| | | |
          | |_| | (_) | |_| |
           \__, |____/ \__,_|    __
            __/ | (_)       _   / /
           |____| |_  ___  (_) | |
             / _` | |/ _ \     | |
            | (_| | |  __/  _  | |
             \__,_|_|\___| (_) | |
                                \_\
                                   "
    end
end
