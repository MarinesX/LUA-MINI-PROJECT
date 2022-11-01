print("\nWelcome to my mini computer games! ")

while true do
    ::continue::
    io.write("Please insert highest number (enter q to quit): ")
    local input = io.read()
    local guesses = 0

    local max_range = tonumber(input)
    local quit      = tostring(input):lower()

    if quit == "q" then
        print("Okay Quiting..\n")
        os.quit()

    elseif not max_range then
        print("Please insert ONLY number next time! ")
        os.quit()

    elseif max_range then

        if max_range <= 0 then
            print("Please insert number greater than 0 ")
            goto continue
        end
        max_range = tonumber(max_range)
        random_number = math.random(1, max_range)
    end

    while true do 
        ::guess::
        io.write("Guess a number: ")
        local user_guess = tonumber(io.read())

        if not user_guess then
            print("Please insert a number next time! \n")
            goto guess
        end

        if user_guess == random_number then
            print("Yes!! You got it! \n")
            guesses = guesses + 1
            break

        elseif user_guess > random_number then
            print("You above the number!")
            guesses = guesses + 1

        else
            print("You lesser than number")
            guesses = guesses + 1

        end
    end
    print("Your total guess was "..guesses.." guesses")
    print("Your brain power was "..tostring(math.floor((guesses / math.random(guesses)) * 100)).."% AMONG US!\n")
end