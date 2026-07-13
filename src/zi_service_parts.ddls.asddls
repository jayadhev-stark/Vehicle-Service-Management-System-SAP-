@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'view enitiy'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_SERVICE_PARTS as select from zservice_parts
 association to parent Zi_VEHICLE_SERVICE_ as _Part
    on $projection.ServiceId = _Part.ServiceId
{
    key service_id as ServiceId,
    key item_no as ItemNo,
    part_name as PartName,
    quantity as Quantity,
    cuky_field as CukyField,
    @Semantics.amount.currencyCode: 'CukyField'
    unit_price as UnitPrice,
    @Semantics.amount.currencyCode: 'CukyField'
    total_price as TotalPrice,
    _Part
}
