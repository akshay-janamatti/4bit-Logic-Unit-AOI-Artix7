module or4bit_aoi(
    input A3,A2,A1,A0,
    input B3,B2,B1,B0,
    output Y3,Y2,Y1,Y0
);

    wire P0,Q0,R0,S0,T0,T0o;
    and(P0,A0,1'b1); and(Q0,B0,1'b1); or(R0,P0,Q0);
    not(S0,R0); and(T0,S0,1'b1); or(T0o,T0,1'b0); not(Y0,T0o);

    wire P1,Q1,R1,S1,T1,T1o;
    and(P1,A1,1'b1); and(Q1,B1,1'b1); or(R1,P1,Q1);
    not(S1,R1); and(T1,S1,1'b1); or(T1o,T1,1'b0); not(Y1,T1o);

    wire P2,Q2,R2,S2,T2,T2o;
    and(P2,A2,1'b1); and(Q2,B2,1'b1); or(R2,P2,Q2);
    not(S2,R2); and(T2,S2,1'b1); or(T2o,T2,1'b0); not(Y2,T2o);

    wire P3,Q3,R3,S3,T3,T3o;
    and(P3,A3,1'b1); and(Q3,B3,1'b1); or(R3,P3,Q3);
    not(S3,R3); and(T3,S3,1'b1); or(T3o,T3,1'b0); not(Y3,T3o);

endmodule
