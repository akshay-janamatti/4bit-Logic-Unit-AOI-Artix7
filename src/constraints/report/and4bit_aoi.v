module and4bit_aoi(
    input A3, A2, A1, A0,
    input B3, B2, B1, B0,
    output Y3, Y2, Y1, Y0
);

    wire P0,Q0,N0,R0,S0;
    and(P0,A0,B0); or(Q0,P0,1'b0); not(N0,Q0);
    and(R0,N0,1'b1); or(S0,R0,1'b0); not(Y0,S0);

    wire P1,Q1,N1,R1,S1;
    and(P1,A1,B1); or(Q1,P1,1'b0); not(N1,Q1);
    and(R1,N1,1'b1); or(S1,R1,1'b0); not(Y1,S1);

    wire P2,Q2,N2,R2,S2;
    and(P2,A2,B2); or(Q2,P2,1'b0); not(N2,Q2);
    and(R2,N2,1'b1); or(S2,R2,1'b0); not(Y2,S2);

    wire P3,Q3,N3,R3,S3;
    and(P3,A3,B3); or(Q3,P3,1'b0); not(N3,Q3);
    and(R3,N3,1'b1); or(S3,R3,1'b0); not(Y3,S3);

endmodule
