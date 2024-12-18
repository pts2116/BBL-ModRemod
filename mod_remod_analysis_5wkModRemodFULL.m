clear all
clc

tic

comb_01 = dlmread('01_COMBINED_CUT.txt');


comb_01(1,:) = [];
voxel_coords_remod = comb_01(:,1:3);
save voxel_coords_remod
clear voxel_coords_remod

coord_check01 = comb_01(end,1:3);

maxz01 = max(comb_01(:,3));
maxy01 = max(comb_01(:,2));
maxx01 = max(comb_01(:,1));

rows = length(comb_01);


comp = cell(rows,1);

tv = length(comp);
bv0=0;
bv1=0;
bv2=0;
bv3=0;
bv4=0;
bv5=0;
bv6=0;
bv7=0;



for i = 1:length(comp)
    
    comp{i}='BBBBBBB';
    
end

toc

for i = 1:length(comb_01)
    
    if comb_01(i,4) ~= 20
        
        if comb_01(i,4) == 40
            
            comp{i}(1) = 'R';
            bv0 = bv0+1;
            
        elseif comb_01(i,4) == 60
            
            comp{i}(1) = 'F';
            bv1 = bv1+1;
            
        elseif comb_01(i,4)== 80
            
            comp{i}(1) = 'Q';
            bv1 = bv1+1;
            bv0 = bv0+1;
            
        end
        
        
    end
    
end

clear comb_01

fprintf('\n\nYou''re done with 01!\n\n')
toc

comb_12 = dlmread('12_COMBINED_CUT.txt');


comb_12(1,:) = [];

maxz12 = max(comb_12(:,3));
maxy12 = max(comb_12(:,2)); 
maxx12 = max(comb_12(:,1)); 

z_offset = maxz01-maxz12;
y_offset = maxy01-maxy12;
x_offset = maxx01-maxx12;

comb_12(:,3) = comb_12(:,3) + z_offset;
comb_12(:,2) = comb_12(:,2) + y_offset;
comb_12(:,1) = comb_12(:,1) + x_offset;

coord_check12 = comb_12(end,1:3);

if length(comb_12)~=rows || sum(coord_check12==coord_check01)~=3
    
    error('\n\nError, your files have different number of rows (1_2 from 0_1)\n\n')
    
end


for i = 1:length(comb_12)
    
    if comb_12(i,4) ~= 20
        
        
        
        if comb_12(i,4) == 40
            
            comp{i}(2) = 'R';
            
        elseif comb_12(i,4) == 60
            
            comp{i}(2) = 'F';
            bv2 = bv2+1;
            
        elseif comb_12(i,4)== 80
            
            comp{i}(2) = 'Q';
            bv2 = bv2+1;
            
        end
        
        
    end
    
end

clear comb_12

fprintf('\n\nYou''re done with 12!\n\n')
toc

comb_23 = dlmread('23_COMBINED_CUT.txt');

comb_23(1,:) = [];

maxz23 = max(comb_23(:,3));
maxy23 = max(comb_23(:,2)); 
maxx23 = max(comb_23(:,1)); 

z_offset = maxz01-maxz23;
y_offset = maxy01-maxy23;
x_offset = maxx01-maxx23;

comb_23(:,3) = comb_23(:,3) + z_offset;
comb_23(:,2) = comb_23(:,2) + y_offset;
comb_23(:,1) = comb_23(:,1) + x_offset;

coord_check23 = comb_23(end,1:3);

if length(comb_23)~=rows || sum(coord_check23==coord_check12)~=3
    
    error('\n\nError, your files have different number of rows (2_3 from 1_2)\n\n')
    
end

for i = 1:length(comb_23)
    
    if comb_23(i,4) ~= 20
        
        
        
        if comb_23(i,4) == 40
            
            comp{i}(3) = 'R';
            
        elseif comb_23(i,4) == 60
            
            comp{i}(3) = 'F';
            bv3 = bv3+1;
            
        elseif comb_23(i,4)== 80
            
            comp{i}(3) = 'Q';
            bv3 = bv3+1;
            
        end
    end
    
end

clear comb_23

fprintf('\n\nYou''re done with 23!\n\n')
toc

comb_34 = dlmread('34_COMBINED_CUT.txt');


comb_34(1,:) = [];

maxz34 = max(comb_34(:,3));
maxy34 = max(comb_34(:,2)); 
maxx34 = max(comb_34(:,1)); 

