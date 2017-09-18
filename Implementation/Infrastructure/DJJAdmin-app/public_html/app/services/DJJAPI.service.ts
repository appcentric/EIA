import { Injectable } from '@angular/core';
import { Http, Headers, RequestOptions, Response } from '@angular/http';
import { Observable } from 'rxjs/Observable';

import { TreeTableModule, SharedModule } from 'primeng/primeng';

import { headers } from '../shared/headers.component';  // <----------- PROD HEADERS
// import { headers } from '../shared/UATheaders.component';

import 'rxjs/Rx';

@Injectable()
export class DJJAPIService {

  constructor(private _http: Http) {
  }

  // private extractData(res:Response) {
  //   if (res.status == 404){
  //     window.alert('404 errors');
  //     let body = res.json();
  //   }
  // }
  // private handleError(error:any, res:Response){
  //   if (res.status == 404 ){
  //     let errMsg = (error.message) ? error.message :
  //       error.status ? `Please retry your request. Error status:  ${res.status} - ${res.statusText}` : 'Server error';
  //         console.log(errMsg);
  //         window.alert(errMsg); // log to console instead
  //         return Observable.throw(errMsg);
  //   }
  // }
  private extractData(res:Response) {
    if(!res.ok) {
        throw new Error('Bad response status: ' + res.status);
    }
    else{
      return res.json();
    }

  }
  private handleError(error:any) {
    // In a real world app, we might use a remote logging infrastructure
    // We'd also dig deeper into the error to get a better message
    let errMsg = (error.message) ? error.message :
      error.status ? `Please retry your request. Error status:  ${error.status} - ${error.statusText}` : 'Server error';
    console.log(errMsg);
    // window.alert(errMsg); // log to console instead
    return Observable.throw(errMsg);
  }

  private _DJJProdUrl = "/RESTProxy?_subHost=djjapimanagement.azure-api.net&_path=DJJBrokerageExternalAPI/api/v1/";
  private _DJJUATUrl = "/RESTProxy?_subHost=djjapimanagementuat.azure-api.net&_path=DJJ.Brokerage.ExternalAPI/api/v1/";

// for ScaleConnect .Consumer endpoint
  private _DJJConsumersProdUrl = "/RESTProxy?_subHost=djjapimanagement.azure-api.net&_path=DJJBrokerageExternalAPIConsumer/api/v1/";
  private _DJJConsumersUATUrl = "/RESTProxy?_subHost=djjapimanagementuat.azure-api.net&_path=DJJ.Brokerage.ExternalAPI.Consumer/api/v1/";

  getUrl(selectedAPI) {
    return this._http.get(this._DJJProdUrl + 'Administration/' + selectedAPI, { headers: headers })
      .map(this.extractData)
      .catch(this.handleError);
  }
  deleteMappingUrl(selectedAPI, selectedAPIMapping) {
    return this._http.delete(this._DJJProdUrl + 'Administration/' + selectedAPI + "/" + selectedAPIMapping, { headers: headers })
  }
  addConsumerMappingUrl(selectedAPI, consumerMapping) {
    return this._http.put(this._DJJProdUrl + 'Administration/' + selectedAPI, JSON.stringify(consumerMapping), { headers: headers })
      .map(this.extractData)
      .catch(this.handleError);
  }
  addFreightVendorMappingUrl(selectedAPI, freightVendorMapping) {
    return this._http.put(this._DJJProdUrl + 'Administration/'  + selectedAPI, JSON.stringify(freightVendorMapping), { headers: headers })
      .map(this.extractData)
      .catch(this.handleError);
  }
  addItemMappingUrl(selectedAPI, itemMapping) {
    return this._http.put(this._DJJProdUrl + 'Administration/' + selectedAPI, JSON.stringify(itemMapping), { headers: headers })
      .map(this.extractData)
      .catch(this.handleError);
  }
  addShipFromMappingUrl(selectedAPI, shipFromMapping) {
    return this._http.put(this._DJJProdUrl + 'Administration/' + selectedAPI, JSON.stringify(shipFromMapping), { headers: headers })
      .map(this.extractData)
      .catch(this.handleError);
  }
  addShipToMappingUrl(selectedAPI, shipToMapping) {
    return this._http.put(this._DJJProdUrl + 'Administration/' + selectedAPI, JSON.stringify(shipToMapping), { headers: headers })
      .map(this.extractData)
      .catch(this.handleError);
  }
  addSupplierMappingUrl(selectedAPI, supplierMapping) {
    return this._http.put(this._DJJProdUrl + 'Administration/' + selectedAPI, JSON.stringify(supplierMapping), { headers: headers })
      .map(this.extractData)
      .catch(this.handleError);
  }
  getAcknowledgementUrl(selectedAPIendpoint, selectedShowAcknowledged) {
    return this._http.get(this._DJJProdUrl +  'Consumer/Acknowledgements/' + selectedAPIendpoint + '/' + selectedShowAcknowledged, { headers: headers })
      .map(this.extractData)
      .catch(this.handleError);
  }
  getScaleConnectPO() {
    return this._http.get(this._DJJConsumersProdUrl + 'Consumer/ScaleConnect/CustomerContract', { headers: headers })
      .map(this.extractData)
      .catch(this.handleError);
  }  
  getScaleConnectASN() {
    return this._http.get(this._DJJConsumersProdUrl + 'Consumer/ScaleConnect/CustomerShippingNotice', { headers: headers })
      .map(this.extractData)
      .catch(this.handleError);
  }
  getAPInvoices(InvoiceID){
    return this._http.get(this._DJJProdUrl + 'APInvoices/' + InvoiceID, { headers: headers })
      .map(this.extractData)
      .catch(this.handleError);
  }
  getPurchaseOrders(POID){
    return this._http.get(this._DJJConsumersProdUrl + 'Consumer/PurchaseOrders/' + POID, { headers: headers })
      .map(this.extractData)
      .catch(this.handleError);
  }
  getShipments(shipmentNumber){
    return this._http.get(this._DJJConsumersProdUrl + 'Consumer/Shipments/' + shipmentNumber, { headers: headers })
      .map(this.extractData)
      .catch(this.handleError);
  }
  // getShipments(shipmentNumber){
  //   return this._http.get('SHIPMENT.json')
  //     .map(this.extractData)
  //     .catch(this.handleError);
  // }
}