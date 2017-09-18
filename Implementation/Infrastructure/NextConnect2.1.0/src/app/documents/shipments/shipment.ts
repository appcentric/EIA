// export interface Shipment {
//     PurchaseShipmentHeaders: PurchaseShipmentHeaders[];
//     CallingClientID?,
//     CallingClientName?,
//     CallingClientRefID?,
//     CallingDate?,
//     CallingRequestedStartDate?,
//     CallingAPIObject?,
//     CallingAckReq?,
//     OverrideReturnCount?,
//     SuccessCode?,
//     ReturnThroughDate?,
//     ReturnObjectCount?,
//     DJJCallReferenceID?,
//     ValidationMessages?,
//     ApplicationID?,
//     APICallBatchID?,
// }
export interface Shipment {
    ShipmentID?;
    ShipmentVersionID?;
    ShipmentType?;
    VehicleNum?;
    VehicleName?;
    DateShipped?;
    ChangeVersionID?;
    ShipHeaderStatusId?;
    DJJOrgID?;
    ConsumerID?;
    ConsumerName?;
    ConsumerRefID?;
    ShipmentScenarioID?;
    ModeCode?;
    MainFrtVendorID?;
    MainFrtVendorName?;
    FrtVendorConsumerRefID?;
    FrtEquipmentTypeID?;
    FrtCostRespID?;
    FrtPaymentRespID?;
    BOLNum?;
    BOLDate?;
    FreightRateID?;
    FreightDetailID?;
    FreightTierID?;
    FrtRate?;
    FrtRateUOMCode?;
    FrtAmt?;
    FrtCurrencyCode?;
    OverrideFrtGuaranteedMinLB?;
    GuaranteedMinLB?;
    DeadFrtQtyLB?;
    FrtCurrencyConvToUSD?;
    ShipmentGroupId?;
    ShipmentGroupOrder?;
    ConsumerShipmentRefID?;
    SupplierShipmentRefID?;
    FrtVendorShipmentRefID?;
    PackingList?;
    WayBillNum?;
    PurchaseShipLine: PurchaseShipLine[];
    PurchaseShipmentHeaderAddtlCharge?;
    CreatedDate?;
    LastUpdatedDate?;
    DataChangeTypeID?;
    DataChangeChildTypeID?;
    BizType?;
}
export interface PurchaseShipLine {
    ShipmentID?;
    ShipmentLineID?;
    AllocationID?;
    ShipLineStatusID?;
    POID?;
    POLineID?;
    POLineShipToID?;
    ConsumerContractRefID?;
    ConsumerPORefID?;
    ConsumerPOLineRefID?;
    ConsumerID?;
    ConsumerRefID?;
    ShipToID?;
    ShipToConsumerRefID?;
    ItemID?;
    ConsumerItemRefID?;
    CargoNum?;
    PriceRate?;
    PriceRateUOMCode?;
    PriceRateCurrencyCode?;
    PriceRateCurrencyConvToUSD?;
    FOBCode?;
    FrtCostRespID?;
    FrtPaymentRespID?;
    ModeCode?;
    CommissionRate?;
    CommissionRateUOMCode?;
    CommissionRateCurrencyCode?;
    CommissionRateCurrencyConvToUSD?;
    ShipToSettleWeightCode?;
    OverridesPOLineARTermID?;
    ARTermID?;
    FrtLineCosting?;
    FrtLineCurrencyCode?;
    FrtLineCurrencyConvToUSD?;
    ItemPackageID?;
    ItemPackageName?;
    ItemSizeID?;
    ItemSizeName?;
    RejectionReasonID?;
    QtyShipped?;
    QtyShippedUOM?;
    BestKnownWeightVersionID?;
    BestKnownWeightLB?;
    CreatedDate?;
    LastUpdatedDate?;
    DataChangeTypeID?;
    DataChangeChildTypeID?;
    BizType?;
    PurchaseShipLineWeight: PurchaseShipLineWeight[];
    PurchaseShipLineAddtlCharge?;
}
export interface PurchaseShipLineWeight {
    ShipmentID?;
    ShipmentLineID?;
    WgtVersionID?;
    WgtTypeCode?;
    AccountID?;
    AccountWgtRefID?;
    GrossWgtLB?;
    TareWgtLB?;
    CleanTareWeight?;
    NetWgtLB?;
    WgtDate?;
    WgtSourceTypeID?;
    ContainmentPercentage?;
    ContainmentNetWgt?;
    RecoveryPercentage?;
    YardDestinationName?;
    Comment?;
    CarTypeCode?;
    CarTypeDescription?;
    IsCleaningFeeApplied?;
    PieceCount?;
    CreatedDate?;
    LastUpdatedDate?;
    DataChangeTypeID?;
    DataChangeChildTypeID?;
    BizType?;
}