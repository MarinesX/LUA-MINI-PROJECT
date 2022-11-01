print("Welcome to my Calculator of Prime Numeric!")

while true do
    ::START::
    io.write("\nPlease insert maximum range for the 'N' number of tables (Q for quiting): ")
    input = io.read()

    Max_range = tonumber(input)
    Quiting = tostring(input):lower()
    Numeric_Table = {}

    if Quiting == "q" then
        print("\nOkay Quitting...")
        os.quit()

    elseif not Max_range then
        print("Please input a number only!\n")
        os.quit()

    elseif Max_range then
        if Max_range <= 1 then
            print("Please input number greater than 1")
            goto START
        end
        Max_range = tonumber(Max_range)
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
    for n = 2, Max_range do
        Cek_Prima(n)
    end
    print("Value pada baris Table terawal adalah: "..Numeric_Table[1])
    print("Value pada baris Table terakhir adalah: "..Numeric_Table[#Numeric_Table])
    print("Total Prime Number in range are: " ..#Numeric_Table)
    TimeTotal = os.clock() - Time0
    print("Time Required",TimeTotal.." miliseconds")
end