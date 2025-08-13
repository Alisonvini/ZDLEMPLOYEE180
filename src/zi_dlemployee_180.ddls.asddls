@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - Funcionarios'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_DLEMPLOYEE_180
  as select from zdlemployeet_180
{
  key employee          as Employee,
      name              as Name,
      gender            as Gender,
      part_time_percent as PartTimePercent
}
