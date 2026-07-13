@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'projection view'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_SERVICE_PARTS as projection on ZI_SERVICE_PARTS
{
    key ServiceId,
    key ItemNo,
    PartName,
    Quantity,
    CukyField,
    @Semantics.amount.currencyCode: 'CukyField'
    UnitPrice,
    @Semantics.amount.currencyCode: 'CukyField'
    TotalPrice,
    /* Associations */
    _Part: redirected to parent ZC_VEHICLE_SERVICE
}
