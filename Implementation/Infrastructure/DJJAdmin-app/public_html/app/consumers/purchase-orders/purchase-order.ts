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
      POLine?:POLine[];
      ShipToLocation?:ShipToLocation[];
      POFufillment?:POFufillment[];
      FreightRate?:FreightRate[];
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
      POID;
      POLineID;
      POLineShipToID;
      POLineShipToStatusID;
      ConsumerID;
      ConsumerRefID;
      ShipToID;
      ShipToConsumerRefID;
      PriceRate;
      PriceRateUOMCode;
      PriceRateLBS;
      PriceRateTypeID;
      IsPriceEstimated;
      CommissionRate;
      ComissionRateUOMCode;
      CurrencyCode;
      CurrencyConvRateToUSD;
      FOBCode;
      FrtCostRespID;
      FrtPaymentRespID;
      ModeCode;
      ShipToQtyLB;
      ShipToQtyUOMCode;
      ShipToSettleWeightCode;
      IsRecovered;
      RecoveryPercentage;
      IsContained;
      ContainmentPercentage; 
      ItemPackageID;
      ItemPackageName;
      ItemSizeID;
      ItemSizeName;
      DataChangeTypeID;
      BizType;
      DataChangeChildTypeID;
      CreatedDate;
      LastUpdatedDate;
}
export interface POFufillment {
      POID;
      POLineID;
      POLineShipToID;
      SupplierID;
      SupplierName;
      SupplierConsumerRefID;
      ShipFromID;
      ShipFromConsumerRefID;
      ShipFromName;
      ShipFromCity;
      ShipFromState;
      SupplierParentID;
      SupplierParentName;
      SupplierParentConsumerRefID;
      SupplierPORefID;
      CargoNum;
      DataChangeTypeID;
      DataChangeChildTypeID;
      BizType;
      CreatedDate;
      LastUpdatedDate;
}
export interface FreightRate {
      POID;
      POLineID;
      POLineShipToID;
      FrtRateID;
      FrtRateTierID;
      FrtEffectiveRate;
      FrtEffectiveRateUOMCode;
      FrtCurrencyCode;
      FrtEquipmentTypeID;
      FrtEffectiveRateMinLB;
      FrtEffectiveRateMinUOMCode;
      MainFrtVendorID;
      MainFrtVendorName;
      FrtVendorConsumerRefID;
      DataChangeTypeID;
      DataChangeChildTypeID;
      BizType;
      CreatedDate;
      LastUpdatedDate;
}