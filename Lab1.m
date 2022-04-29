
shans = 0;

for m = 1: 1: 1000000
    Mat = rand (1,4);
    %disp(Mat);
    sum = 0;
for n = 1: 1: 4
    if Mat(1,n)>0.9231 
        Mat(1,n)=1;
        sum = sum + 1;
    else 
        Mat(1,n)=0;
    end  
end
    %disp(Mat);
    %disp(sum);
    if sum > 3
        %disp('Ура!');
        shans = shans + 1;
    end
end
disp(shans);