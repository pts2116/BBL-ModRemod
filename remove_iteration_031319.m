
%%% Put this script into a directory with your iterated Scanco files
%%% (ending in ";#" where # is a number). Run this script to get rid of the
%%% ";#" at the end of all files. Obviously, make sure your files are
%%% identifiable without this iteration number.


directory = dir;

for i = 1:length(directory)
    
    
    [PATHSTR,NAME,EXT] = fileparts(directory(i).name);
    
    if length(EXT)>1
    
        if EXT(end-1)==';'
            
            oldname = strcat(sprintf(NAME),sprintf(EXT));
            newname = strcat(sprintf(NAME),sprintf(EXT(1:end-2)));
            
            movefile(oldname,newname)
            
        end
        
    end
end