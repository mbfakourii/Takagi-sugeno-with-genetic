function fis=CreateInitialFIS(data)
    options = genfisOptions('FCMClustering','MaxNumIteration' ,100);
    
    fis=genfis(data.TrainInputs,data.TrainTargets,options);
end