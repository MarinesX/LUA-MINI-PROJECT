print("\nWelcome to my mini computer quiz games! ")

while true do

    io.write("Do you want to play the games? (Enter any key for quiting the game or else enter YES) : ")
    local playing = io.read():lower()


    if playing ~= "yes" then
        os.quit()

    else
        print("Okay! Let's Play the game.. ")

    end

    ---=== Playing The Games ===---

    io.write("What Sum of 1 + 1 equals to..? ")
    answer = io.read():lower()
    score = 0

    if answer == "2" then
        print("Yes! You Correct!")
        score = score + 1

    else
        print("Aww.. you wrong!")
    end


    io.write("What sum of 2 + 2 equals to..? ")
    answer = io.read():lower()

    if answer == "4" then
        print("Yes! You Correct!")
        score = score + 1

    else
        print("Aww.. you wrong!")
    end


    io.write("What Sum of 3 + 3 equals to..? ")
    answer = io.read():lower()

    if answer == "6" then
        print("Yes! You Correct!")
        score = score + 1

    else
        print("Aww.. you wrong!")
    end


    io.write("What CPU stands for..? ")
    answer = io.read():lower()

    if answer == "central processing unit" then
        print("Yes! You Correct!")
        score = score + 1

    else
        print("Aww.. you wrong!")
    end

    print("\nYou got " ..score.." question correct!!")
    print("You have "..tostring((score / 4) * 100).."% BIG BRAINS!!\n")
end