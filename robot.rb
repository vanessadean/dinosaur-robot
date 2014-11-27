require_relative './peoples.rb'

class Robot
  attr_accessor :taser_laser, :evil_or_good, :type

  BRO_PUNS = ["brosicle","broseidon, god of the brocean","brotato chip","brotein shake","brosef stalin","brorack brobama","teddy brosevelt","don quibrote","adrien brody","gallilebro gallilei","napoleon bronaparte","brobo cop","leonardo dicapribro","broseph mengele ","bro nye the science guy","selena bromez","broey deschanel ","bro dimaggio","wolfgang amadaeus brozart","brohemian rhapsody","osama bro laden","bromosapien"]

  def initialize(type)
    @type = type
  end

  def menu
    puts "What would you like me to do, #{BRO_PUNS.sample}"
    puts "Do you want to Make Toast?{T}"
    puts "Do you want to make me spin{S}?"
    puts "Do you want me to attack A HUMAN?{A}"
    user_input = gets.chomp
    if user_input == "T"
      make_toast
    elsif user_input == "S"
      spin
    elsif user_input == "A"
      puts "Choose a target!"
      name = gets.chomp
      human = People.new(name)
      attack_human(human)
    else 
      puts "Do you want me to Hurt You?, Answer either 'T', 'S', or 'A'!"
      
    end
    menu
  end      
      
  def make_toast
    puts "How long do you want to toast, #{BRO_PUNS.sample}?"
    time = gets.chomp
    puts "Toast will be done in #{time}"
    puts "Ch ch!"
    `say "TOASTING TOASTING TOASTING TOASTY"`
  end

  def spin
    puts "How many miles per hour, #{BRO_PUNS.sample}?"
    speed = gets.chomp
    puts "You are spinning at #{speed}mph"
    `say "YOU SPIN ME RIGHT ROUND BABY RIGHT ROUND LIKE A RECORD BABY RIGHT ROUND RIGHT ROUND #{BRO_PUNS.sample}"`
  end

  def attack_human(person)
    if person.name == "Danny"
      puts "but #{person.name} is my pear-bro!"
      `say "but #{person.name} is my pear-bro!"`
    elsif person.name == "Anthony"
      puts "#{person.name} Loren, Ranee, and Emily find out about eachother, and beat him to death with chankleta!"
    elsif person.name == "Leo"
      puts "#{person.name}' "
    elsif person.name == "Jovan"
      puts "#{person.name} shall forever dress as a woman and be known as Jovanna Banana Susanna Louisiana for life until forever and ever" 
      `say "#{person.name} shall forever dress as a woman and be known as Jovanna Banana Susanna Louisiana for life until forever and ever"`  
    else puts "I shall now attack my bro #{person.name}"
    end
  end

end