*>*******************************************
*>                                          *
*>  Record Definition For Pay Transactions  *
*>           File                           *
*>     Uses Hrs-Emp-No as key               *
*>*******************************************
*>  File size 19 bytes padded to 20 by filler.
*>
*> 28/10/25 vbc - Created.
*>
 01  PY-Pay-Transactions-Record.
     03  Hrs-Emp-No          pic 9(7).
     03  Hrs-Effective-Date  pic 9(8).    *> ccyymmdd
     03  Hrs-Rate            pic 9.
     03  Hrs-Units           pic s9(3)v99   comp-3.
 *>    03  Hrs-Deleted         pic x.    *> NEEDED ???
     03  filler              pic x.
*>
*> 14 bytes + filler of 6 = 20 to match. the next rec may not be needed ?
*>
 01  PY-Pay-Header-Record.
     03  Hrs-Head-Key        pic 9(7).     *> Always value zero.
     03  Hrs-No-Recs         binary-short unsigned.
     03  Hrs-Batch-No        binary-short unsigned.
     03  Hrs-Proof-No        binary-short unsigned.
     03  Hrs-Proofed         pic x.
     03  filler              pic x(6).
*>
