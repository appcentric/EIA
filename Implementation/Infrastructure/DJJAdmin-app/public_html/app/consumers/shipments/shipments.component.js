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
var forms_1 = require('@angular/forms');
var DJJAPI_service_1 = require('../../services/DJJAPI.service');
var ShipmentsComponent = (function () {
    function ShipmentsComponent(fb, _service) {
        this._service = _service;
        this.warning = true;
        this.form = fb.group({
            'shipmentNumber': new forms_1.FormControl('', forms_1.Validators.compose([forms_1.Validators.required, forms_1.Validators.minLength(5), forms_1.Validators.maxLength(7)]))
        });
    }
    ShipmentsComponent.prototype.ngOnInit = function () {
    };
    ShipmentsComponent.prototype.submit = function (shipmentNumber) {
        var _this = this;
        this.loading = true;
        this._service.getShipments(shipmentNumber)
            .subscribe(function (shipments) {
            return _this.shipments = shipments.PurchaseShipmentHeaders;
        }, null, function () { _this.loading = false; });
    };
    ShipmentsComponent.prototype.closeWarning = function () {
        this.warning = false;
    };
    ShipmentsComponent = __decorate([
        core_1.Component({
            selector: 'shipments',
            templateUrl: './app/consumers/shipments/shipments.component.html'
        }), 
        __metadata('design:paramtypes', [forms_1.FormBuilder, DJJAPI_service_1.DJJAPIService])
    ], ShipmentsComponent);
    return ShipmentsComponent;
}());
exports.ShipmentsComponent = ShipmentsComponent;
//# sourceMappingURL=shipments.component.js.map