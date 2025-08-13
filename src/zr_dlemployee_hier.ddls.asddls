@AccessControl.authorizationCheck: #NOT_REQUIRED
define hierarchy ZR_DLEMPLOYEE_HIER
  as parent child hierarchy(
    source ZR_DLEMPLOYEE_RELATION180
    child to parent association _Manager
    start where
      Manager = 0
    siblings order by
      Employee
  )
{
  Employee,
  Manager,
  _Manager,
  _Employee

}
