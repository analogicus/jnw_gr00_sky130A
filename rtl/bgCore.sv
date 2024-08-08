
module bgCore(
              //PWR
              input wire        VDD_1V8,
              input wire        VSS,
              //Analog
              output wire       IOUT,
              output wire       VP,
              output wire       VN,
              output wire       CMPO,
              //Digital
              input logic       pwrup,
              input logic [7:0] idacFine,
              input logic [7:0] idacCoarse,
              input logic [3:0] idacOutSelect_n,
              input logic [7:0] diodeSelect,
              input logic       resStableSelect,
              input logic       resPtatEnable_n,
              input logic [1:0] c1,
              input logic [1:0] c2
              );


   wire                         idac_0;
   wire                         idac_2;
   wire                         idac_3;


JNWG00_BDAC
u0_bdac (
 .BD_1V8( diodeSelect ),
 .VD( idac_0 ),
 .VSS( VSS ),
 .RES_N_1V8( resPtatEnable_n ),
 .R_IBPS_1V8( resStableSelect )
);


JNWG00_IDAC
u0_idac (
 .IBF( idacFine ),
 .IB( idacCoarse ),
 .VDD_1V8( VDD_1V8 ),
 .IDAC_O( {idac_3,idac_2,IOUT,idac_0} ),
 .IBO_N_1V8( idacOutSelect_n ),
 .PWRUP_1V8( pwrup ),
 .VSS( VSS )
);


JNWG00_CCELL
u0_ccell (
 .VDD_1V8( VDD_1V8 ),
 .CA( idac_0 ),
 .CA_1V8( c1[0] ),
 .VSS( VSS ),
 .CB( VP ),
 .CB_1V8( c1[1] )
);


JNWG00_CCELL
u1_ccell (
 .VDD_1V8( VDD_1V8 ),
 .CA( idac_0 ),
 .CA_1V8( c2[0] ),
 .VSS( VSS ),
 .CB( VN ),
 .CB_1V8( c2[1] )
);

JNWG00_CMP
u0_cmp (
 .VDD_1V8( VDD_1V8),
 .VSS(VSS),
 .VP(VP),
 .VN(VN),
 .CMPO(CMPO),
 .ZERO_1V8(cmpZeroOffset)
 .SWAP_1V8(cmpSwapInput),
)

endmodule
