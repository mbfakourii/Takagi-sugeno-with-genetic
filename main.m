clc;
clear;
close all;

%% Load Data
data=LoadData();

%% Generate Basic FIS
fis=CreateInitialFIS(data);


%% Tarin Using GA
fis=TrainFuzzyUsingGA(fis,data);

%fuzzy(fis);
%% Results

% Train Data
TrainOutputs=evalfis(data.TrainInputs,fis);
PlotResults(data.TrainTargets,TrainOutputs,'Train Data');

% Test Data
TestOutputs=evalfis(data.TestInputs,fis);
PlotResults(data.TestTargets,TestOutputs,'Test Data');

disp("MSE Train = " + mse(data.TrainTargets, TrainOutputs));
disp("MSE Test = " + mse(data.TestTargets, TestOutputs));
disp(' ');

% ---------------------

figure('Name','Train Data');
plot(data.TrainInputs,data.TrainTargets);

figure('Name','Train Data Predict');
plot(data.TrainInputs,TrainOutputs);

% ---------------------

figure('Name','Test Data');
plot(data.TestInputs,data.TestTargets);

figure('Name','Test Data Predict');
plot(data.TestInputs,TestOutputs);

ShowTestPractice(fis,0.5);
ShowTestPractice(fis,1.25);
ShowTestPractice(fis,2.7);
ShowTestPractice(fis,3);
ShowTestPractice(fis,4.2);



ShowPlot(data.TestInputs,data.TestTargets,TestOutputs,"Test");
ShowPlot(data.TrainInputs,data.TrainTargets,TrainOutputs,"Train");
