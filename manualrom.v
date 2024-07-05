module manualrom(

input [7:0] pc,
output reg [31:0] instruction

); 


reg [31:0] rom [27:0]; 
integer i;


initial begin 

	for (i = 0; i <20 ; i = i+1) begin
	
		rom[i] = 32'b00000000000000000000000000000000; 		
		
	end 
	
end          
                                                                                                                                            
																																														
always @(*) begin


//factorial 
//		rom[0] <= 32'h00600513;
//		rom[1] <= 32'h00c000ef;
//		rom[2] <= 32'h00a02023;			
//		rom[3] <= 32'h0400006f;
//		rom[4] <= 32'hff810113;
//		rom[5] <= 32'h00112223;
//		rom[6] <= 32'h00a12023;
//		rom[7] <= 32'h00100293;	
//		rom[8] <= 32'h00551863;
//		rom[9] <= 32'h00100513;
//		rom[10] <= 32'h00810113;
//		rom[11] <= 32'h00008067; 
//		
//		rom[12] <= 32'hfff50513;
//		rom[13] <= 32'hfddff0ef;
//		rom[14] <= 32'h00012303;	
//		rom[15] <= 32'h00412083;
//		rom[16] <= 32'h00810113;
//		rom[17] <= 32'h02650533;
//		rom[18] <= 32'h00008067;
//		rom[19] <= 32'h0000007F;
		
		
		rom[0] <= 32'h00600513;
		rom[1] <= 32'h008000ef;		
		rom[2] <= 32'h0400006f;
		rom[3] <= 32'hff810113;
		rom[4] <= 32'h00112223;
		rom[5] <= 32'h00a12023;
		rom[6] <= 32'h00100293;	
		rom[7] <= 32'h00551863;
		rom[8] <= 32'h00100513;
		rom[9] <= 32'h00810113;
		rom[10] <= 32'h00008067; 
	
		rom[11] <= 32'hfff50513;
		rom[12] <= 32'hfddff0ef;
		rom[13] <= 32'h00012303;	
		rom[14] <= 32'h00412083;
		rom[15] <= 32'h00810113;
		rom[16] <= 32'h02650533;
		rom[17] <= 32'h00008067;
		rom[18] <= 32'h00a02023;	
		rom[19] <= 32'h0000007F;
		
		
		instruction = rom[pc];

////factorial with NOPs
//		rom[0] <= 32'h00600513;
//		rom[1] <= 32'h014000ef;
//		rom[2] <= 32'h000c8c93;//NOP
//		rom[3] <= 32'h00a02023;			
//		rom[4] <= 32'h05c0006f;
//		rom[5] <= 32'h000c8c93;//NOP
//		rom[6] <= 32'hff810113;
//		rom[7] <= 32'h000c8c93;//NOP
//		rom[8] <= 32'h00112223;
//		rom[9] <= 32'h00a12023;
//		rom[10] <= 32'h00100293;	
//		rom[11] <= 32'h000c8c93;//NOP
//		rom[12] <= 32'h00551c63;
//		rom[13] <= 32'h000c8c93;//NOP
//		rom[14] <= 32'h00100513;
//		rom[15] <= 32'h00810113;
//		rom[16] <= 32'h00008067; 
//		rom[17]  <= 32'h000c8c93;//NOP
//		
//		rom[18] <= 32'hfff50513;
//		rom[19] <= 32'hfcdff0ef;
//		rom[20]  <= 32'h000c8c93; //NOP
//		rom[21] <= 32'h00012303;	
//		rom[22] <= 32'h00412083;
//		rom[23] <= 32'h00810113;
//		rom[24] <= 32'h02650533;
//		rom[25] <= 32'h00008067;
//		rom[26] <= 32'h000c8c93;//NOP
//		rom[27] <= 32'h0000007F;

//ADDITIONAL PROGRAM FOR TESTING BNE and BEQ

//		rom[0] <= 32'h00600513;
//		rom[1] <= 32'h00100293;
//		rom[2] <= 32'h00150313;
//		rom[3] <= 32'h00551463;
//		rom[4] <= 32'h00500513;
//		rom[5] <= 32'hffd50513;	
//		rom[6] <= 32'hffe50513;
//		rom[7] <= 32'h00612023;
//		rom[8] <= 32'h02a30533;
//		rom[9] <= 32'h00650463; //beq
//		rom[10] <= 32'h00050513;
//		rom[11] <= 32'h00428293;
//		rom[12] <= 32'h00012903;	
//		rom[13] <= 32'h03228533;
//		rom[14] <= 32'h0000007F;


//full program 1

//		rom[0] <= 32'h00000093;
//		rom[1] <= 32'h01000113;
//		rom[2] <= 32'h06400193;
//		rom[3] <= 32'h00800213;
//		rom[4] <= 32'h002082b3;
//		rom[5] <= 32'h00418333;
//		rom[6] <= 32'h0050a023;
//		rom[7] <= 32'h00612223;
//		rom[8] <= 32'h0000007F;


//full program 2

//		rom[0] <= 32'h00800293;
//		rom[1] <= 32'h00f00313;
//		rom[2] <= 32'h0062a023;
		
//		rom[3] <= 32'h005303b3;
		
//		rom[4] <= 32'h40530e33;
//		rom[5] <= 32'h03c384b3;
		
//		rom[6] <= 32'h00428293;
//		rom[7] <= 32'hffc2a903;
//		rom[8] <= 32'h00291913; 
//		
//		rom[9] <= 32'h00090913; 
//		rom[10] <= 32'h0122a023; 
//		rom[11] <= 32'h0000007F;


//modified program 2

//		rom[0] <= 32'h00800293;
//		rom[1] <= 32'h00f00313;
//		rom[2] <= 32'h0062a023;		
		
//		rom[3] <= 32'h00428293;
//		rom[4] <= 32'hffc2a903;
//		rom[5] <= 32'h00291913; //
		
//		rom[6] <= 32'h00090913; //
//		rom[7] <= 32'h0122a023; //
//		rom[8] <= 32'h0000007F;


end


endmodule 