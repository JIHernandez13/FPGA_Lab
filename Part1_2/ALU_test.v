module ALU_test;
reg 			Sw0;
    reg 			Sw1;
    reg			Sw2;
    reg 			Sw3;
    reg 			Sw4;
    reg 			Sw5;
    reg 			Sw6;
    reg 			Sw7;
    reg			Btn0;
    wire [7:0]	SSD;
    wire [2:0] CompOut;
ALU_top ALU_uut(Sw0,Sw1,Sw2,Sw3,Sw4,Sw5,Sw6,Sw7,Btn0,SSD,CompOut);
initial
begin
Sw3=0; Sw2=1; Sw1=1; Sw0=1; //X
Sw7=0; Sw6=0; Sw5=1; Sw4=0; //Y
Btn0=0;//Adder
#10 Sw3=0; Sw2=1; Sw1=1; Sw0=1; //X
Sw7=0; Sw6=0; Sw5=1; Sw4=0; //Y
Btn0=1;//Subtracotr

#10 Sw3=0; Sw2=1; Sw1=0; Sw0=1; //X
Sw7=0; Sw6=1; Sw5=1; Sw4=0; //Y
Btn0=0;//Adder
#10 Sw3=0; Sw2=1; Sw1=0; Sw0=1; //X
Sw7=0; Sw6=1; Sw5=1; Sw4=0; //Y
Btn0=1;//Subtracotr

#10 Sw3=0; Sw2=1; Sw1=0; Sw0=0; //X
Sw7=0; Sw6=0; Sw5=0; Sw4=1; //Y
Btn0=0;//Adder
#10 Sw3=0; Sw2=1; Sw1=0; Sw0=0; //X
Sw7=0; Sw6=0; Sw5=0; Sw4=1; //Y
Btn0=1;//Subtracotr

end 
endmodule