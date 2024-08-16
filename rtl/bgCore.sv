
module bgCore(
              //PWR
              input wire        VDD_1V8,
              input wire        VSS,
              //Analog
              output wire       IOUT,
              output wire       CMPO,
              //Digital
              input logic       pwrup,
              input logic       reset,
              input logic [7:0] idacFine,
              input logic [7:0] idacCoarse,
              input logic [3:0] idacOutSelect_n,
              input logic [7:0] diodeSelect,
              input logic       resStableSelect,
              input logic       resPtatEnable_n,
              input logic       diode,
              input logic       bigDiodeRes,
              input logic       cmpZeroOffset,
              input logic       cmpSwapInput
              );


   wire                         idac_0;
   wire                         idac_2;
   wire                         idac_3;
   wire                         ibn;
   wire                         VCP;



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
              .VCP(VCP),
              .IB( idacCoarse ),
              .VDD_1V8( VDD_1V8 ),
              .IDAC_O( {idac_3,idac_2,IOUT,idac_0} ),
              .IBO_N_1V8( idacOutSelect_n ),
              .PWRUP_1V8( pwrup ),
              .IBN(IBN),
              .RESET_1V8(reset),
              .VSS( VSS )
              );


   JNWG00_CCELL
     u0_ccell (
               .VDD_1V8( VDD_1V8 ),
               .CA( idac_0 ),
               .CA_1V8( diode ),
               .VSS( VSS ),
               .CB( VSMPL_P ),
               );


   JNWG00_CCELL
     u1_ccell (
               .VDD_1V8( VDD_1V8 ),
               .CA( idac_0 ),
               .CA_1V8( bigDiodeRes ),
               .VSS( VSS ),
               .CB( VSMPL_N ),
               );

   JNWG00_CMP
     u0_cmp (
             .VDD_1V8( VDD_1V8),
             .PWRUP_1V8(pwrup),
             .VSS(VSS),
             .VCP(VCP),
             .VP(VSMPL_P),
             .CMPO(CMPO),
             .IBN(IBN),
             .VN(VSMPL_N),
             .ZERO_1V8(cmpZeroOffset),
             .SWAP_1V8(cmpSwapInput)
             );


endmodule
