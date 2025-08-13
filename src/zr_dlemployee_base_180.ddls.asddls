@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite - Base Hierarquia Funcionario'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@ObjectModel.representativeKey: 'Employee' // chave que representa a hirarquia
define view entity ZR_DLEMPLOYEE_BASE_180
  as select from ZI_DLEMPLOYEE_180
{
      @ObjectModel.text.element: [ 'Name' ]
      @EndUserText.label: 'Funcionário'
  key Employee,
      @Semantics.text: true
      @EndUserText.label: 'Nome'
      Name,
      @EndUserText.label: 'Genero'
      Gender,
      @Aggregation.default: #SUM
      @EndUserText.label: 'Tempo Equivalente'
      PartTimePercent,
      division(PartTimePercent, 100, 2) as FullTimeEquivalent
}
