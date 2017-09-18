import { Injectable } from '@angular/core';
import { Http, Headers, RequestOptions, Response } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import { Acknowledgement } from '../acknowledgements/acknowledgement';
import { PurchaseOrder } from '../documents/purchase-orders/purchase-order';
import { Shipment } from '../documents/shipments/shipment';
import { AuthService } from './auth.service';
import 'rxjs/Rx';

var headers;

export const NSNE_prod_headers = new Headers();
NSNE_prod_headers.append('Ocp-Apim-Subscription-Key', '41de508f2ed14c879b2e7485df74ced7');
NSNE_prod_headers.append('APIUserId', '7DA287B4-0DEB-4D2E-A69E-150738AA59FD');
NSNE_prod_headers.append('Accept', 'application/json');
NSNE_prod_headers.append('Content-Type', 'application/json');

export const NSNE_test_headers = new Headers();
NSNE_test_headers.append('Ocp-Apim-Subscription-Key', '93729043ae0749ada351362d0df99d46');
NSNE_test_headers.append('APIUserId', '7DA287B4-0DEB-4D2E-A69E-150738AA59FD');
NSNE_test_headers.append('Accept', 'application/json');
NSNE_test_headers.append('Content-Type', 'application/json');

export const NSUT_prod_headers = new Headers();
NSUT_prod_headers.append('Ocp-Apim-Subscription-Key', '41de508f2ed14c879b2e7485df74ced7');
NSUT_prod_headers.append('APIUserId', '52AE605A-40C4-4FEB-8A4A-4D54CEFFCFF4');
NSUT_prod_headers.append('Accept', 'application/json');
NSUT_prod_headers.append('Content-Type', 'application/json');

export const NSUT_test_headers = new Headers();
NSUT_test_headers.append('Ocp-Apim-Subscription-Key', '93729043ae0749ada351362d0df99d46');
NSUT_test_headers.append('APIUserId', '52AE605A-40C4-4FEB-8A4A-4D54CEFFCFF4');
NSUT_test_headers.append('Accept', 'application/json');
NSUT_test_headers.append('Content-Type', 'application/json');

export const NSTX_prod_headers = new Headers();
NSTX_prod_headers.append('Ocp-Apim-Subscription-Key', '41de508f2ed14c879b2e7485df74ced7');
NSTX_prod_headers.append('APIUserId', 'B071147A-78E5-4397-9D26-F26128E8E485');
NSTX_prod_headers.append('Accept', 'application/json');
NSTX_prod_headers.append('Content-Type', 'application/json');

export const NSTX_test_headers = new Headers();
NSTX_test_headers.append('Ocp-Apim-Subscription-Key', '93729043ae0749ada351362d0df99d46');
NSTX_test_headers.append('APIUserId', 'B071147A-78E5-4397-9D26-F26128E8E485');
NSTX_test_headers.append('Accept', 'application/json');
NSTX_test_headers.append('Content-Type', 'application/json');

export const NSSEA_prod_headers = new Headers();
NSSEA_prod_headers.append('Ocp-Apim-Subscription-Key', '41de508f2ed14c879b2e7485df74ced7');
NSSEA_prod_headers.append('APIUserId', 'F86A34F7-010D-4EBB-BAF6-4EC3BCE1F8A8');
NSSEA_prod_headers.append('Accept', 'application/json');
NSSEA_prod_headers.append('Content-Type', 'application/json');

export const NSSEA_test_headers = new Headers();
NSSEA_test_headers.append('Ocp-Apim-Subscription-Key', '93729043ae0749ada351362d0df99d46');
NSSEA_test_headers.append('APIUserId', 'F86A34F7-010D-4EBB-BAF6-4EC3BCE1F8A8');
NSSEA_test_headers.append('Accept', 'application/json');
NSSEA_test_headers.append('Content-Type', 'application/json');

@Injectable()
export class DJJAPIService {
  
  constructor(private _http: Http, private auth: AuthService) {
    
  }

  private determineRole(headers:Headers){
    if(this.auth.authenticated()){
      if (this.auth.userProfile.app_metadata.role === 'nsne_scrap_admin'){
        console.log('NSNE Prod Admin');
        return NSNE_prod_headers;
      }
      if (this.auth.userProfile.app_metadata.role === 'nsut_scrap_admin'){
        console.log('NSUT Prod Admin');
        return NSUT_prod_headers;
      }
      if (this.auth.userProfile.app_metadata.role === 'nstx_scrap_admin'){
        console.log('NSTX Prod Admin');
        return NSTX_prod_headers;
      }
      if (this.auth.userProfile.app_metadata.role === 'nssea_scrap_admin'){
        console.log('NSSEA Prod Admin');
        return NSSEA_prod_headers;
      }
      console.log('You are logged in but you do not have a role. Please contact your administrator.');
    }
    if(!this.auth.authenticated()){
      console.log('You are not logged in. Please log in and retry your request.');
    }
  }
  
