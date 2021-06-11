function confusionmatrix(original,predicted)
%Arif Çakır
%090190355
%CRN: 20662
C = confusionmat(original,predicted);
label = tabulate(original);
cc = confusionchart(C,label(1:3));
cc.ColumnSummary = 'column-normalized';
cc.RowSummary = 'row-normalized';
cc.Title = 'Classification of the Pedigree Tree Using Naive Bayes Classifier';
end