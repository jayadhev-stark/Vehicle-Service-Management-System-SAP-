@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'projection view'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_VEHICLE_SERVICE as projection on Zi_VEHICLE_SERVICE_
{
    key ServiceId,
    CustomerName,
    MobileNo,
    VehicleNo,
    Brand,
    Model,
    ServiceDate,
    Status,
    CukyField,
    @Semantics.amount.currencyCode: 'CukyField'
    LaborCharge,
    @Semantics.amount.currencyCode: 'CukyField'
    PartsCharge,
    @Semantics.amount.currencyCode: 'CukyField'
    Gst,
    @Semantics.amount.currencyCode: 'CukyField'
    TotalAmount,
    /* Associations */
    _Part: redirected to composition child ZC_SERVICE_PARTS
}
