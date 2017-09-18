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

// export interface Customer {
//     name: string;
//     addresses: Address[];
// }

// export interface Address {
//     street: string;
//     postcode: string;
// }