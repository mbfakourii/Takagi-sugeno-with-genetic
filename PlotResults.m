function PlotResults(Targets, Outputs, Name)

    figure;

    Errors=Targets-Outputs;

    MSE=mean(Errors.^2);
    RMSE=sqrt(MSE);
    
    error_mean=mean(Errors);
    error_std=std(Errors);

    subplot(2,2,[1 2]);
    plot(Targets,'k');
    hold on;
    plot(Outputs,'r');
    legend('Target','Output');
    title(Name);
    xlabel('Sample Index');
    grid on;

    subplot(2,2,3);
    plot(Errors);
    legend('Error');
    title(['MSE = ' num2str(MSE) ', RMSE = ' num2str(RMSE)]);
    grid on;

    subplot(2,2,4);
    histfit(Errors, 50);
    title(['Error Mean = ' num2str(error_mean) ', Error St.D. = ' num2str(error_std)]);

end