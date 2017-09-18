"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var core_1 = require('@angular/core');
var http_1 = require('@angular/http');
var Observable_1 = require('rxjs/Observable');
var headers_component_1 = require('../shared/headers.component'); // <----------- PROD HEADERS
// import { headers } from '../shared/UATheaders.component';
require('rxjs/Rx');
var DJJAPIService = (function () {
    function DJJAPIService(_http) {
        this._http = _http;
        this._DJJProdUrl = "/RESTProxy?_subHost=djjapimanagement.azure-api.net&_path=DJJBrokerageExternalAPI/api/v1/";
        this._DJJUATUrl = "/RESTProxy?_subHost=djjapimanagementuat.azure-api.net&_path=DJJ.Brokerage.ExternalAPI/api/v1/";
        // for ScaleConnect .Consumer endpoint
        this._DJJConsumersProdUrl = "/RESTProxy?_subHost=djjapimanagement.azure-api.net&_path=DJJBrokerageExternalAPIConsumer/api/v1/";
        this._DJJConsumersUATUrl = "/RESTProxy?_subHost=djjapimanagementuat.azure-api.net&_path=DJJ.Brokerage.ExternalAPI.Consumer/api/v1/";
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
    DJJAPIService.prototype.extractData = function (res) {
        if (!res.ok) {
            throw new Error('Bad response status: ' + res.status);
        }
        else {
            return res.json();
        }
    };
    DJJAPIService.prototype.handleError = function (error) {
        // In a real world app, we might use a remote logging infrastructure
        // We'd also dig deeper into the error to get a better message
        var errMsg = (error.message) ? error.message :
            error.status ? "Please retry your request. Error status:  " + error.status + " - " + error.statusText : 'Server error';
        console.log(errMsg);
        // window.alert(errMsg); // log to console instead
        return Observable_1.Observable.throw(errMsg);
    };
    DJJAPIService.prototype.getUrl = function (selectedAPI) {
        return this._http.get(this._DJJProdUrl + 'Administration/' + selectedAPI, { headers: headers_component_1.headers })
            .map(this.extractData)
            .catch(this.handleError);
    };
    DJJAPIService.prototype.deleteMappingUrl = function (selectedAPI, selectedAPIMapping) {
        return this._http.delete(this._DJJProdUrl + 'Administration/' + selectedAPI + "/" + selectedAPIMapping, { headers: headers_component_1.headers });
    };
    DJJAPIService.prototype.addConsumerMappingUrl = function (selectedAPI, consumerMapping) {
        return this._http.put(this._DJJProdUrl + 'Administration/' + selectedAPI, JSON.stringify(consumerMapping), { headers: headers_component_1.headers })
            .map(this.extractData)
            .catch(this.handleError);
    };
    DJJAPIService.prototype.addFreightVendorMappingUrl = function (selectedAPI, freightVendorMapping) {
        return this._http.put(this._DJJProdUrl + 'Administration/' + selectedAPI, JSON.stringify(freightVendorMapping), { headers: headers_component_1.headers })
            .map(this.extractData)
            .catch(this.handleError);
    };
    DJJAPIService.prototype.addItemMappingUrl = function (selectedAPI, itemMapping) {
        return this._http.put(this._DJJProdUrl + 'Administration/' + selectedAPI, JSON.stringify(itemMapping), { headers: headers_component_1.headers })
            .map(this.extractData)
            .catch(this.handleError);
    };
    DJJAPIService.prototype.addShipFromMappingUrl = function (selectedAPI, shipFromMapping) {
        return this._http.put(this._DJJProdUrl + 'Administration/' + selectedAPI, JSON.stringify(shipFromMapping), { headers: headers_component_1.headers })
            .map(this.extractData)
            .catch(this.handleError);
    };
    DJJAPIService.prototype.addShipToMappingUrl = function (selectedAPI, shipToMapping) {
        return this._http.put(this._DJJProdUrl + 'Administration/' + selectedAPI, JSON.stringify(shipToMapping), { headers: headers_component_1.headers })
            .map(this.extractData)
            .catch(this.handleError);
    };
    DJJAPIService.prototype.addSupplierMappingUrl = function (selectedAPI, supplierMapping) {
        return this._http.put(this._DJJProdUrl + 'Administration/' + selectedAPI, JSON.stringify(supplierMapping), { headers: headers_component_1.headers })
            .map(this.extractData)
            .catch(this.handleError);
    };
    DJJAPIService.prototype.getAcknowledgementUrl = function (selectedAPIendpoint, selectedShowAcknowledged) {
        return this._http.get(this._DJJProdUrl + 'Consumer/Acknowledgements/' + selectedAPIendpoint + '/' + selectedShowAcknowledged, { headers: headers_component_1.headers })
            .map(this.extractData)
            .catch(this.handleError);
    };
    DJJAPIService.prototype.getScaleConnectPO = function () {
        return this._http.get(this._DJJConsumersProdUrl + 'Consumer/ScaleConnect/CustomerContract', { headers: headers_component_1.headers })
            .map(this.extractData)
            .catch(this.handleError);
    };
    DJJAPIService.prototype.getScaleConnectASN = function () {
        return this._http.get(this._DJJConsumersProdUrl + 'Consumer/ScaleConnect/CustomerShippingNotice', { headers: headers_component_1.headers })
            .map(this.extractData)
            .catch(this.handleError);
    };
    DJJAPIService.prototype.getAPInvoices = function (InvoiceID) {
        return this._http.get(this._DJJProdUrl + 'APInvoices/' + InvoiceID, { headers: headers_component_1.headers })
            .map(this.extractData)
            .catch(this.handleError);
    };
    DJJAPIService.prototype.getPurchaseOrders = function (POID) {
        return this._http.get(this._DJJConsumersProdUrl + 'Consumer/PurchaseOrders/' + POID, { headers: headers_component_1.headers })
            .map(this.extractData)
            .catch(this.handleError);
    };
    DJJAPIService.prototype.getShipments = function (shipmentNumber) {
        return this._http.get(this._DJJConsumersProdUrl + 'Consumer/Shipments/' + shipmentNumber, { headers: headers_component_1.headers })
            .map(this.extractData)
            .catch(this.handleError);
    };
    DJJAPIService = __decorate([
        core_1.Injectable(), 
        __metadata('design:paramtypes', [http_1.Http])
    ], DJJAPIService);
    return DJJAPIService;
}());
exports.DJJAPIService = DJJAPIService;
//# sourceMappingURL=DJJAPI.service.js.map