

class Player

  attr_accessor :name, :life_points


  def initialize(name)
   @name = name
   @life_points = 10

  end

  def show_state
   puts "--<#{name}> a #{@life_points} de points de vie pour l'instant--"
  end

  def gets_damage(damages)

    @life_points  = @life_points - damages
      if @life_points <= 0
        puts "<#{name}> est mort dans d'affreuses souffrances"
    end
  end
  def compute_damage
    return rand(1..6)
  end

  def attacks(defender)
    puts "^^^<#{name}> lance une attaque sanglante sur <#{defender.name}>^^^"

    damages = compute_damage

    puts "=====<#{defender.name}> vient de subir <#{damages}> points de dégâts====="
    defender.gets_damage(damages)
  end
end


class Humanplayer < Player

  attr_accessor :weapon_level

  def initialize(name)
   @name = name
   @life_points = 100
   @weapon_level = 1

  end


  def search_weapon

   new_gun = rand(1..6)
   puts "tu as trouvé une arme de niveau #{new_gun.to_i}"
    if new_gun > @weapon_level
      @weapon_level = new_gun
    puts"nouvelle arme entre dans le Gungeon ==> et c'est parti pour  le show tout le monde est chaud"
    else
   puts"F@*#$ it, je préfère autant garder mon arme de base"
   end

  end

  def search_health_pack

    result = rand(1..6)

    if result == 6
      if (@life_points + 80) <= 100
        @life_points + 80
      puts" c'est Noël en plein mois d'août Endiré"
      end
    elsif result >=2 || result <= 5
      if (@life_points + 50) <= 100
        @life_points + 50
      puts"considère toi presque chanceux, t'aurais très bien pu ne rien trouver. Où être mort, ou ne rien trouver en êtant mort"
      end
    else
      puts ".....................WALOU................................ "
    end
  end






end