  private _DJJProdUrl = "/RESTProxy?_subHost=prodapimexternalapi.azure-api.net&_path=/DJJBrokerageExternalAPI/api/v1/";
  private _DJJTestUrl = "/RESTProxy?_subHost=testapimexternalapi.azure-api.net&_path=/DJJBrokerageExternalAPI/api/v1/";

// for ScaleConnect .Consumer endpoint
  private _DJJConsumersProdUrl = "/RESTProxy?_subHost=prodapimexternalapi.azure-api.net&_path=/DJJBrokerageExternalAPIConsumer/api/v1/";
  private _DJJConsumersTestUrl = "/RESTProxy?_subHost=testapimexternalapi.azure-api.net&_path=/DJJBrokerageExternalAPIConsumer/api/v1/";

  private extractData(res:Response) {
    // If request fails, throw an Error that will be caught
    if(res.status != 200) {
      throw new Error(res.status + ' ' + res.statusText);
    }  
    // If everything went fine, return the response
    else {
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

//Not working because Response Headers are Content-Type of text/html
  // private handleError (error: Response | any) {
  //     // In a real world app, we might use a remote logging infrastructure
  //     let errMsg: string;
  //     if (error instanceof Response) {
  //       const body = error.json() || '';
  //       const err = body.error || JSON.stringify(body);
  //       errMsg = `${error.status} - ${error.statusText || ''} ${err}`;
  //     } else {
  //       errMsg = error.message ? error.message : error.toString();
  //     }
  //     console.error(errMsg);
  //     return Observable.throw(errMsg);
  //   }

  //Gets all mappings
  getUrl(selectedAPI) {
    return this._http.get(this._DJJProdUrl + 'Administration/' + selectedAPI, { headers: this.determineRole(headers) })
      .map(this.extractData)
      .catch(this.handleError);
  }
  deleteMappingUrl(selectedAPI, selectedAPIMapping) {
    return this._http.delete(this._DJJProdUrl + 'Administration/' + selectedAPI + "/" + selectedAPIMapping, { headers: this.determineRole(headers) })
  }
  //uses put method to add mappings
  putConsumerMappingUrl(selectedAPI, consumerMapping) {
    return this._http.put(this._DJJProdUrl + 'Administration/' + selectedAPI, JSON.stringify(consumerMapping), { headers: this.determineRole(headers) })
      .catch(this.handleError);
  }
  putFreightVendorMappingUrl(selectedAPI, freightVendorMapping) {
    return this._http.put(this._DJJProdUrl + 'Administration/'  + selectedAPI, JSON.stringify(freightVendorMapping), { headers: this.determineRole(headers) })
      .catch(this.handleError);
  }
  putItemMappingUrl(selectedAPI, itemMapping) {
    return this._http.put(this._DJJProdUrl + 'Administration/' + selectedAPI, JSON.stringify(itemMapping), { headers: this.determineRole(headers) })
      .catch(this.handleError);
  }
  putShipFromMappingUrl(selectedAPI, shipFromMapping) {
    return this._http.put(this._DJJProdUrl + 'Administration/' + selectedAPI, JSON.stringify(shipFromMapping), { headers: this.determineRole(headers) })
      .catch(this.handleError);
  }
  putShipToMappingUrl(selectedAPI, shipToMapping) {
    return this._http.put(this._DJJProdUrl + 'Administration/' + selectedAPI, JSON.stringify(shipToMapping), { headers: this.determineRole(headers) })
      .catch(this.handleError);
  }
  putSupplierMappingUrl(selectedAPI, supplierMapping) {
    return this._http.put(this._DJJProdUrl + 'Administration/' + selectedAPI, JSON.stringify(supplierMapping), { headers: this.determineRole(headers) })
      .catch(this.handleError);
  }
  getAcknowledgementUrl(selectedAPIendpoint, selectedShowAcknowledged): Observable<Acknowledgement[]> {
      return this._http.get(this._DJJProdUrl +  'Consumer/Acknowledgements/' + selectedAPIendpoint + '/' + selectedShowAcknowledged, { headers: this.determineRole(headers) })
        .map(response => response.json() as Acknowledgement[])
        .catch(this.handleError);
  }
  // getAcknowledgementUrl(selectedAPIendpoint, selectedShowAcknowledged): Observable<Acknowledgement[]> {
  //     return this._http.get('src/acknowledgement.json')
  //     .map(response => response.json() as Acknowledgement[])
  //     .catch(this.handleError);
  // }
  // getPOAcknowledgementUrl(selectedPONumber) {
  //   return this._http.get(this._DJJProdUrl +  'Consumer/Acknowledgements/1/' + selectedPONumber, { headers: this.determineRole(headers) })
  //     .map(this.extractData)
  //     .catch(this.handleError);
  // }
  // getShipmentAcknowledgementUrl(selectedShipmentNumber) {
  //   return this._http.get(this._DJJProdUrl +  'Consumer/Acknowledgements/2/' + selectedPONumber, { headers: this.determineRole(headers) })
  //     .map(this.extractData)
  //     .catch(this.handleError);
  // }
  // getAPInvoiceAcknowledgementUrl(selectedAPInvoiceNumber) {
  //   return this._http.get(this._DJJProdUrl +  'Consumer/Acknowledgements/4/' + selectedAPInvoiceNumber, { headers: this.determineRole(headers) })
  //     .map(this.extractData)
  //     .catch(this.handleError);
  // }
  postAcknowledgement(selectedItemsToAcknowledge){
      return this._http.post(this._DJJProdUrl +  'Consumer/Acknowledgement', JSON.stringify(selectedItemsToAcknowledge), { headers: this.determineRole(headers) })
      .catch(this.handleError);
  }
  getScaleConnectPO() {
    return this._http.get(this._DJJConsumersProdUrl + 'Consumer/ScaleConnect/CustomerContract', { headers: this.determineRole(headers) })
      .map(this.extractData)
      .catch(this.handleError);
  }  
  getScaleConnectASN() {
    return this._http.get(this._DJJConsumersProdUrl + 'Consumer/ScaleConnect/CustomerShippingNotice', { headers: this.determineRole(headers) })
      .map(this.extractData)
      .catch(this.handleError);
  }
  getAPInvoices(InvoiceID){
    return this._http.get(this._DJJProdUrl + 'APInvoices/' + InvoiceID, { headers: this.determineRole(headers) })
      .map(this.extractData)
      .catch(this.handleError);
  }
  getAPInvoicesByDate(fromDate, toDate){
    return this._http.get(this._DJJProdUrl + 'APInvoices/' + fromDate + '/' + toDate, { headers: this.determineRole(headers) })
      .map(this.extractData)
      .catch(this.handleError);
  }
  getPurchaseOrders(POID){
    return this._http.get(this._DJJConsumersProdUrl + 'Consumer/PurchaseOrders/' + POID, { headers: this.determineRole(headers) })
      .map(this.extractData)
      .catch(this.handleError);
  }
  getPurchaseOrdersByDate(fromDate, toDate){
    return this._http.get(this._DJJConsumersProdUrl + 'Consumer/PurchaseOrders/' + fromDate + '/' + toDate, { headers: this.determineRole(headers) })
      .map(this.extractData)
      .catch(this.handleError);
  }
  // getShipments(shipmentNumber){
  //   return this._http.get(this._DJJConsumersProdUrl + 'Consumer/Shipments/' + shipmentNumber, { headers: this.determineRole(headers) })
  //     .map(this.extractData)
  //     .catch(this.handleError);
  // }
  getShipments(shipmentNumber) {
    return this._http.get(this._DJJConsumersProdUrl + 'Consumer/Shipments/' + shipmentNumber, { headers: this.determineRole(headers) })
      .map(res => res.json().PurchaseShipmentHeaders as Shipment[])
      .catch(this.handleError);
  }
  // getShipmentsByDate(fromDate, toDate){
  //   return this._http.get(this._DJJConsumersProdUrl + 'Consumer/Shipments/' + fromDate + '/' + toDate, { headers: this.determineRole(headers) })
  //     .map(this.extractData)
  //     .catch(this.handleError);
  // }
  getShipmentsByDate(fromDate, toDate) {
    return this._http.get(this._DJJConsumersProdUrl + 'Consumer/Shipments/' + fromDate + '/' + toDate, { headers: this.determineRole(headers) })
      .map(res => res.json().PurchaseShipmentHeaders as Shipment[])
      .catch(this.handleError);
  }
}