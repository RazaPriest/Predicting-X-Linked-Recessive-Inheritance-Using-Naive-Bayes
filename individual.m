function individual(mdl,t)
i = cell(1, width(t)-2);
while 1
    i(1) = {input('Please enter sex of the person: ','s')};
    if strcmp(i(1),'M')||strcmp(i(1),'F')
        break;
    else
        fprintf(2,'\nPlease enter M for male or F for female\n\n');
    end
end
while 1
    i(2) = {input('Please enter generation of the person: ')};
    if double(max(t.Gen))>=double(string(i(2)))
        break;
    else
        fprintf(2,'\nPlease enter a generation that exists in that tree\n\n')
    end
end
while 1
    i(3) = {input('Does the mother of the person have the same illness: ','s')};
    if (strcmp(i(3),'carrier')||strcmp(i(3),'yes')||strcmp(i(3),'no')||strcmp(i(3),'Carrier')||strcmp(i(3),'Yes')||strcmp(i(3),'No'))
        break;
    else
        fprintf(2,'\nPlease enter yes,no or carrier.\n\n');
    end
end
while 1
    i(4) = {input('Does the father of the person have the same illness: ','s')};
    if strcmp(i(4),'yes')||strcmp(i(4),'no')||strcmp(i(4),'Yes')||strcmp(i(4),'No')
        break;
    else
        fprintf(2, '\nPlease enter yes or no.\n\n');
    end
end
ind = cell2table(i,'VariableNames',{'Sex','Gen','Mother','Father'});
indpredict = predict(mdl,ind);
newind = table(i(1),i(2),i(3),i(4),indpredict,'VariableNames',{'Sex','Gen',...
    'Mother','Father','Predicted'});
disp(newind);
end