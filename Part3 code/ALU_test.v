module ALU_test;
reg sw0,sw1,sw2,sw3,sw4,sw5,sw6,sw7,sw8,sw9,sw10,sw11,sw12,sw13,sw14,sw15;  // 1st 8 are 1 number, last 8 are the 2nd number
    reg	btn0,btn1;  // todo: put a note as to what these buttons do? Or name them better.
    wire [7:0]	ssd;  // note: wtf is this?
    wire [2:0] comparator_out;
alu_top alu_uut(sw0,sw1,sw2,sw3,sw4,sw5,sw6,sw7,sw8,sw9,sw10,sw11,sw12,sw13,sw14,sw15,btn0,btn1,ssd,comparator_out);
initial
begin

/* 

We should split the testing like this,

ADDITION
    test that normal 8-bit addition works....
    test that 8-bit addition works w/ overflow (i.e. 0xff + 0x01 = 0x00 w/ C = 1)

SUBTRACTION
    test that normal 8-bit subtraction works....
    test that 8-bit subtraction works w/ underflow (i.e. 0xff + 0x01 = 0x00 w/ C = 1)

COMPARATOR
    x>y ? this should be pretty easy to test with different inputs

MULTIPLEXER
Multiplex in the 8 bit result and switch between upper and lower 4 bits to show out.

 */

//todo: get the decimal/ hex numbers out here so i'm not translating this everytime please.
sw7=0; sw6=0; sw5=1; sw4=0; sw3=0; sw2=1; sw1=1; sw0=1; //x  //note: msb or lsb??
sw15=0; sw14=0; sw13=1; sw12=0; sw11=0; sw10=1; sw9=1; sw8=1; //y
btn0=0;//adder  //todo: put the result expected here
btn1=0;
#10 btn1=1;
#10 sw7=0; sw6=0; sw5=1; sw4=0; sw3=0; sw2=1; sw1=1; sw0=1; //x
sw15=0; sw14=0; sw13=1; sw12=0; sw11=0; sw10=1; sw9=1; sw8=1; //y
btn0=0;//subtractor //todo: put the result expected here
btn1=0;
#10 btn1=1;

#10 sw7=1; sw6=0; sw5=1; sw4=0; sw3=0; sw2=1; sw1=1; sw0=1; //x
sw15=0; sw14=0; sw13=1; sw12=1; sw11=0; sw10=1; sw9=1; sw8=1; //y
btn0=0;//adder
btn1=0;
#10 btn1=1;
#10 sw7=1; sw6=0; sw5=1; sw4=0; sw3=0; sw2=1; sw1=1; sw0=1; //x
sw15=0; sw14=0; sw13=1; sw12=1; sw11=0; sw10=1; sw9=1; sw8=1; //y
btn0=0;//subtractor
btn1=0;
#10 btn1=1;


/*
NOTE: In general, it's good to describe these test cases right above where you start them.
What are my inputs? (Dumbed down numbers in decimal please)

What's the expected behavior (Passing criteria)?

What are my outputs (Why did we fail) / (Which test case works)? 
*/
#10 sw7=1; sw6=0; sw5=1; sw4=1; sw3=0; sw2=1; sw1=1; sw0=1; //x
sw15=1; sw14=0; sw13=1; sw12=1; sw11=0; sw10=1; sw9=1; sw8=1; //y
btn0=0;//adder
btn1=0;
#10 btn1=1;
#10 sw7=1; sw6=0; sw5=1; sw4=1; sw3=0; sw2=1; sw1=1; sw0=1; //x
sw15=1; sw14=0; sw13=1; sw12=1; sw11=0; sw10=1; sw9=1; sw8=1; //y
btn0=0;//subtractor
btn1=0;
#10 btn1=1;
end 
endmodule