z_offset = maxz01-maxz34;
y_offset = maxy01-maxy34;
x_offset = maxx01-maxx34;

comb_34(:,3) = comb_34(:,3) + z_offset;
comb_34(:,2) = comb_34(:,2) + y_offset;
comb_34(:,1) = comb_34(:,1) + x_offset;

coord_check34 = comb_34(end,1:3);

if length(comb_34)~=rows || sum(coord_check34==coord_check23)~=3
    
    error('\n\nError, your files have different number of rows (3_4 from 2_3)\n\n')
    
end

for i = 1:length(comb_34)
    
    if comb_34(i,4) ~= 20
        
        
        if comb_34(i,4) == 40
            
            comp{i}(4) = 'R';
            
        elseif comb_34(i,4) == 60
            
            comp{i}(4) = 'F';
            bv4 = bv4+1;
            
        elseif comb_34(i,4)== 80
            
            comp{i}(4) = 'Q';
            bv4 = bv4+1;
            
        end
        
    end
    
end

clear comb_34

fprintf('\n\nYou''re done with 34!\n\n')
toc

comb_45 = dlmread('45_COMBINED_CUT.txt');
comb_45(1,:) = [];

maxz45 = max(comb_45(:,3));
maxy45 = max(comb_45(:,2));
maxx45 = max(comb_45(:,1)); 

z_offset = maxz01-maxz45;
y_offset = maxy01-maxy45;
x_offset = maxx01-maxx45;

comb_45(:,3) = comb_45(:,3) + z_offset;
comb_45(:,2) = comb_45(:,2) + y_offset;
comb_45(:,1) = comb_45(:,1) + x_offset;

coord_check45 = comb_45(end,1:3);

if length(comb_45)~=rows || sum(coord_check45==coord_check34)~=3
    
    error('\n\nError, your files have different number of rows (4_5 from 3_4)\n\n')
    
end



for i = 1:length(comb_45)
    
    if comb_45(i,4) ~= 20
        
        
        if comb_45(i,4) == 40
            
            comp{i}(5) = 'R';
            
        elseif comb_45(i,4) == 60
            
            comp{i}(5) = 'F';
            bv5 = bv5+1;
            
        elseif comb_45(i,4)== 80
            
            comp{i}(5) = 'Q';
            bv5 = bv5+1;
            
        end
    end
    
end
  
clear comb_45

fprintf('\n\nYou''re done with 45!\n\n')
toc


comb_56 = dlmread('56_COMBINED_CUT.txt');
comb_56(1,:) = [];

maxz56 = max(comb_56(:,3));
maxy56 = max(comb_56(:,2));
maxx56 = max(comb_56(:,1)); 

z_offset = maxz01-maxz56;
y_offset = maxy01-maxy56;
x_offset = maxx01-maxx56;

comb_56(:,3) = comb_56(:,3) + z_offset;
comb_56(:,2) = comb_56(:,2) + y_offset;
comb_56(:,1) = comb_56(:,1) + x_offset;

coord_check56 = comb_56(end,1:3);

if length(comb_56)~=rows || sum(coord_check56==coord_check45)~=3
    
    error('\n\nError, your files have different number of rows (5_6 from 4_5)\n\n')
    
end



for i = 1:length(comb_56)
    
    if comb_56(i,4) ~= 20
        
        
        if comb_56(i,4) == 40
            
            comp{i}(6) = 'R';
            
        elseif comb_56(i,4) == 60
            
            comp{i}(6) = 'F';
            bv6 = bv6+1;
            
        elseif comb_56(i,4)== 80
            
            comp{i}(6) = 'Q';
            bv6 = bv6+1;
            
        end
    end
    
end
  
clear comb_56

fprintf('\n\nYou''re done with 56!\n\n')
toc


comb_67 = dlmread('67_COMBINED_CUT.txt');
comb_67(1,:) = [];

maxz67 = max(comb_67(:,3));
maxy67 = max(comb_67(:,2));
maxx67 = max(comb_67(:,1)); 

z_offset = maxz01-maxz67;
y_offset = maxy01-maxy67;
x_offset = maxx01-maxx67;

comb_67(:,3) = comb_67(:,3) + z_offset;
comb_67(:,2) = comb_67(:,2) + y_offset;
comb_67(:,1) = comb_67(:,1) + x_offset;

