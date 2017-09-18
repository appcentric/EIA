import { Injectable } from '@angular/core';
import { Http, Headers, RequestOptions, Response } from '@angular/http';
import { environment } from '../../environments/environment';
import { Observable } from 'rxjs/Observable';
import { Acknowledgement } from '../djj/acknowledgements/acknowledgement';
import { PurchaseOrder } from '../djj/documents/purchase-orders/purchase-order';
import { Shipment } from '../djj/documents/shipments/shipment';
import { AuthService } from './auth.service';
import 'rxjs/Rx';

environment.DJJUrl;
environment.DJJConsumerUrl;
environment.DJJUrl_key;
environment.DJJUrl_accept;
environment.DJJUrl_contentType;
environment.NSNE_APIUserId;
environment.NSUT_APIUserId;
environment.NSTX_APIUserId;
environment.NSSEA_APIUserId;

var headers;
export const NSNE_headers = new Headers();
NSNE_headers.append('Ocp-Apim-Subscription-Key', environment.DJJUrl_key);
NSNE_headers.append('APIUserId', environment.NSNE_APIUserId);
NSNE_headers.append('Accept', environment.DJJUrl_accept);
NSNE_headers.append('Content-Type', environment.DJJUrl_contentType);

export const NSUT_headers = new Headers();
NSUT_headers.append('Ocp-Apim-Subscription-Key', environment.DJJUrl_key);
NSUT_headers.append('APIUserId', environment.NSUT_APIUserId);
NSUT_headers.append('Accept', environment.DJJUrl_accept);
NSUT_headers.append('Content-Type', environment.DJJUrl_contentType);

export const NSTX_headers = new Headers();
NSTX_headers.append('Ocp-Apim-Subscription-Key', environment.DJJUrl_key);
NSTX_headers.append('APIUserId', environment.NSTX_APIUserId);
NSTX_headers.append('Accept', environment.DJJUrl_accept);
NSTX_headers.append('Content-Type', environment.DJJUrl_contentType);

export const NSSEA_headers = new Headers();
NSSEA_headers.append('Ocp-Apim-Subscription-Key', environment.DJJUrl_key);
NSSEA_headers.append('APIUserId', environment.NSSEA_APIUserId);
NSSEA_headers.append('Accept', environment.DJJUrl_accept);
NSSEA_headers.append('Content-Type', environment.DJJUrl_contentType);


@Injectable()
export class DJJAPIService {

  constructor(private _http: Http, private auth: AuthService) {
    console.log(environment.envName)
  }

