function ShowPlot(Inputs,Targets,Outputs,title)
	figure('Name',title);
    plot(Inputs,Targets);
    hold on 
    A = [0,max(Outputs),min(Outputs),0];
    B = [0,0.5,2.5,5];
    plot(B,A);
    hold off
end