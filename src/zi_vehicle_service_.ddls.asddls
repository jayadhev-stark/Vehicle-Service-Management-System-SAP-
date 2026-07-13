@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'view enitiy'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Zi_VEHICLE_SERVICE_ as select from zvehicle_servic
composition [0..*] of ZI_SERVICE_PARTS as _Part
{
    key service_id as ServiceId,
    customer_name as CustomerName,
    mobile_no as MobileNo,
    vehicle_no as VehicleNo,
    brand as Brand,
    model as Model,
    service_date as ServiceDate,
    status as Status,
    cuky_field as CukyField,
    @Semantics.amount.currencyCode: 'CukyField'
    labor_charge as LaborCharge,
    @Semantics.amount.currencyCode: 'CukyField'
    parts_charge as PartsCharge, 
    @Semantics.amount.currencyCode: 'CukyField'
    gst as Gst,
    @Semantics.amount.currencyCode: 'CukyField'
    total_amount as TotalAmount,
    _Part
}
