*>
*> Payroll Pay Hours (USA)
*>
     select  PY-Pay-Transactions-File
                             assign        file-45
                             access        dynamic
                             organization  indexed
                             record key is Hrs-Emp-No
                             status        PY-Hrs-Status.
*>
