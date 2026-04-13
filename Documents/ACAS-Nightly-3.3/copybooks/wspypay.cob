*>*******************************************
*>                                          *
*>  Record Definition For Pay File          *
*>                                          *
*>     Uses Pay-Emp-No as key               *
*>*******************************************
*>  File size 28 bytes.
*>
*> THESE FIELD DEFINITIONS MAY NEED CHANGING
*>
*> 29/10/25 vbc - Created.
*>
 01  PY-Pay-Record.
     03  Pay-Emp-No          pic 9(7).
     03  Pay-Interval        pic 9.
     03  Pay-EFf-Date        pic 9(8)       comp. *> ccyymmdd
     03  Pay-Apply-No        pic 9(4)       comp.
     03  Pay-Reporting-Cat   pic xx.           *> is this right ?
     03  Pay-Extended        pic xx.
     03  Pay-Units           pic s9(6)v99   comp-3.
     03  Pay-Amt             pic s9(6)v99   comp-3.
*>
 01  PY-Pay-Header.
     03  Pay-Hdr-No            pic 9(7).    *> value zero.
     03  Pay-Hdr-Interval      pic 9.
     03  Pay-Hdr-Last-Apply-No pic 9(4)    comp.
     03  Pay-Hdr-Journal-Pnt   pic 9(4)    comp.
     03  Pay-Hdr-Last-Day-of-Last-Per
                               pic 9(8)    comp.  *> ccyymmdd
     03  FILLER                pic x(12).