coord_check67 = comb_67(end,1:3);

if length(comb_67)~=rows || sum(coord_check67==coord_check56)~=3
    
    error('\n\nError, your files have different number of rows (6_7 from 5_6)\n\n')
    
end



for i = 1:length(comb_67)
    
    if comb_67(i,4) ~= 20
        
        
        if comb_67(i,4) == 40
            
            comp{i}(7) = 'R';
            
        elseif comb_67(i,4) == 60
            
            comp{i}(7) = 'F';
            bv7 = bv7+1;
            
        elseif comb_67(i,4)== 80
            
            comp{i}(7) = 'Q';
            bv7 = bv7+1;
            
        end
    end
    
end
  
clear comb_67

fprintf('\n\nYou''re done with 67!\n\n')
toc

comp_length = length(comp);
Mod_Remod_Ind = zeros(comp_length,7);
reverse_remod = 0;

%%% BBBBBBB %%%

wk3_amod_new = 0;

for i=1:length(comp)
    seq_0 = comp{i}(1:2);
    seq_1 = comp{i}(2:3);
    seq_2 = comp{i}(3:4);
    seq_3 = comp{i}(4:5);
    seq_4 = comp{i}(5:6);
    seq_5 = comp{i}(6:7);
    seq_6 = comp{i}(7:7);
%    seq_A  = comp{i}(1:2);
%    seq_B  = comp{i}(6:7);
    
    seq_1a = comp{i}(1:3);
    seq_2a = comp{i}(2:4);
    seq_3a = comp{i}(3:5);
    seq_4a = comp{i}(4:6);
    seq_5a = comp{i}(5:7);
    seq_6a = comp{i}(6:7);
    seq_7a = comp{i}(7:7);
    
    % (Actually Equates to Wk 1 Loading)
    if strcmp(seq_1a, 'BBF')
        
        Mod_Remod_Ind(i,3) = 3;
       
        % Week 3 Anabolic Modeling is 3
        wk3_amod_new = wk3_amod_new+1;
       
    elseif strcmp(seq_3a, 'RBB')
        
        Mod_Remod_Ind(i,3) = -3;
        
        % Week 1 Catabolic Modeling is -1
%         wk1_cmod=wk1_cmod+1;
        
    elseif strcmp(seq_1a,'RBF')
        
        Mod_Remod_Ind(i,3) = 33;
        Mod_Remod_Ind(i,1) = -11;
        
        % Week 3 Anabolic Modeling Formation is 33
        % Week 1 Catabolic Modeling Resorption is -11
        
        
    end
        
    % (Actually Equates to Wk 2 Loading)
    if strcmp(seq_2a, 'BBF')
        
        Mod_Remod_Ind(i,4) = 4;
        
%        wk4_amod = wk4_amod+1;
%        wk4 Anaboilic Modeling Formation is 4
       
    elseif strcmp(seq_4a, 'RBB')
        
          Mod_Remod_Ind(i,4) = -4;
        
%         wk2_cmod=wk2_cmod+1;
%         wk2 Catabolic Modeling Resorption is -2
        
    elseif strcmp(seq_2a,'RBF')
        
        Mod_Remod_Ind(i,4) = 44;
        Mod_Remod_Ind(i,2) = -22;
        
         % Week 4 Remodeling Formation is 44
         % Week 2 Remodeling Resorption is -22
  
    end
  
    % (Actually Equates to Wk 3 Loading)
    if strcmp(seq_3a, 'BBF')
        
        Mod_Remod_Ind(i,5) = 5;
        
%        wk5_amod = wk5_amod+1;
        % wk5 Anabolic modeling is 5
       
    elseif strcmp(seq_5a, 'RBB')
        
        Mod_Remod_Ind(i,5) = -5;
        
