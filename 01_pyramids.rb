def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    floors = gets.to_i
    puts "Voici la pyramide :"
    
    if floors >= 1 && floors <= 25
      (1..floors).each do |i|
        blank = " " * (floors - i)
        stairs = "#" * (2 * i - 1)
        puts blank + stairs
        break if i == (floors + 1) / 2 
      end
      
      ((floors + 1) / 2 - 1).downto(1) do |i|
        blank = " " * (floors - i)
        stairs = "#" * (2 * i - 1)
        puts blank + stairs
      end
    else
      puts "Choisir un nombre entre 1 et 25"
    end
end

wtf_pyramid