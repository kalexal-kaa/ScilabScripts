name = input("Введите имя: ","string")
day = input("Введите день рождения: ")
month = input("Введите номер месяца рождения: ")
year = input("Введите год рождения: ")

        switch month
            case 1 then
                days = 30
            case 2 then
                if modulo(year,4) == 0 & modulo(year,100) ~= 0 | modulo(year,400) == 0 then
                    days = 29
                else 
                    days = 28
                end
            case 3 then
                days = 31
            case 4 then
                days = 30
            case 5 then
                days = 31
            case 6 then
                days = 30
            case 7 then
                days = 31
            case 8 then
                days = 31
            case 9 then
                days = 30
            case 10 then
                days = 31
            case 11 then
                days = 30
            case 12 then
                days = 31
            else
                break
            end
            if day > days | day == 0 then
                disp("Incorrect number of the month! Check the consistency of the entered data.")
                return
            end

function num = transnum(num)
    while num >= 10
       num = int(num ./10) + modulo(num,10)
    end
endfunction

function number = namenumber(n)
    count = 0
    m = strsplit(n)
    for i = 1:1:length(n)
        if m(i) == "a" | m(i) == "j" | m(i) == "s" then
            count = count + 1
        elseif m(i) == "b" | m(i) == "k" | m(i) == "t" then
            count = count + 2
        elseif m(i) == "c" | m(i) == "l" | m(i) == "u" then
            count = count + 3
        elseif m(i) == "d" | m(i) == "m" | m(i) == "v" then
            count = count + 4
        elseif m(i) == "e" | m(i) == "n" | m(i) == "w" then
            count = count + 5
        elseif m(i) == "f" | m(i) == "o" | m(i) == "x" then
            count = count + 6
        elseif m(i) == "g" | m(i) == "p" | m(i) == "y" then
            count = count + 7
        elseif m(i) == "h" | m(i) == "q" | m(i) == "z" then
            count = count + 8
        elseif m(i) == "i" | m(i) == "r" then
            count = count + 9
        else
            break
        end
     end
     number = transnum(count)
endfunction

function number = birthnumber(d,m,y)
    number=transnum(transnum(d) + transnum(m) + transnum(y))
endfunction

function pm = psychomatrix(d,m,y)
        mas = 1:16

        mas(1) = int(d ./ 10)
        mas(2) = modulo(d,10)

        if mas(1) == 0 then
           c = mas(2)
        else
           c = mas(1)
        end
        
        if m < 10 then
          mas(3) = 0
          mas(4) = m
      else
          mas(3) = 1
          mas(4) = m - 10
      end
        
        mas(5) = modulo(y,10)
        z = int(y ./ 10)
        mas(6) = modulo(z,10)
        z = int(z ./ 10)
        mas(7) = modulo(z,10)
        z = int(z ./ 10)
        mas(8) = z;

        summa = mas(1) + mas(2) + mas(3) + mas(4) + mas(5) + mas(6) + mas(7) + mas(8)

        mas(9) = int(summa ./ 10)
        mas(10) = modulo(summa,10)

        mas(11) = int((mas(9) + mas(10)) ./ 10)
        mas(12) = modulo((mas(9) + mas(10)),10)

        mas(13) = int((summa - (2 .* c)) ./ 10)
        mas(14) = modulo((summa - (2 .* c)),10)

        mas(15) = int((mas(13) + mas(14)) ./ 10)
        mas(16) = modulo((mas(13) + mas(14)),10)
        
        x1 = ""; y1 = ""; z1 = ""; x2 = ""; y2 = ""; z2 = ""; x3 = ""; y3 = ""; z3 = ""
        
        for i = 1:1:16
            select mas(i)
            case 1 then
                x1 = x1 + "1"
            case 2 then
                y1 = y1 + "2"
            case 3 then
                z1 = z1 + "3"
            case 4 then
                x2 = x2 + "4"
            case 5 then
                y2 = y2 + "5"
            case 6 then
                z2 = z2 + "6"
            case 7 then
                x3 = x3 + "7"
            case 8 then
                y3 = y3 + "8"
            case 9 then
                z3 = z3 + "9"
            end
        end
        
        pm = [x1, y1, z1; x2, y2, z2; x3, y3, z3]
endfunction

disp("Число имени:",namenumber(name))
disp("Число рождения:",birthnumber(day,month,year))
disp("Психоматрица:",psychomatrix(day,month,year))

funcprot(0)
