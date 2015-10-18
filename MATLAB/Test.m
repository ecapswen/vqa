%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Evaluate the proposed VQA algorithm
%
% Name: Peng Peng
% Contact: dante.peng@gmail.com
% Date: Oct 17, 2015
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Test(database)
if strcmp(database, 'LiveMobile')
    modes = {'phone', 'tablet'};
    for m = 1:length(modes)
        WriteResultLine(modes{m}, 'a');
        for scale = [64 128 256]
            for dist_type = [-2 1 3 4 5]
                TestLiveMobile(modes{m}, scale, dist_type);
            end
        end
    end
end
end