  private determineRole(headers:Headers){
    if(this.auth.authenticated()){
      if (this.auth.userProfile.app_metadata.role === 'nsne_scrap_admin'){
        console.log('NSNE Admin');
        return NSNE_headers;
      }
      if (this.auth.userProfile.app_metadata.role === 'nsut_scrap_admin'){
        console.log('NSUT Admin');
        return NSUT_headers;
      }
      if (this.auth.userProfile.app_metadata.role === 'nstx_scrap_admin'){
        console.log('NSTX Admin');
        return NSTX_headers;
      }
      if (this.auth.userProfile.app_metadata.role === 'nssea_scrap_admin'){
        console.log('NSSEA Admin');
        return NSSEA_headers;
      }
      console.log('You are logged in but you do not have a role. Please contact your administrator.');
    }
    if(!this.auth.authenticated()){
      console.log('You are not logged in. Please log in and retry your request.');
    }
  }
  
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
    return this._http.get(environment.DJJUrl + 'Administration/' + selectedAPI, { headers: this.determineRole(headers) })
      .map(this.extractData)
      .catch(this.handleError);
  }
  deleteMappingUrl(selectedAPI, selectedAPIMapping) {
    return this._http.delete(environment.DJJUrl + 'Administration/' + selectedAPI + "/" + selectedAPIMapping, { headers: this.determineRole(headers) })
  }
  //uses put method to add mappings
  putConsumerMappingUrl(selectedAPI, consumerMapping) {
    return this._http.put(environment.DJJUrl + 'Administration/' + selectedAPI, JSON.stringify(consumerMapping), { headers: this.determineRole(headers) })
      .catch(this.handleError);
  }
  putFreightVendorMappingUrl(selectedAPI, freightVendorMapping) {
    return this._http.put(environment.DJJUrl + 'Administration/'  + selectedAPI, JSON.stringify(freightVendorMapping), { headers: this.determineRole(headers) })
      .catch(this.handleError);
  }
  putItemMappingUrl(selectedAPI, itemMapping) {
    return this._http.put(environment.DJJUrl + 'Administration/' + selectedAPI, JSON.stringify(itemMapping), { headers: this.determineRole(headers) })
      .catch(this.handleError);
  }
  putShipFromMappingUrl(selectedAPI, shipFromMapping) {
    return this._http.put(environment.DJJUrl + 'Administration/' + selectedAPI, JSON.stringify(shipFromMapping), { headers: this.determineRole(headers) })
      .catch(this.handleError);
  }
  putShipToMappingUrl(selectedAPI, shipToMapping) {
    return this._http.put(environment.DJJUrl + 'Administration/' + selectedAPI, JSON.stringify(shipToMapping), { headers: this.determineRole(headers) })
      .catch(this.handleError);
  }
  putSupplierMappingUrl(selectedAPI, supplierMapping) {
    return this._http.put(environment.DJJUrl + 'Administration/' + selectedAPI, JSON.stringify(supplierMapping), { headers: this.determineRole(headers) })
      .catch(this.handleError);
  }
  getAcknowledgementUrl(selectedAPIendpoint, selectedShowAcknowledged): Observable<Acknowledgement[]> {
      return this._http.get(environment.DJJUrl +  'Consumer/Acknowledgements/' + selectedAPIendpoint + '/' + selectedShowAcknowledged, { headers: this.determineRole(headers) })
        .map(response => response.json() as Acknowledgement[])
        .catch(this.handleError);
  }
  getPOAcknowledgementUrl(selectedPONumber) {
    return this._http.get(environment.DJJUrl +  'Consumer/DataChanges/' + selectedPONumber + '/1', { headers: this.determineRole(headers) })
      .map(this.extractData)
      .catch(this.handleError);
  }
  getShipmentAcknowledgementUrl(selectedShipmentNumber) {
    return this._http.get(environment.DJJUrl +  '/Consumer/DataChanges/' + selectedShipmentNumber + '/2', { headers: this.determineRole(headers) })
      .map(this.extractData)
      .catch(this.handleError);
  }
  getAPInvoiceAcknowledgementUrl(selectedAPInvoiceNumber) {
    return this._http.get(environment.DJJUrl +  'Consumer/DataChanges/' + selectedAPInvoiceNumber + '/4', { headers: this.determineRole(headers) })
      .map(this.extractData)
      .catch(this.handleError);
  }
  postAcknowledgement(selectedItemsToAcknowledge){
      return this._http.post(environment.DJJUrl +  'Consumer/Acknowledgement', JSON.stringify(selectedItemsToAcknowledge), { headers: this.determineRole(headers) })
      .catch(this.handleError);
  }
  getScaleConnectPO() {
    return this._http.get(environment.DJJConsumerUrl + 'Consumer/ScaleConnect/CustomerContract', { headers: this.determineRole(headers) })
      .map(this.extractData)
      .catch(this.handleError);
  }  
  getScaleConnectASN() {
    return this._http.get(environment.DJJConsumerUrl + 'Consumer/ScaleConnect/CustomerShippingNotice', { headers: this.determineRole(headers) })
      .map(this.extractData)
      .catch(this.handleError);
  }
  getAPInvoices(InvoiceID){
    return this._http.get(environment.DJJUrl + 'APInvoices/' + InvoiceID, { headers: this.determineRole(headers) })
      .map(this.extractData)
      .catch(this.handleError);
  }
  getAPInvoicesByDate(fromDate, toDate){
    return this._http.get(environment.DJJUrl + 'APInvoices/' + fromDate + '/' + toDate, { headers: this.determineRole(headers) })
      .map(this.extractData)
      .catch(this.handleError);
  }
  getPurchaseOrders(POID){
    return this._http.get(environment.DJJConsumerUrl + 'Consumer/PurchaseOrders/' + POID, { headers: this.determineRole(headers) })
      .map(this.extractData)
      .catch(this.handleError);
  }
  getPurchaseOrdersByDate(fromDate, toDate){
    return this._http.get(environment.DJJConsumerUrl + 'Consumer/PurchaseOrders/' + fromDate + '/' + toDate, { headers: this.determineRole(headers) })
      .map(this.extractData)
      .catch(this.handleError);
  }
  getShipments(shipmentNumber) {
    return this._http.get(environment.DJJConsumerUrl + 'Consumer/Shipments/' + shipmentNumber, { headers: this.determineRole(headers) })
      .map(res => res.json().PurchaseShipmentHeaders as Shipment[])
      .catch(this.handleError);
  }
  getShipmentsByDate(fromDate, toDate) {
    return this._http.get(environment.DJJConsumerUrl + 'Consumer/Shipments/' + fromDate + '/' + toDate, { headers: this.determineRole(headers) })
      .map(res => res.json().PurchaseShipmentHeaders as Shipment[])
      .catch(this.handleError);
  }
}