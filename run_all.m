function run_all(experiment_name, level, video_name)
global experimentname
global compute_segs
compute_segs = 1
experimentname = experiment_name
    addpath(genpath('/cs/vml3/mkhodaba/cvpr16/code/Graph_construction/'))
    if strcmp(video_name,'sled_dog_race')
        i = 3
            VSS(video_name,'ucm2level',level,'uselevelfrw', '1', 'ucm2levelfrw', level, 'newmethodfrw', '1', 'stpcas', 'paperoptnrm', 'experiment', experiment_name, 'gt_num', num2str(i));
            validate(experiment_name);
    else
        for i = 1:4
            VSS(video_name,'ucm2level',level,'uselevelfrw', '1', 'ucm2levelfrw', level, 'newmethodfrw', '1', 'stpcas', 'paperoptnrm', 'experiment', experiment_name, 'gt_num', num2str(i));
            validate(experiment_name);
        end
    end

