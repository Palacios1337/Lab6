module ROMTB;

reg clock;
reg [7:0] address;
wire [31:0] out;

 

ROM ROM1(.address(address), .out(out), .clock(clock));

always begin
#5 clock = ~clock;
end
 

initial begin

	clock <= 1'b0;

   address <= 8'h00;
	#20;
   address <= 8'h04;
	#20;
   address <= 8'h08;
	#20;
   address <= 8'h0c;
	#20;
   address <= 8'h10;
	#20;
   address <= 8'h14;
	#20;
   address <= 8'h18;
	#20;
   address <= 8'h1c;
	#20;
   address <= 8'h20;
	#20;
   address <= 8'h24;
	#20;
   address <= 8'h28;
	#20;
   address <= 8'h2c;
	#20;
   address <= 8'h30;
	#20;
   address <= 8'h34;
	#20;
   address <= 8'h38;
	#20;
   address <= 8'h3c;
	#20;
	address <= 8'h40;
	#20;
   address <= 8'h44;
	#20;
	address <= 8'h48;
	#20;


$finish;
end

endmodule

