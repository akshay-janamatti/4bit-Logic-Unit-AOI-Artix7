module nor4bit_aoi(
    input A3,A2,A1,A0,
    input B3,B2,B1,B0,
    output Y3,Y2,Y1,Y0
);

    wire P0,Q0,R0,P1,Q1,R1,P2,Q2,R2,P3,Q3,R3;

    and(P0,A0,1'b1); and(Q0,B0,1'b1); or(R0,P0,Q0); not(Y0,R0);
    and(P1,A1,1'b1); and(Q1,B1,1'b1); or(R1,P1,Q1); not(Y1,R1);
    and(P2,A2,1'b1); and(Q2,B2,1'b1); or(R2,P2,Q2); not(Y2,R2);
    and(P3,A3,1'b1); and(Q3,B3,1'b1); or(R3,P3,Q3); not(Y3,R3);

endmodule
