require_relative "gamestart.rb"
require_relative "spacewalk.rb"
require_relative "landed.rb"

#///////////////////////////////////
#Landing
#///////////////////////////////////

def landing
    puts "\n"
    puts "You land successfully on the surface of the Moon!"

    landed()
end

#///////////////////////////////////
#MOON ARRIVAL
#///////////////////////////////////

def moon_arival
    puts "\n"
    puts "You hear the radio crackle.."
    puts "\"This is Houston. We see you're approching..\""
    sleep 0.5

    puts "The radio cuts out."
    sleep 0.5
    puts "You remember from the mission briefing that you need to.."
    puts "\n"

    puts "- Lunar Orbit"
    puts "- Initiate Landing"
    puts "\n"

    print "> "
    moon_choice = $stdin.gets.chomp

    if moon_choice == "Lunar Orbit" || moon_choice == "lunar orbit"
        puts "Once your spacecraft enters the gravity of the moon, you fire the thrusters to slow it down and place it in orbit around the moon."
        sleep 1.5

        landing()
    elsif moon_choice == "Initiate landing" || moon_choice == "initiate landing"
        puts "You begin your decent before orbiting for proper landing velocity.."
        sleep 1.5
        puts "You desend above the recommended 'intact landing' trajectory, and your lander crashes across the lunar surface."
    else
        puts "you inter the wrong trajectory and spirial out of control"
    end
end

#///////////////////////////////////
#SPACE TRAVEL / SPACE WALK
#///////////////////////////////////

def space_travel
    puts "\n"
    puts "You engage the main thrusters and you feel the ship jerk forward."

    numb = rand(10)
    if numb.even?
        puts "Everything functions as expected. You confirm your Lunar Trajectory and settle in for the trip."
        sleep 1.5

        moon_arival()
    else
        puts "\n"
        puts "Suddenly, you feel a sharp jolt as something hits your ship."
        puts "You enable the radio, but all you hear is the hiss of static."
        puts "It must have hit the communication dish. You are alone."
        puts "\n"
        sleep 1.5

        spacewalk()
        puts "\n"

        fix = rand(10)
        if numb.even?
            puts "Your engineer suits  for a space walk and fixes the dish. You're back online."
            puts "You message Huston and inform them what happened. You continue to the Moon."
            sleep 1.5

            moon_arival()
        else
            puts "Your engineer suits up and exits the air lock."
            puts "As he\'s climbing out, another part of debree hits and kills him."
            puts "Part of the ship is torn open. You can hear the air gushing out the tear."
            puts "\n"
            sleep 2
            puts "Within moments, the oxygen is depleted. You spend the last few moments of consciousness looking into the void of space."
        end
    end
end

#///////////////////////////////////
#LAUNCH
#///////////////////////////////////

def launch
    puts "\n"
    puts "\n"
    puts "The day has finally come."
    puts "As you and your crew pile into the rocket, you notice how blue the sky looks."
    puts "Within the hour, you'll be tearing through the sky and on your way to the Moon."
    puts "\n"
    sleep 8

    puts "You hear the Mission Operator begin the countdown.."
    sleep 3

    puts "You hear a crackle on the radio.."
    sleep 2

    10.downto(1) do |i|
        puts "\"#{i}\""
        sleep 1.5
    end

    puts "\n"
    puts "As the rockets ignite, you feel your body being thrusted back into your seat."
    puts "As you approch Earth's orbit, do you use Escape Velocity, or Low Earth Orbit?"
    puts "\n"

    print "> "
    orbit = $stdin.gets.chomp
    puts "\n"

    if orbit == "escape velocity" || orbit == "Escape Velocity"
        puts "\n"
        puts "You don't take the time to orbit the earth and check your systems. You continue on your path
into empty space as you are on the wrong trajectory and slowly starve to death.

Don't worry. NASA made a memmorial for you though."
        exit
    elsif orbit == "Low Earth Orbit" || orbit == "low earth orbit"
        puts "\n"
        puts "After achieving low Earth orbit and verifying that all ship’s systems are functional,
it’s then time to fire thrusters and go to the moon."
        space_travel()
    else
        puts "\n"
        puts "You fumble with the controls but input the wrong thing. The mission is lost.."
    end
end
#///////////////////////////////////
#GAME START
#///////////////////////////////////

def start

    gamestart()

    puts "Welcome to Lunar Lander!"
    puts "Are you ready to begin your adventure?"
    puts "\n"
    puts "- Yes"
    puts "- No"
    puts "\n"

    print "> "
    start_game = $stdin.gets.chomp

    if start_game == "Yes" || start_game == "yes"
        launch()
    else
        puts "Fine then.. keep your secrets."
    end
end

start()
