function family(mdl,t)
%Arif Çakır
%090190355
%CRN: 20662
label = predict(mdl,t);
 perf = cell(1,length(label))';
for n = 1:length(perf)
    if strcmp(label(n),t.Person(n))
         perf(n) = {'Right'};
     elseif strcmp(label(n),t.Person(n)) == 0
         perf(n) = {'Wrong'};
    end
end
t3 = table(t.Name,t.Sex,t.Gen,t.Person,label,perf);
t3.Properties.VariableNames = {'Names','Sex','Generation',...
    'Original','Predicted','Accuracy'};
while 1
    x = input('Do you want to see a uitable: ','s');
    switch x
        case {'yes','Yes'}
            uitbl(t3,perf);
            break;
        case {'no','No'}
            break;
        otherwise
            fprintf(2,'\nplease enter yes or no\n\n');
    end
end
while 1
    x = input('Do you want to see a confusion matrix?: ','s');
    switch x
        case {'yes','Yes'}
            confusionmatrix(t3.Original,t3.Predicted);
            break;
        case {'no','No'}
            break;
        otherwise
            fprintf(2,'\nplease enter yes or no\n\n');
    end
end

%I used this loop for performance sheet.
% while 1
%     x = input('do you want to save the table as a sheet?: ','s');
%     switch x
%         case {'yes','Yes'}
%             filename = 'RandomPerformance.xlsx';
%             writetable(t3,filename,'Sheet',1);
%             break;
%         case {'no','No'}
%             break;
%         otherwise
%             fprintf(2,'please enter yes or no');
%     end
% end
end

