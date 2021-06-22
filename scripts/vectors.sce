F = input("Введите номер формы: ")
if F == 0 then
    disp("Неверный номер формы!")
    return
end
V = input("Введите номер вида: ")
if F == 1 then
    disp("1."+string(V)+" = "+"0 + 1."+string(V - 1))
    return
end
H = F
if modulo(F,2) ~= 0 then
G = F + 1
F = F - 1
else
G = F
end
M = F
n = 0
while modulo(M,2) == 0
M = M ./2
n = n + 1
end
f1 = (F + (2 .^n))./(2 .*(2 .^n))
v1 = V - log2(F ./(2 .*f1 - 1)) - 1
f2 = G ./2
v2 = V - 1
disp(string(H)+"."+string(V)+" = "+string(f1)+"."+string(v1)+" + "+string(f2)+"."+string(v2))
