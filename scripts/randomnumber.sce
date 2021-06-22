lim = input("Введите число, больше которого нельзя загадывать: ")
disp("Загадано число от 1 до " + string(lim))
x = int(rand() .* lim) + 1
num = 0
while x ~= num
    num = input("Введите число: ")
    if x < num then
        disp("Мое число меньше")
    elseif x > num then
        disp("Мое число больше")
    else
        disp("Число угадано!")
    end
end
