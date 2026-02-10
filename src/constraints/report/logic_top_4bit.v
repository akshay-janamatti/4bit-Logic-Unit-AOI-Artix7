// =======================================================
// 4-bit Logic Unit Top Module using AOI methodology
// =======================================================

module logic_top_4bit(
    input  A3, A2, A1, A0,
    input  B3, B2, B1, B0,
    output AND3, AND2, AND1, AND0,
    output OR3,  OR2,  OR1,  OR0,
    output NAND3, NAND2, NAND1, NAND0,
    output NOR3,  NOR2,  NOR1,  NOR0
);

    and4bit_aoi  U1 (A3,A2,A1,A0, B3,B2,B1,B0, AND3,AND2,AND1,AND0);
    or4bit_aoi   U2 (A3,A2,A1,A0, B3,B2,B1,B0, OR3,OR2,OR1,OR0);
    nand4bit_aoi U3 (A3,A2,A1,A0, B3,B2,B1,B0, NAND3,NAND2,NAND1,NAND0);
    nor4bit_aoi  U4 (A3,A2,A1,A0, B3,B2,B1,B0, NOR3,NOR2,NOR1,NOR0);

endmodule
