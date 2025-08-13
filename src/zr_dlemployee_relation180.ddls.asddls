@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite - Hierarquia Funcionário/Gerente'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZR_DLEMPLOYEE_RELATION180
  as select from ZI_DLEMPLOYEE_MANAGER180
  association [0..1] to ZR_DLEMPLOYEE_RELATION180 as _Manager on $projection.Manager = _Manager.Employee
  association [0..1] to ZI_DLEMPLOYEE_180 as _Employee on $projection.Employee = _Employee.Employee
{
  key Employee,
      Manager,
      _Manager,
      _Employee
}
