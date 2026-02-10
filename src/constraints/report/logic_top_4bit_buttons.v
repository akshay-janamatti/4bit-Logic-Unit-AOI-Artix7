module logic_top_4bit_buttons(
    input A3,A2,A1,A0,
    input B3,B2,B1,B0,
    input BTN0, // AND
    input BTN1, // OR
    input BTN2, // NAND
    input BTN3, // NOR
    output Y3,Y2,Y1,Y0
);

    wire AND3,AND2,AND1,AND0;
    wire OR3,OR2,OR1,OR0;
    wire NAND3,NAND2,NAND1,NAND0;
    wire NOR3,NOR2,NOR1,NOR0;

    logic_top_4bit U0(
        A3,A2,A1,A0,
        B3,B2,B1,B0,
        AND3,AND2,AND1,AND0,
        OR3,OR2,OR1,OR0,
        NAND3,NAND2,NAND1,NAND0,
        NOR3,NOR2,NOR1,NOR0
    );

    assign Y0 = BTN0 ? AND0 :
                BTN1 ? OR0  :
                BTN2 ? NAND0:
                BTN3 ? NOR0 : 1'b0;

    assign Y1 = BTN0 ? AND1 :
                BTN1 ? OR1  :
                BTN2 ? NAND1:
                BTN3 ? NOR1 : 1'b0;

    assign Y2 = BTN0 ? AND2 :
                BTN1 ? OR2  :
                BTN2 ? NAND2:
                BTN3 ? NOR2 : 1'b0;

    assign Y3 = BTN0 ? AND3 :
                BTN1 ? OR3  :
                BTN2 ? NAND3:
                BTN3 ? NOR3 : 1'b0;

endmodule
