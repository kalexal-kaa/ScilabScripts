day = input("Введите день рождения: ")
month = input("Введите номер месяца рождения: ")
year = input("Введите год рождения: ")

function num = transnum(num)
    while num >= 10
       num = int(num ./10) + modulo(num,10)
    end
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

disp("Число рождения:",birthnumber(day,month,year))
disp("Психоматрица:",psychomatrix(day,month,year))

funcprot(0)


