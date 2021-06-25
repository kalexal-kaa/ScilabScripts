day = input("Введите день рождения: ")
month = input("Введите номер месяца рождения: ")
year = input("Введите год рождения: ")

        select month
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

function s = osthoroscope(y)
     while y > 12
            y = y - 12
       end     
       select y
            case 1 then
                s = "cock"
            case 2 then
                s = "dog"
            case 3 then
                s = "pig"
            case 4 then
                s = "rat"
            case 5 then
                s = "bull"
            case 6 then
                s = "tiger"
            case 7 then
                s = "rabbit"
            case 8 then
                s = "the Dragon"
            case 9 then
                s = "snake"
            case 10 then
                s = "horse"
            case 11 then
                s = "goat"
            case 12 then
                s = "monkey"
            else
                s = "undefined value"
            end
endfunction

function s = zodiachoroscope(n,month)
        if month==3&n>20|month==4&n<21 then
            s = "Aries"
        elseif month==4&n>20|month==5&n<22 then 
            s = "Taurus"
        elseif month==5&n>21|month==6&n<22 then
            s = "Gemini"
        elseif month==6&n>21|month==7&n<23 then
            s = "Cancer"
        elseif month==7&n>22|month==8&n<22 then
            s = "Leo"
        elseif month==8&n>21|month==9&n<24 then 
            s = "Virgo"
        elseif month==9&n>23|month==10&n<24 then 
            s = "Libra"
        elseif month==10&n>23|month==11&n<23 then 
            s = "Scorpio"
        elseif month==11&n>22|month==12&n<23 then 
            s = "Sagittarius"
        elseif month==12&n>22|month==1&n<21 then 
            s = "Capricorn"
        elseif month==1&n>20|month==2&n<20 then
            s = "Aquarius"
        elseif month==2&n>19|month==3&n<21 then 
            s = "Pisces"
        else
            s = "undefined value"
        end
endfunction

function s = slavianhoroscope(n,month)
    if month==3&n>9|month==4&n<11 then
        s = "ermine"
    elseif month==4&n>9|month==5&n<11 then 
        s = "toad"
    elseif month==5&n>9|month==6&n<11 then 
        s = "grasshopper"
    elseif month==6&n>9|month==7&n<11 then 
        s ="hamster"
    elseif month==7&n>9|month==8&n<11 then 
        s = "snail"
    elseif month==8&n>9|month==9&n<11 then 
        s = "ant"
    elseif month==9&n>9|month==10&n<11 then 
        s = "cockchafer"
    elseif month==10&n>9|month==11&n<11 then 
        s = "beaver"
    elseif month==11&n>9|month==12&n<11 then 
        s = "dog"
    elseif month==12&n>9|month==1&n<11 then 
        s = "bear"
    elseif month==1&n>9|month==2&n<11 then 
        s = "wolverine"
    elseif month==2&n>9|month==3&n<11 then 
        s = "raven"
        else 
            s = "undefined value"
        end
endfunction

function s = egypthoroscope(n,month)
     if month==1&n>0&n<8|month==6&n>18&n<29|month==9&n>0&n<8|month==11&n>17&n<27 then
         s = "Nile"
        elseif month==1&n>7&n<22|month==2&n>0&n<12 then 
            s = "Amon-Ra"
        elseif month==1&n>21&n<32|month==9&n>7&n<23 then 
            s = "Mut"
        elseif month==2&n>11&n<30|month==8&n>19&n<32 then 
            s = "Geb"
        elseif month==3&n>10&n<32|month==10&n>17&n<30|month==12&n>18&n<32 then
            s = "Isida"
        elseif month==3&n>0&n<11|month==11&n>26|month==12&n<19 then
            s = "Osiris"
        elseif month==4&n>0&n<20|month==11&n>7&n<18 then
            s = "Tot"
        elseif month==5&n>0&n<8|month==4&n>19&n<31|month==8&n>11&n<20 then
            s = "Gor"
        elseif month==5&n>7&n<28|month==6&n>28|month==7&n<14 then
            s = "Anubis"
        elseif month==5&n>27|month==6&n<19|month==9&n>27|month==10&n<3 then
            s = "Set"
        elseif month==7&n>13&n<29|month==9&n>22&n<28|month==10&n>2&n<18 then
            s = "Bastet"
        elseif month==7&n>28|month==8&n<12|month==10&n>29|month==11&n<8 then
            s = "Secmet"
        else 
            s = "undefined value"
        end
endfunction

disp("On the eastern horoscope:", osthoroscope(year))
disp("On the zodiacal horoscope:",zodiachoroscope(day,month))
disp("On the Slavic horoscope:",slavianhoroscope(day,month))
disp("On the Egyptian horoscope:",egypthoroscope(day,month))
