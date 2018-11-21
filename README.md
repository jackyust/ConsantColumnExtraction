Find Columns which have all the constant values

Generate test data:

clear; 
n = 10; 
c1 = repmat(3,[n,1]); % n times of value 3 
c2 = rand(n,1); % n values 
c3 = repmat(NaN, [n,1]); 
c4 = c3; 
c4(4) = 2; 
c5 = repmat(missing,[n,1]) 
c6 = cellstr(repmat('test',10,1)) 
c7 = c6; 
c7{7} = 'hello'; 
c8 = repmat(false,[n,1]); 
c9 = c8; 
c9(9) = true;

T = table(c1,c2,c3,c4,c5,c6,c7,c8,c9);

cellData = table2cell(T); 
constantColumnIndex = constantColumnExtraction(cellData);

constantColumnNames = T.Properties.VariableNames(constantColumnIndex);
