module xung10Mhz(
input clki,
input rs,
output reg clk
);
//khai bao
parameter n=5;
integer count=0;
//khoi tuan tu
always @(posedge clki,posedge rs)
begin 
	if(rs)
	begin
	count<=0;
	clk<=0;
	end
else 	count=count+2;
end
always @(posedge clki)
begin
	if(count<=5)clk=0;
	if (count>5)clk=1;
	if(count==10)count=0;
end
endmodule
		
			
