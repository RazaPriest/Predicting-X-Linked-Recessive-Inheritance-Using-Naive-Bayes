%Arif Çakır
%090190355
%CRN: 20662
clear
clc
close all
rng default
while 1
    a = input('please enter which Family do you want to check (press x to exit): ','s');
    switch a
        case {'Made','Made Family'}
            t1 = readtable('MadeFamily.xlsx');
            bayes(t1);
        case {'Random','Random Family'}
            t1 = readtable('RandomFamily.xlsx');
            bayes(t1);
        case 'x'
            break;
        otherwise
            fprintf(2,"\nThere is no family with this name yet.\n\n");
    end
end