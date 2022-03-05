function uitbl(tbl,perf)
%Arif Çakır
%090190355
%CRN: 20662
fig = uifigure;
uit = uitable(fig,'Data',tbl);
r = uistyle('BackgroundColor',[1 0.6 0.6]);
g = uistyle('BackgroundColor',[0.6,1,0.6]);
for n = 1:length(perf)
    if strcmp(perf(n),'Wrong')
        addStyle(uit,r,'row',n);
    elseif strcmp(perf(n),'Right')
        addStyle(uit,g,'cell',[n,6]);
    end
end
end