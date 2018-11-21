function [constantColumnIndex] = constantColumnExtraction(cellData)
constantColumnIndex = [];
[nRow, nColumn] = size(cellData);
for i = 1:nColumn
	isEqual = false(nRow,1);
	for j = 1:nRow
		isEqual(j) = isequaln(cellData(j,i),cellData(1,i)); % isequaln: isequal does not consider NaNs to be equal, while isequaln does.
	end        
	if sum(isEqual) == nRow
		constantColumnIndex = [constantColumnIndex i];
	end
end