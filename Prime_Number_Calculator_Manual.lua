---@diagnostic disable: undefined-field
::CONTINUE::
io.write("Welcome to my Calculator of Prime Numeric! Enter 'Q' to quit / 'Y' to continue.. ")
local answer = io.read():lower()
kalkulator = false

if answer == 'q' then
    print("Okay quitting..\n")
    os.quit()
end

if answer == "y" then
    kalkulator = true

else
    print("\nInput 'P' or 'Y' please!")
    goto CONTINUE
end


while kalkulator do
    ::START::
    -- Ask Lowest range number for tables
    io.write("\nPlease insert minimum range for lowest N'th number(Q for quiting): ")
    input_lowest = io.read()

    if input_lowest:lower() == "q" then
        os.quit()
    end

    -- Ask Highest range number for top tables
    io.write("\nPlease insert maximum range for the 'N' number of tables(Q for quiting): ")
    input_highest = io.read()

    if input_highest:lower() == "q" then
        os.quit()
    end

    -- Converting Input idk how lol
    Min_range = tonumber(input_lowest)
    Max_range = tonumber(input_highest)
    Numeric_Table = {}

    if not Max_range  or not Min_range then
        print("Please input a number only!\n")
        os.quit()

    elseif Max_range  and Min_range then
        if (Min_range <= 1) or (Max_range <= Min_range) then
            print("Please input number greater than 1 or greater than minimum number!")
            goto START
        end
        Max_range = tonumber(Max_range)
        Min_range = tonumber(Min_range)
    end


    function Cek_Prima(number)
        --Cek jika ada angka 1, maka bukan primer
        if number <= 1 then return end

        if number == 2 then
            Numeric_Table[#Numeric_Table+1] = number

            --Cek jika angka adalah bilangan genap dan bukan 2, maka return false
        elseif number > 2 and number % 2 == 0 then
            return
        else

            --Pembagian angka ganjil hingga bilangan akar dari 'number' [module]
            div = math.floor(math.sqrt(number))
            for j = 3, 1+div, 2 do
                if number % j == 0 then return end
            end
            Numeric_Table[#Numeric_Table+1] = number
        end
    end

    ---=== TEST FUNCTION ===---
    Time0 = os.clock()
    print("\nPlease Wait the calculator...")

    for n = Min_range, Max_range do
        Cek_Prima(n)
    end

    print("\nValue pada baris Table terawal adalah: "..Numeric_Table[1], "\nValue median adalah: "..Numeric_Table[math.ceil(#Numeric_Table / 2)])
    print("Value/Numeric pada baris Table terakhir adalah: "..Numeric_Table[#Numeric_Table])
    print("Total Prime Number in range are: " ..#Numeric_Table)

    TimeTotal = os.clock() - Time0
    print("Time Required",TimeTotal.." miliseconds")
end