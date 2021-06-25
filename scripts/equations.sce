f=figure(); //Создание графического объекта
set(f,'position',[0,0,500,300])
set(f,'figure_name','EQUATIONS');//Создание меток дя полей ввода коэффициентов
lab_a=uicontrol(f,'style','text','string','A=','position', [50, 250,100, 20]);
lab_b=uicontrol(f,'style','text','string','B=','position',[150,250,100, 20]);
lab_c=uicontrol(f,'style','text','string','C=','position',[250,250,100, 20]);// полейвводакоэффициентов
edit_a=uicontrol(f,'style','edit','string','1','position',[50,230,100, 20]);
edit_b=uicontrol(f,'style','edit','string','2','position',[150,230,100, 20]);
edit_c=uicontrol(f,'style','edit','string','1','position',[250,230,100, 20]);//Текстовое поле, определяющее вывод результатов
text_result=uicontrol(f,'style','text','string','','position',[50,80, 450, 20]);//Флажок, отвечающая за выбор типа уравнения
radio_bikv=uicontrol('style','radiobutton','string','Биквадратное у-ие?','value',1,'position',[100,100,200,20]);
BtSolve=uicontrol('style','pushbutton','string','Solve','Callback','Solve','position',[50,50,60,20]);
BtClose=uicontrol('style','pushbutton','string','Close','Callback','_Close','position',[400,50,60,20]);//Функция решения уравнения
function Solve()// Считываем значение переменных из текстовых полей и // преобразовываем их числовому типу
    a=evstr(get(edit_a,'string'));
    b=evstr(get(edit_b,'string'));
    c=evstr(get(edit_c,'string'));
    d=b*b-4*a*c;// Проверяем значение флажка
    if get(radio_bikv,'value')==0
        if d<0
            set(text_result,'string','No Solve');
        else
            x1=(-b+sqrt(d))/2/a;
            x2=(-b-sqrt(d))/2/a;
            set(text_result,'string',"x1 = "+string(x1)+" x2 = "+string(x2));
        end;
    elseif d<0  
        set(text_result,'string','No Solve');
    else  y1=(-b+sqrt(d))/2/a;  
        y2=(-b-sqrt(d))/2/a;  
        if(y1<0)&(y2<0)   
set(text_result,'string','No Solve'); 
elseif (y1>=0)&(y2>=0)  
            x1=sqrt(y1);
            x2=-x1;
            x3=sqrt(y2);
            x4=-x3;
            set(text_result,'string',"x1 = "+string(x1)+" x2 = "+string(x2)+" x3 = "+string(x3)+" x4 = "+string(x4));
              else      
                  if y1>=0           
                       x1=sqrt(y1);
                       x2=-x1;
                   else
                       x1=sqrt(y2);
                       x2=-x1;
                   end;
                   set(text_result,'string',"x1 = "+string(x1)+" x2 = "+string(x2)); 
               end;
           end;
   endfunction// Функция закрытия окна
   function _Close()
    close(f)
   endfunction
funcprot(0)
