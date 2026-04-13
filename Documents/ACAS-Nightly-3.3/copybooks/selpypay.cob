*>
*> Payroll Pay
*>
     select  PY-Pay-File
                             assign        File-46
                             access        dynamic
                             organization  indexed
                             record key is Pay-Emp-No
                             status        PY-Pay-Status.
*>
