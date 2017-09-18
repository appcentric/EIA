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
var DJJAPI_service_1 = require('../services/DJJAPI.service');
var AcknowledgementsComponent = (function () {
    function AcknowledgementsComponent(_service) {
        this._service = _service;
        this.selectedAPIendpoint = '1';
        this.selectedShowAcknowledged = 'true';
        this.APIendpoint = [];
        this.APIendpoint.push({ label: 'Purchase Orders', value: '1' });
        this.APIendpoint.push({ label: 'Shipments', value: '2' });
        // this.APIendpoint.push({label:'AR Invoices', value:'3'});
        this.APIendpoint.push({ label: 'AP Invoices', value: '4' });
        this.showAcknowledged = [];
        this.showAcknowledged.push({ label: 'True', value: 'true' });
        this.showAcknowledged.push({ label: 'False', value: 'false' });
    }
    AcknowledgementsComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.loading = true;
        this._service.getAcknowledgementUrl(this.selectedAPIendpoint, this.selectedShowAcknowledged)
            .subscribe(function (acknowledgements) {
            return _this.acknowledgements = acknowledgements;
        }, null, function () { _this.loading = false; });
    };
    AcknowledgementsComponent.prototype.refreshPage = function () {
        var _this = this;
        this.loading = true;
        this._service.getAcknowledgementUrl(this.selectedAPIendpoint, this.selectedShowAcknowledged)
            .subscribe(function (acknowledgements) {
            return _this.acknowledgements = acknowledgements;
        }, null, function () { _this.loading = false; });
    };
    AcknowledgementsComponent.prototype.onChange = function () {
        var _this = this;
        this.loading = true;
        this._service.getAcknowledgementUrl(this.selectedAPIendpoint, this.selectedShowAcknowledged)
            .subscribe(function (acknowledgements) {
            return _this.acknowledgements = acknowledgements;
        }, null, function () { _this.loading = false; });
    };
    AcknowledgementsComponent = __decorate([
        core_1.Component({
            selector: 'acknowledgements',
            templateUrl: './app/acknowledgements/acknowledgements.component.html'
        }), 
        __metadata('design:paramtypes', [DJJAPI_service_1.DJJAPIService])
    ], AcknowledgementsComponent);
    return AcknowledgementsComponent;
}());
exports.AcknowledgementsComponent = AcknowledgementsComponent;
//# sourceMappingURL=acknowledgements.component.js.map