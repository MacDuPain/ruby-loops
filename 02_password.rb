def sign_up
    puts "Choisissez un mot de passe"
    print "> "
    password = gets.chomp
    return password
end

def login(password)
    puts "Entrez votre mot de passe"
    attempt = gets.chomp
    if attempt != password
        puts "Essayez encore"
        print "> "
        attempt = gets.chomp
    else
        welcome_screen
    end
end

def welcome_screen
    puts "Bienvenue dans la 4e dimension !"
    puts "Que veux tu savoir ?"
    print "> "
    secret = gets.chomp
    puts "Erreur, communication coupée"
end

def perform
    password = sign_up
    login(password)
end

perform
