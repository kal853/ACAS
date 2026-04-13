*>*******************************************
*>                                          *
*>  Record Definition For Py Deduction File *
*>     Uses RRN = 1                         *
*>*******************************************
*>  File size 339 bytes ??   was 337
*> 25/10/25 vbc - Created.
*> 08/11/25 vbc - Rec size changed
*> 12/11/25 vbc - and again - less.
*> 15/11/25 vbc - again more + 9.
*> 28/12/25 vbc - Consider increasing table to support a.n.other new ded rates.
*> 16/01/26 vbc - Increased size by 2.
*>
 01  PY-System-Deduction-Record.
     03  Ded-FWT-Used             pic x.    *> Y NEEDED ?
     03  Ded-SWT-Used             pic x.    *> Y needed ?
     03  Ded-LWT-Used             pic x.   *>  N
     03  Ded-FICA-Used            pic x.   *>  Y
     03  Ded-CO-FICA-Used         pic x.   *>
     03  Ded-SDI-Used             pic x.   *>
     03  Ded-CO-FUTA-Used         pic x.   *>
     03  Ded-CO-SUI-Used          pic x.   *>
     03  Ded-EIC-Used             pic x.   *>
*>
     03  Ded-FWT-Allowance-Amt    pic S9(5)v99   comp-3.
*>
     03  Ded-FWT-Acct-No          pic 99.
     03  Ded-SWT-Acct-No          pic 99.
     03  Ded-LWT-Acct-No          pic 99.
     03  Ded-FICA-Acct-No         pic 99.
     03  Ded-CO-FICA-Acct-No      pic 99.
     03  Ded-SDI-Acct-No          pic 99.
     03  Ded-CO-FUTA-Acct-No      pic 99.
     03  Ded-CO-SUI-Acct-No       pic 99.
     03  Ded-EIC-Acct-No          pic 99.
*>19 ^
     03  Ded-FICA-Rate            pic 99v99    comp-3.
     03  Ded-FICA-Limit           pic 9(5)v99  comp-3.
     03  Ded-CO-FICA-Rate         pic 99v99    comp-3.
     03  Ded-CO-FICA-Limit        pic 9(5)v99  comp-3.
     03  Ded-SDI-Rate             pic 99v99    comp-3.
     03  Ded-SDI-Limit            pic 9(5)v99  comp-3.
     03  Ded-CO-FUTA-Rate         pic 99v99    comp-3.
     03  Ded-CO-FUTA-Limit        pic 9(5)v99  comp-3.
     03  Ded-CO-FUTA-Max-Credit   pic 9(5)v99  comp-3.
     03  Ded-CO-SUI-Rate          pic 99v99    comp-3.
     03  Ded-CO-SUI-Limit         pic 9(5)v99  comp-3.
     03  Ded-EIC-Rate             pic 99v99    comp-3.
     03  Ded-EIC-Limit            pic 9(5)v99  comp-3.
     03  Ded-EIC-Excess-Rate      pic 99v99    comp-3.
     03  Ded-EIC-Excess-Limit     pic 9(5)v99  comp-3.
*>34 +  28  + 50 = 112
     03  Ded-FWT-Mar                  occurs 7.
         05  Ded-FWT-Mar-Cutoff   pic 9(5)v99  comp-3.
         05  Ded-FWT-Mar-Percent  pic 9(3)v99  comp-3.
*>
     03  Ded-FWT-Sin                  occurs 7.
         05  Ded-FWT-Sin-Cutoff   pic 9(5)v99  comp-3.
         05  Ded-FWT-Sin-Percent  pic 9(3)v99  comp-3.
*>
     03  Ded-Sys-Entries-Used     pic 99.  *> allow for this block to be > 10
     03  Ded-Sys-Data-Blocks          occurs 5.
         05  Ded-Sys-Amt-Percent  pic x.   *>  A
         05  Ded-Sys-Chk-Cat      pic 99.  *>  7 ( 2 - 7 if Earn-Ded = E. 9 - 16 if Earn-Ded = D
         05  Ded-Sys-Earn-Ded     pic x.   *>  E
         05  Ded-Sys-Exclusion    pic 9.   *>  1 ( 1 - 4)
         05  Ded-Sys-Limit-Used   pic x.   *>  Y
         05  Ded-Sys-Used         pic x.   *>  N
         05  Ded-Sys-Desc         pic x(15).
         05  Ded-Sys-Acct-No      binary-char  unsigned.
         05  Ded-Sys-Factor       pic 9(5)v99  comp-3.
         05  Ded-Sys-Limit        pic 9(5)v99  comp-3.
*> Field count 112
