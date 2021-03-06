export interface POHeader {
    POID?: number;
    PONum?: number;
    POIDRefID?: string;
    ChangeVersionID?: number;
    POHeaderStatusID?: number;
    DJJOrgID?: number;
    DJJOfficeID?: number;
    ConsumerID?: number;
    ConsumerName?: string;
    ConsumerRefID?: string;
    ParentConsumerID?: number;
    ParentConsumerName?: string;
    ParentConsumerRefID?: string;
    EffectiveDate?: string;
    ExpirationDate?: string;
    APTermsID?: string;
    ConsumerTermsRefID?: string;
    DataChangeTypeID?: number;
    DataChangeChildTypeID?: number;
    BizType?: string;
    CreatedDate?: string;
    LastUpdatedDate?: string;
    POLine?: POLine[];
    ShipToLocation?: ShipToLocation[];
    POFufillment?: POFufillment[];
    FreightRate?: FreightRate[];
}
export interface POLine {
    POID?: number;
    POLineID?: number;
    POLineStatusID?: number;
    ItemID?: number;
    ItemShortName?: string;
    ItemLongName?: string;
    ItemOverrideName?: string;
    ConsumerItemRefID?: string;
    QtyOrderedLB?: number;
    QtyOrderedUOMCode?: string;
    QtyCanBeOvershipped?: boolean;
    SharesQtyAcrossLocations?: boolean;
    SharesQtyAcrossModes?: boolean;
    BuyPeriodCode?: string;
    CreatedDate?: string;
    LastUpdatedDate?: string;
    DataChangeTypeID?: number;
    DataChangeChildTypeID?: number;
    BizType?: string;
}
export interface ShipToLocation {
    POID: any;
    POLineID: any;
    POLineShipToID: any;
    POLineShipToStatusID: any;
    ConsumerID: any;
    ConsumerRefID: any;
    ShipToID: any;
    ShipToConsumerRefID: any;
    PriceRate: any;
    PriceRateUOMCode: any;
    PriceRateLBS: any;
    PriceRateTypeID: any;
    IsPriceEstimated: any;
    CommissionRate: any;
    ComissionRateUOMCode: any;
    CurrencyCode: any;
    CurrencyConvRateToUSD: any;
    FOBCode: any;
    FrtCostRespID: any;
    FrtPaymentRespID: any;
    ModeCode: any;
    ShipToQtyLB: any;
    ShipToQtyUOMCode: any;
    ShipToSettleWeightCode: any;
    IsRecovered: any;
    RecoveryPercentage: any;
    IsContained: any;
    ContainmentPercentage: any;
    ItemPackageID: any;
    ItemPackageName: any;
    ItemSizeID: any;
    ItemSizeName: any;
    DataChangeTypeID: any;
    BizType: any;
    DataChangeChildTypeID: any;
    CreatedDate: any;
    LastUpdatedDate: any;
}
export interface POFufillment {
    POID: any;
    POLineID: any;
    POLineShipToID: any;
    SupplierID: any;
    SupplierName: any;
    SupplierConsumerRefID: any;
    ShipFromID: any;
    ShipFromConsumerRefID: any;
    ShipFromName: any;
    ShipFromCity: any;
    ShipFromState: any;
    SupplierParentID: any;
    SupplierParentName: any;
    SupplierParentConsumerRefID: any;
    SupplierPORefID: any;
    CargoNum: any;
    DataChangeTypeID: any;
    DataChangeChildTypeID: any;
    BizType: any;
    CreatedDate: any;
    LastUpdatedDate: any;
}
export interface FreightRate {
    POID: any;
    POLineID: any;
    POLineShipToID: any;
    FrtRateID: any;
    FrtRateTierID: any;
    FrtEffectiveRate: any;
    FrtEffectiveRateUOMCode: any;
    FrtCurrencyCode: any;
    FrtEquipmentTypeID: any;
    FrtEffectiveRateMinLB: any;
    FrtEffectiveRateMinUOMCode: any;
    MainFrtVendorID: any;
    MainFrtVendorName: any;
    FrtVendorConsumerRefID: any;
    DataChangeTypeID: any;
    DataChangeChildTypeID: any;
    BizType: any;
    CreatedDate: any;
    LastUpdatedDate: any;
}
