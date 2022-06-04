function ShowTestPractice(fis,number)
    y_hat=evalfis(number,fis);
    disp("y : " + number + " = " + GenerateDatasetY2(number));
    disp("y_hat : " + number + " = " + y_hat);
    disp("--------------");
end