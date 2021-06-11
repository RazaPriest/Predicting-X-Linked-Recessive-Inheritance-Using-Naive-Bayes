function bayes(t)
%Arif Çakır
%090190355
%CRN: 20662
t1 = t(:,2:width(t));
mdl = fitcnb(t1,'Person');
while 1
    fprintf('What do you want to predict?:\n a) a single individual.\n b)whole family.\n');
    z = input('please enter a or b (press x to exit): ','s');
    switch z
        case 'a'
            individual(mdl,t);
        case 'b'
            family(mdl,t);
        case 'x'
            break;
        otherwise
            fprintf(2,'\nPlease enter a for individual or b for whole family.\n\n');
    end
end
end