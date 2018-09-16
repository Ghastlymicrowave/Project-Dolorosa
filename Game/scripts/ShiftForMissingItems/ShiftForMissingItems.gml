array = obj_control.inv


var i
for (i = 0;i < 10; i ++)
{
if i = 9 then break 

if array[i,0] = 0
	{
	array[i,0] = array[i+1,0]
	array[i,1] = array[i+1,1]
	array[i,2] = array[i+1,2]
	
	array[i+1,0]=0
	array[i+1,1]=0
	array[i+1,2]=0
	}
//	if i = obj_control.numOfItems then break

}


obj_control.inv = array