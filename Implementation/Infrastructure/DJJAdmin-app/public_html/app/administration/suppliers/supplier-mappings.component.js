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
var router_1 = require('@angular/router');
var DJJAPI_service_1 = require('../../services/DJJAPI.service');
var primeng_1 = require('primeng/primeng');
var SupplierMappingsComponent = (function () {
    function SupplierMappingsComponent(fb, _router, _service, _confirmService) {
        this._router = _router;
        this._service = _service;
        this._confirmService = _confirmService;
        this.selectedAPI = "SupplierMappings";
        this.supplierMapping = new PrimeSupplierMapping();
        this.form = fb.group({
            'EntityID': new forms_1.FormControl('', forms_1.Validators.required),
            'ReferenceID': new forms_1.FormControl('', forms_1.Validators.required)
        });
    }
    SupplierMappingsComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(function (supplierMappings) {
            return _this.supplierMappings = supplierMappings;
        }, null, function () { _this.loading = false; });
    };
    SupplierMappingsComponent.prototype.refreshPage = function () {
        var _this = this;
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(function (supplierMappings) {
            return _this.supplierMappings = supplierMappings;
        }, null, function () { _this.loading = false; });
    };
    SupplierMappingsComponent.prototype.showDialogToAdd = function () {
        this.newSupplierMapping = true;
        this.supplierMapping = new PrimeSupplierMapping();
        this.displayDialog = true;
    };
    SupplierMappingsComponent.prototype.save = function (value) {
        var result;
        if (this.newSupplierMapping) {
            this.supplierMappings.push(this.supplierMapping);
            result = this._service.addSupplierMappingUrl(this.selectedAPI, this.form.value);
        }
        else {
            this.supplierMappings[this.findSelectedSupplierMappingIndex()] = this.supplierMapping;
            result = this._service.addSupplierMappingUrl(this.selectedAPI, this.form.value);
        }
        result.subscribe(JSON.stringify);
        this.supplierMapping = null;
        this.displayDialog = false;
    };
    SupplierMappingsComponent.prototype.delete = function () {
        var _this = this;
        this._confirmService.confirm({
            message: 'Are you sure that you want delete this supplier mapping?',
            accept: function () {
                _this.supplierMappings.splice(_this.findSelectedSupplierMappingIndex(), 1);
                _this._service.deleteMappingUrl(_this.selectedAPI, _this.supplierMapping.EntityID)
                    .subscribe(null, function (err) {
                    alert("Could not delete the supplier mapping.");
                    _this.supplierMappings.splice(_this.findSelectedSupplierMappingIndex(), 0, _this.supplierMapping);
                });
                _this.supplierMapping = null;
                _this.displayDialog = false;
            },
            reject: function () {
                _this.supplierMapping = null;
                _this.displayDialog = false;
            }
        });
    };
    SupplierMappingsComponent.prototype.cancel = function () {
        this.displayDialog = false;
    };
    SupplierMappingsComponent.prototype.onRowSelect = function (event) {
        this.newSupplierMapping = false;
        this.supplierMapping = this.cloneSupplierMapping(event.data);
        this.displayDialog = true;
    };
    SupplierMappingsComponent.prototype.cloneSupplierMapping = function (s) {
        var supplierMapping = new PrimeSupplierMapping();
        for (var prop in s) {
            supplierMapping[prop] = s[prop];
        }
        return supplierMapping;
    };
    SupplierMappingsComponent.prototype.findSelectedSupplierMappingIndex = function () {
        return this.supplierMappings.indexOf(this.selectedSupplierMapping);
    };
    SupplierMappingsComponent = __decorate([
        core_1.Component({
            selector: 'suppliermappings',
            templateUrl: './app/administration/suppliers/supplier-mappings.component.html',
            providers: [primeng_1.ConfirmationService]
        }), 
        __metadata('design:paramtypes', [forms_1.FormBuilder, router_1.Router, DJJAPI_service_1.DJJAPIService, primeng_1.ConfirmationService])
    ], SupplierMappingsComponent);
    return SupplierMappingsComponent;
}());
exports.SupplierMappingsComponent = SupplierMappingsComponent;
var PrimeSupplierMapping = (function () {
    function PrimeSupplierMapping(EntityID, ReferenceID) {
        this.EntityID = EntityID;
        this.ReferenceID = ReferenceID;
    }
    return PrimeSupplierMapping;
}());
//# sourceMappingURL=supplier-mappings.component.js.map