%        wk3_cmod=wk3_cmod+1;
         % wk 3 Catabolic Modeling is -3
    
    elseif strcmp(seq_3a,'RBF') 
        
        Mod_Remod_Ind(i,5) = 55;
        Mod_Remod_Ind(i,3) = -33;
       

    end
    
    % (Actually Equates to Wk 4 Loading)
    if strcmp(seq_4a, 'BBF')
        
        Mod_Remod_Ind(i,6) = 6;
        
        % wk6 Anabolic modeling is 6
        
   %Included here, but not actually counted in cmod count
    elseif strcmp(seq_6a, 'RB')
        
        Mod_Remod_Ind(i,6) = -6;
        
        % wk4 Catabolic modeling is -4
        
    elseif strcmp(seq_4a,'RBF')
        
        Mod_Remod_Ind(i,6) = 66;
        Mod_Remod_Ind(i,4) = -44;
        
        %         wk6_remod_form is 66;
        %         wk4_remod_res is -44;
        

        
    end
    
    % (Actually Equates to Wk 5 Loading)
    if strcmp(seq_5a, 'BBF')
        
        Mod_Remod_Ind(i,7) = 7;
        
        % wk7 Anabolic modeling is 7
        
    %Included here, but not actually counted in cmod count
    elseif strcmp(seq_7a, 'R')
        
        Mod_Remod_Ind(i,7) = -7;
        
        %        wk3_cmod=wk3_cmod+1;
        % wk 4 Catabolic Modeling is -4
        
    elseif strcmp(seq_5a,'RBF')
        
        Mod_Remod_Ind(i,7) = 77;
        Mod_Remod_Ind(i,5) = -55;
        
        %         wk6_remod_form is 66;
        %         wk4_remod_res is -44;
        
        
    end 
        
    
    if i == floor(comp_length)/2
        fprintf('\n\nHalfway Through Making the Mod_Remod Matrix\n\n')
    end
    
end


dlmwrite('Mod_Remod_Matrix.txt',Mod_Remod_Ind,'\t');

% wk1_amod = sum(sum(Mod_Remod_Ind==1.5))/3;
% wk2_amod = sum(sum(Mod_Remod_Ind==2.5))/2;
wk3_amod = sum(sum(Mod_Remod_Ind==3));
wk4_amod = sum(sum(Mod_Remod_Ind==4));
wk5_amod = sum(sum(Mod_Remod_Ind==5));
wk6_amod = sum(sum(Mod_Remod_Ind==6));
wk7_amod = sum(sum(Mod_Remod_Ind==7));

% wk1_amod=wk1_amod*.005^3;
% wk2_amod=wk2_amod*.005^3;
wk3_amod=wk3_amod*.005^3;
wk4_amod=wk4_amod*.005^3;
wk5_amod=wk5_amod*.005^3;
wk6_amod=wk6_amod*.005^3;
wk7_amod=wk7_amod*.005^3;

anabolic_modeling_37 = wk3_amod+wk4_amod+wk5_amod+wk6_amod+wk7_amod;

%wk1_cmod = sum(sum(Mod_Remod_Ind==-1));
%wk2_cmod = sum(sum(Mod_Remod_Ind==-2));
wk3_cmod = sum(sum(Mod_Remod_Ind==-3));
wk4_cmod = sum(sum(Mod_Remod_Ind==-4));
wk5_cmod = sum(sum(Mod_Remod_Ind==-5));
%wk6_cmod = sum(sum(Mod_Remod_Ind==-6));
%wk7_cmod = sum(sum(Mod_Remod_Ind==-7));
%wk1_cmod=(wk1_cmod*.005^3)*(-1);
%wk2_cmod=(wk2_cmod*.005^3)*(-1);
wk3_cmod=(wk3_cmod*.005^3)*(-1);
wk4_cmod=(wk4_cmod*.005^3)*(-1);
wk5_cmod=(wk5_cmod*.005^3)*(-1);
%wk6_cmod=(wk6_cmod*.005^3)*(-1);
%wk7_cmod=(wk7_cmod*.005^3)*(-1);

catabolic_modeling_35 = wk3_cmod+wk4_cmod+wk5_cmod;


%wk2_remod_form=sum(sum(Mod_Remod_Ind==22))
wk3_remod_form=sum(sum(Mod_Remod_Ind==33));
wk4_remod_form=sum(sum(Mod_Remod_Ind==44));
wk5_remod_form=sum(sum(Mod_Remod_Ind==55));
wk6_remod_form=sum(sum(Mod_Remod_Ind==66));
wk7_remod_form=sum(sum(Mod_Remod_Ind==77));


wk3_remod_form=wk3_remod_form*.005^3;
wk4_remod_form=wk4_remod_form*.005^3;
wk5_remod_form=wk5_remod_form*.005^3;
wk6_remod_form=wk6_remod_form*.005^3;
wk7_remod_form=wk7_remod_form*.005^3;

