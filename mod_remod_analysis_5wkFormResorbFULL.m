clear all
clc

tic

comb_01 = dlmread('01_COMBINED_CUT.txt');


comb_01(1,:) = [];
voxel_coords_form = comb_01(:,1:3);
save voxel_coords_form
clear voxel_coords_form

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

wk3_form_new = 0;

for i=1:length(comp)
    seq_0 = comp{i}(1:1);
    seq_1 = comp{i}(2:2);
    seq_2 = comp{i}(3:3);
    seq_3 = comp{i}(4:4);
    seq_4 = comp{i}(5:5);
    seq_5 = comp{i}(6:6);
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
    
    %Counting Formation/Resorption

    if strcmp(seq_1, 'F')
        
        Mod_Remod_Ind(i,2) = 2;
       
        % Week 2 Formation is 2
       
    elseif strcmp(seq_1, 'R')
        
        Mod_Remod_Ind(i,2) = -2;
        % Week 2 Resorption is -2
    end
    
    if strcmp(seq_2, 'F')
        
        Mod_Remod_Ind(i,3) = 3;
       
        % Week 3 Formation is 3
       
    elseif strcmp(seq_2, 'R')
        
        Mod_Remod_Ind(i,3) = -3;
        
        % Week 3 Resorption is -3
 
    end
        
    
    if strcmp(seq_3, 'F')
        
        Mod_Remod_Ind(i,4) = 4;
        
%        wk4 Formation is 4
       
    elseif strcmp(seq_3, 'R')
        
          Mod_Remod_Ind(i,4) = -4;
        
%         wk4 Resorption is -4
         
    end
  
    if strcmp(seq_4, 'F')
        
        Mod_Remod_Ind(i,5) = 5;
        
        % wk5 Formation is 5
       
    elseif strcmp(seq_4, 'R')
        
        Mod_Remod_Ind(i,5) = -5;
        
         % wk 5 Resorption is -5

    end
    
    if strcmp(seq_5, 'F')
        
        Mod_Remod_Ind(i,6) = 6;
        
        % wk6 Formation is 6
        
    elseif strcmp(seq_5, 'R')
        
        Mod_Remod_Ind(i,6) = -6;
        
        % wk6 Resorption is -6
        
    end
    
    if strcmp(seq_6, 'F')
        
        Mod_Remod_Ind(i,7) = 7;
        
        % wk7 Formation is 7
        
    elseif strcmp(seq_6, 'R')
        
        Mod_Remod_Ind(i,7) = -7;
        

        % wk 7 Resorption is -7
        
        
    end 
        
    
    if i == floor(comp_length)/2
        fprintf('\n\nHalfway Through Making the Form_Resorb_Matrix\n\n')
    end
    
end


dlmwrite('Form_Resorb_Matrix.txt',Mod_Remod_Ind,'\t');

wk2_form = sum(sum(Mod_Remod_Ind==2));
wk3_form = sum(sum(Mod_Remod_Ind==3));
wk4_form = sum(sum(Mod_Remod_Ind==4));
wk5_form = sum(sum(Mod_Remod_Ind==5));
wk6_form = sum(sum(Mod_Remod_Ind==6));
wk7_form = sum(sum(Mod_Remod_Ind==7));

% wk1_form=wk1_form*.005^3;
wk2_form=wk2_form*.005^3;
wk3_form=wk3_form*.005^3;
wk4_form=wk4_form*.005^3;
wk5_form=wk5_form*.005^3;
wk6_form=wk6_form*.005^3;
wk7_form=wk7_form*.005^3;

formation_37 = wk3_form+wk4_form+wk5_form+wk6_form+wk7_form;

%wk1_resorb = sum(sum(Mod_Remod_Ind==-1));
wk2_resorb = sum(sum(Mod_Remod_Ind==-2));
wk3_resorb = sum(sum(Mod_Remod_Ind==-3));
wk4_resorb = sum(sum(Mod_Remod_Ind==-4));
wk5_resorb = sum(sum(Mod_Remod_Ind==-5));
wk6_resorb = sum(sum(Mod_Remod_Ind==-6));
wk7_resorb = sum(sum(Mod_Remod_Ind==-7));
%wk1_resorb=wk1_resorb*.005^3;
wk2_resorb=(wk2_resorb*.005^3)*(-1);
wk3_resorb=(wk3_resorb*.005^3)*(-1);
wk4_resorb=(wk4_resorb*.005^3)*(-1);
wk5_resorb=(wk5_resorb*.005^3)*(-1);
wk6_resorb=(wk6_resorb*.005^3)*(-1);
wk7_resorb=(wk7_resorb*.005^3)*(-1);

resorption_37 = wk3_resorb+wk4_resorb+wk5_resorb+wk6_resorb+wk7_resorb;


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

%Actually Formation
formation_37_norm = formation_37/bv2;
%Actually Resorption
resorption_37_norm = resorption_37/bv2;

% remodeling_form_events_37_norm = remodeling_form_events_37/bv2;

%reverse_remod = reverse_remod*.005^3;

var = cell(29,2);

var{1,1} = 'formation_37';
var{2,1} = 'wk2_form';
var{3,1} = 'wk3_form'; 
var{4,1} = 'wk4_form';
var{5,1} = 'wk5_form';
var{6,1} = 'wk6_form';
var{7,1} = 'wk7_form';
var{8,1} = 'resorption_37';
var{9,1} = 'wk2_resorb';
var{10,1} = 'wk3_resorb';
var{11,1} = 'wk4_resorb';
var{12,1} = 'wk5_resorb';
var{13,1} = 'wk6_resorb';
var{14,1} = 'wk7_resorb';
var{15,1} = 'formation_37_norm';
var{16,1} = 'resorption_37_norm';
var{17,1} = 'bv2';
var{18,1} = 'bv3';
var{19,1} = 'bv4';
var{20,1} = 'bv5';
var{21,1} = 'bv6';
var{22,1} = 'bv7';
var{23,1} = 'bvtv2';
var{24,1} = 'bvtv3';
var{25,1} = 'bvtv4';
var{26,1} = 'bvtv5';
var{27,1} = 'bvtv6';
var{28,1} = 'bvtv7';

var{1,2} = formation_37;
var{2,2} = wk2_form;
var{3,2} = wk3_form; 
var{4,2} = wk4_form;
var{5,2} = wk5_form;
var{6,2} = wk6_form;
var{7,2} = wk7_form;
var{8,2} = resorption_37;
var{9,2} = wk2_resorb;
var{10,2} = wk3_resorb;
var{11,2} = wk4_resorb;
var{12,2} = wk5_resorb;
var{13,2} = wk6_resorb;
var{14,2} = wk7_resorb;
var{15,2} = formation_37_norm;
var{16,2} = resorption_37_norm;
var{17,2} = bv2;
var{18,2} = bv3;
var{19,2} = bv4;
var{20,2} = bv5;
var{21,2} = bv6;
var{22,2} = bv7;
var{23,2} = bvtv2;
var{24,2} = bvtv3;
var{25,2} = bvtv4;
var{26,2} = bvtv5;
var{27,2} = bvtv6;
var{28,2} = bvtv7;


xlswrite('Weekly_Remodeling_5wkFormResorbFULL',var)
