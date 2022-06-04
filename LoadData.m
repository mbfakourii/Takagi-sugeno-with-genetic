function data=LoadData()
    N=500;
    [x1_train,y_train] = GenerateDatasetY(round(0.70*N));
    [x1_test,y_test] = GenerateDatasetY(round(0.30*N));
 
    % Train Data
    TrainInputs=x1_train';
    TrainTargets=y_train';
    
    % Test Data
    TestInputs=x1_test';
    TestTargets=y_test';
    
    % Export
    data.TrainInputs=TrainInputs;
    data.TrainTargets=TrainTargets;
    data.TestInputs=TestInputs;
    data.TestTargets=TestTargets;
end