% wk1_remod_res=sum(sum(Mod_Remod_Ind==-11));
% wk2_remod_res=sum(sum(Mod_Remod_Ind==-22));
% wk3_remod_res=sum(sum(Mod_Remod_Ind==-33));
% wk4_remod_res=sum(sum(Mod_Remod_Ind==-44));
% wk5_remod_res=sum(sum(Mod_Remod_Ind==-55));
% wk6_remod_res=sum(sum(Mod_Remod_Ind==-66));

% wk3_remod_res=wk3_remod_res*.005^3;
% wk4_remod_res=wk4_remod_res*.005^3;
% wk5_remod_res=wk5_remod_res*.005^3;
% wk6_remod_res=wk6_remod_res*.005^3;


remodeling_form_events_37 = wk3_remod_form+wk4_remod_form+wk5_remod_form+wk6_remod_form+wk7_remod_form;

tv = tv*.005^3;

bv0 = bv0*.005^3;
bv1 = bv1*.005^3;
bv2 = bv2*.005^3;
bv3 = bv3*.005^3;
bv4 = bv4*.005^3;
bv5 = bv5*.005^3;
bv6 = bv6*.005^3;
bv7 = bv7*.005^3;

bvtv0 = bv0/tv;
bvtv1 = bv1/tv;
bvtv2 = bv2/tv;
bvtv3 = bv3/tv;
bvtv4 = bv4/tv;
bvtv5 = bv5/tv;
bvtv6 = bv6/tv;
bvtv7 = bv7/tv;

anabolic_modeling_37_norm = anabolic_modeling_37/bv2;

catabolic_modeling_35_norm = catabolic_modeling_35/bv2;

remodeling_form_events_37_norm = remodeling_form_events_37/bv2;


var = cell(31,2);

var{1,1} = 'anabolic_37';
var{2,1} = 'wk3_amod'; 
var{3,1} = 'wk4_amod';
var{4,1} = 'wk5_amod';
var{5,1} = 'wk6_amod';
var{6,1} = 'wk7_amod';
var{7,1} = 'catabolic_35';
var{8,1} = 'wk3_cmod';
var{9,1} = 'wk4_cmod';
var{10,1} = 'wk5_cmod';
var{11,1} = 'remod_form_37';
var{12,1} = 'wk3_remod_form';
var{13,1} = 'wk4_remod_form';
var{14,1} = 'wk5_remod_form';
var{15,1} = 'wk6_remod_form';
var{16,1} = 'wk7_remod_form';
var{17,1} = 'anabolic_modeling_37_norm';
var{18,1} = 'catabolic_modeling_35_norm';
var{19,1} = 'remodeling_form_events_37_norm';
var{20,1} = 'bv2';
var{21,1} = 'bv3';
var{22,1} = 'bv4';
var{23,1} = 'bv5';
var{24,1} = 'bv6';
var{25,1} = 'bv7';
var{26,1} = 'bvtv2';
var{27,1} = 'bvtv3';
var{28,1} = 'bvtv4';
var{29,1} = 'bvtv5';
var{30,1} = 'bvtv6';
var{31,1} = 'bvtv7';

var{1,2} = anabolic_modeling_37;
var{2,2} = wk3_amod; 
var{3,2} = wk4_amod;
var{4,2} = wk5_amod;
var{5,2} = wk6_amod;
var{6,2} = wk7_amod;
var{7,2} = catabolic_modeling_35;
var{8,2} = wk3_cmod;
var{9,2} = wk4_cmod;
var{10,2} = wk5_cmod;
var{11,2} = remodeling_form_events_37;
var{12,2} = wk3_remod_form;
var{13,2} = wk4_remod_form;
var{14,2} = wk5_remod_form;
var{15,2} = wk6_remod_form;
var{16,2} = wk7_remod_form;
var{17,2} = anabolic_modeling_37_norm;
var{18,2} = catabolic_modeling_35_norm;
var{19,2} = remodeling_form_events_37_norm;
var{20,2} = bv2;
var{21,2} = bv3;
var{22,2} = bv4;
var{23,2} = bv5;
var{24,2} = bv6;
var{25,2} = bv7;
var{26,2} = bvtv2;
var{27,2} = bvtv3;
var{28,2} = bvtv4;
var{29,2} = bvtv5;
var{30,2} = bvtv6;
var{31,2} = bvtv7;


xlswrite('Weekly_Remodeling_5wkModRemodFULL',var)