V = input("Введите номер вида: ")
disp("1."+string(V)+" = "+"0 + 1."+string(V - 1))
q = 2 .^(V - 2)
for i = 2:1:q
   if modulo(i,2) ~= 0 then
   G = i + 1
   F = i - 1
   else
   G = i
   F = i
   end
   M = F
   n = 0
   while modulo(M,2) == 0
   M = M ./2
   n = n + 1
   end
   f1 = (F + (2 .^n))./(2 .*(2 .^n))
   v1 = V - n - 1
   f2 = G ./2
   v2 = V - 1
   disp(string(i)+"."+string(V)+" = "+string(f1)+"."+string(v1)+" + "+string(f2)+"."+string(v2)) 
end

