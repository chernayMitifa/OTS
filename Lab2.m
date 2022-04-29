%находим вероятность выпадения двух и более черных карт
shans = 0;
shans1 = 0;
for m = 1: 1: 1000000
    Mat = rand (1,4);
    %disp(Mat);
    sum = 0;
for n = 1: 1: 4
    if Mat(1,n)>0.5 
        Mat(1,n)=1;
        sum = sum + 1;
    else 
        Mat(1,n)=0;
    end  
end
    %disp(Mat);
    %disp(sum);
    if sum > 1
        %disp('Ура!');
        shans = shans + 1;
    end
end
disp(shans);

%находим, сколько раз в данных комбинациях выпало три и более тузов

summ=0;

for m = 1: 1: shans
    A = randperm(52);
    for i = 1: 1: 4
        if A(i)>48
            summ=summ+1;
        end
    end
        if summ > 2
            shans1=shans1+1;
            
        end
   summ=0;
    
end
disp(shans1);
