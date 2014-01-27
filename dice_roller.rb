          ##### IMPORTS FROM OTHER FILES #####
          
          ##### DEFINE GLOBAL VARIABLES/ARRAYS/HASHES/METHODS #####
          
  nav_menu = ["1.) Select your dice",
              "2.) Roll your dice",
              "3.) Inspect your dice",
              "4.) Quit"]
  
  dice_menu_array = [ "1.) 4-sided dice",
                      "2.) 6-sided dice",
                      "3.) 8-sided dice",
                      "4.) 10-sided dice",
                      "5.) 12-sided dice",
                      "6.) 20-sided dice",
                      "7.) Return to main menu"]

  @dice_selection_hash = {  :four   => nil,
                            :six    => nil,
                            :eight  => nil,
                            :ten    => nil,
                            :twelve => nil,
                            :twenty => nil }
          
  def dice_roll(k, v)
    if v != nil
      puts k
      rolling_dice = v
      
      while rolling_dice > 0
        if k == :four
          print "#{1 + rand(4)}   "
          rolling_dice -= 1
        elsif k == :six
          print "#{1 + rand(6)}   "
          rolling_dice -= 1
        elsif k == :eight
          print "#{1 + rand(8)}   "
          rolling_dice -= 1
        elsif k == :ten
          print "#{1 + rand(10)}   "
          rolling_dice -= 1
        elsif k == :twelve
          print "#{1 + rand(12)}   "
          rolling_dice -= 1
        elsif k == :twenty
          print "#{1 + rand(20)}   "
          rolling_dice -= 1
        else
          break
        end
        puts
      end
      print "================"
    else
      puts k
      puts "No Dice"
      print "================"
    end
  end                ##### end dice_roll method #####
  
  def menu_choice_method(n)
    puts "How many #{n}-sided dies would you like to play with?"
    number_of_dice = gets.chomp.to_i
    @dice_selection_hash[n] = number_of_dice
    puts "You have chosen to play with #{@dice_selection_hash[n]} #{n}-sided dice"
  end               ##### end menu_choice_method #####
          
          
          
          
          ##### START PROGRAM #####
          ##### START PROGRAM #####
          ##### START PROGRAM #####
          
          
          
  puts "Welcome to the Dungeons & Dragons Dice Generator."
  while true          # nav menu while loop
  
    puts "Please choose from the following menu items."
    nav_menu.each do |p|
      puts p
    end
    nav_menu_selection = gets.chomp.to_i
    
    
    
    if nav_menu_selection == 1
      while true      # dice menu while loop
  
        puts "Which dice would you like to use?"
        dice_menu_array.each do |selection|
          puts selection
        end
        menu_choice = gets.chomp.to_i
        
        menu_action = case menu_choice
          when 1 then menu_choice_method(:four)
          when 2 then menu_choice_method(:six)
          when 3 then menu_choice_method(:eight)
          when 4 then menu_choice_method(:ten)
          when 5 then menu_choice_method(:twelve)
          when 6 then menu_choice_method(:twenty)
          when 7 then break
        end
      
      end           # end dice menu loop
      
    
    
    elsif nav_menu_selection == 2
      
      while true
      
        puts "Please type 'roll' to roll. Otherwise, type 'quit' to quit."
        answer = gets.chomp
        puts
        
        if answer == 'roll'
          @dice_selection_hash.each{|k, v| puts dice_roll(k, v)}
        elsif answer == 'quit'
          break
        else
          puts "Please type 'roll' or 'quit'."
        end
      
      end          # end roll dice loop
      
    
    
    elsif nav_menu_selection == 3
      puts
      puts "Your dice selection:"
      @dice_selection_hash.each{|k, v| puts "#{k}-sided dice: #{v}"}
      puts
    
    
    elsif nav_menu_selection == 4
      break
    
    
    else
      puts "Please type '1', '2', or '3' to make your choice."
      puts
    end
  
  
  end                 # end of nav menu while loop
  ##### END OF LINE #####