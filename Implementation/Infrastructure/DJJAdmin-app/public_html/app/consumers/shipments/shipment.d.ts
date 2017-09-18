export interface PurchaseShipmentHeaders {
    ShipmentID?: number;
    ShipmentType?: string;
    purchaseShipLine?: PurchaseShipLine[];
}
export interface PurchaseShipLine {
    AllocationID?: number;
    POID?: number;
    PurchaseShipLineAddtlCharge?: string;
}
