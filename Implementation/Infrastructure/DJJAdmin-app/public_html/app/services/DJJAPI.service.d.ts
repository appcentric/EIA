import { Http, Response } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import 'rxjs/Rx';
export declare class DJJAPIService {
    private _http;
    constructor(_http: Http);
    private extractData(res);
    private handleError(error);
    private _DJJProdUrl;
    private _DJJUATUrl;
    private _DJJConsumersProdUrl;
    private _DJJConsumersUATUrl;
    getUrl(selectedAPI: any): Observable<any>;
    deleteMappingUrl(selectedAPI: any, selectedAPIMapping: any): Observable<Response>;
    addConsumerMappingUrl(selectedAPI: any, consumerMapping: any): Observable<any>;
    addFreightVendorMappingUrl(selectedAPI: any, freightVendorMapping: any): Observable<any>;
    addItemMappingUrl(selectedAPI: any, itemMapping: any): Observable<any>;
    addShipFromMappingUrl(selectedAPI: any, shipFromMapping: any): Observable<any>;
    addShipToMappingUrl(selectedAPI: any, shipToMapping: any): Observable<any>;
    addSupplierMappingUrl(selectedAPI: any, supplierMapping: any): Observable<any>;
    getAcknowledgementUrl(selectedAPIendpoint: any, selectedShowAcknowledged: any): Observable<any>;
    getScaleConnectPO(): Observable<any>;
    getScaleConnectASN(): Observable<any>;
    getAPInvoices(InvoiceID: any): Observable<any>;
    getPurchaseOrders(POID: any): Observable<any>;
    getShipments(shipmentNumber: any): Observable<any>;
}
