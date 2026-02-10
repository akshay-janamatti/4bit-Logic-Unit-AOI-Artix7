module nand4bit_aoi(
    input A3,A2,A1,A0,
    input B3,B2,B1,B0,
    output Y3,Y2,Y1,Y0
);

    wire P0,Q0,P1,Q1,P2,Q2,P3,Q3;

    and(P0,A0,B0); or(Q0,P0,1'b0); not(Y0,Q0);
    and(P1,A1,B1); or(Q1,P1,1'b0); not(Y1,Q1);
    and(P2,A2,B2); or(Q2,P2,1'b0); not(Y2,Q2);
    and(P3,A3,B3); or(Q3,P3,1'b0); not(Y3,Q3);

endmodule
