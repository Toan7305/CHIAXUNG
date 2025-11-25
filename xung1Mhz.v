module xung1Mhz
(
	input clki,
	input rs,
	output reg clk
);
parameter n=50;
integer count=0;
always @(posedge clki or posedge rs)
begin
if(rs)
	begin
	count<=0;
	clk<=0;
	end
else 
	begin
	if(count==(n/2-1))
	begin
	clk<=~clk;
	count<=0;
	end
	else 
	count<=count+1;
end
end
endmodule
	
	