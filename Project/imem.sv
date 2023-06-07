module imem(input logic [31:0] a,
	output logic [31:0] rd);
	logic [31:0] RAM[63:0];
	
	initial
		$readmemh("E:\\Uni\\Term 4 - Spring 1401\\Computer Architecture\\HWs\\6\\ans\\riscvtest.txt",RAM);
		assign rd = RAM[a[31:2]]; // word aligned
endmodule
