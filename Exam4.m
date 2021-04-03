clc
n=input('Please enter a number: ');
sequence=n;g=0;
while isempty(find(g==sequence(1:length(sequence)-1), 1))
    g=0;k=[];
    m=num2str(n);
    for i=1:length(m)
        k(i)=str2num(m(i));
    end
    for i=1:length(k)
        g=g+k(i)^2;
    end
    sequence=[sequence g];
    n=g;
end
sequence
sequence_length=length(sequence)