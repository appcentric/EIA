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
var FreightVendorMappingsComponent = (function () {
    function FreightVendorMappingsComponent(fb, _router, _service, _confirmService) {
        this._router = _router;
        this._service = _service;
        this._confirmService = _confirmService;
        this.selectedAPI = "FreightVendorMappings";
        this.freightVendorMapping = new PrimeFreightVendorMapping();
        this.form = fb.group({
            'EntityID': new forms_1.FormControl('', forms_1.Validators.required),
            'ReferenceID': new forms_1.FormControl('', forms_1.Validators.required)
        });
    }
    FreightVendorMappingsComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(function (freightVendorMappings) {
            return _this.freightVendorMappings = freightVendorMappings;
        }, null, function () { _this.loading = false; });
    };
    FreightVendorMappingsComponent.prototype.refreshPage = function () {
        var _this = this;
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(function (freightVendorMappings) { return _this.freightVendorMappings = freightVendorMappings; }, null, function () { _this.loading = false; });
    };
    FreightVendorMappingsComponent.prototype.showDialogToAdd = function () {
        this.newFreightVendorMapping = true;
        this.freightVendorMapping = new PrimeFreightVendorMapping();
        this.displayDialog = true;
    };
    FreightVendorMappingsComponent.prototype.save = function (value) {
        var result;
        if (this.newFreightVendorMapping) {
            this.freightVendorMappings.push(this.freightVendorMapping);
            result = this._service.addFreightVendorMappingUrl(this.selectedAPI, JSON.stringify(this.form.value));
        }
        else {
            this.freightVendorMappings[this.findSelectedFreightVendorMappingIndex()] = this.freightVendorMapping;
            result = this._service.addFreightVendorMappingUrl(this.selectedAPI, JSON.stringify(this.form.value));
        }
        result.subscribe(JSON.stringify);
        this.freightVendorMapping = null;
        this.displayDialog = false;
    };
    FreightVendorMappingsComponent.prototype.delete = function () {
        var _this = this;
        this._confirmService.confirm({
            message: 'Are you sure that you want delete this freight vendor mapping?',
            accept: function () {
                _this.freightVendorMappings.splice(_this.findSelectedFreightVendorMappingIndex(), 1);
                _this._service.deleteMappingUrl(_this.selectedAPI, _this.freightVendorMapping.EntityID)
                    .subscribe(null, function (err) {
                    alert("Could not delete the freight vendor mapping.");
                    _this.freightVendorMappings.splice(_this.findSelectedFreightVendorMappingIndex(), 0, _this.freightVendorMapping);
                });
                _this.freightVendorMapping = null;
                _this.displayDialog = false;
            },
            reject: function () {
                _this.freightVendorMapping = null;
                _this.displayDialog = false;
            }
        });
    };
    FreightVendorMappingsComponent.prototype.cancel = function () {
        this.displayDialog = false;
    };
    FreightVendorMappingsComponent.prototype.onRowSelect = function (event) {
        this.newFreightVendorMapping = false;
        this.freightVendorMapping = this.cloneFreightVendorMapping(event.data);
        this.displayDialog = true;
    };
    FreightVendorMappingsComponent.prototype.cloneFreightVendorMapping = function (f) {
        var freightVendorMapping = new PrimeFreightVendorMapping();
        for (var prop in f) {
            freightVendorMapping[prop] = f[prop];
        }
        return freightVendorMapping;
    };
    FreightVendorMappingsComponent.prototype.findSelectedFreightVendorMappingIndex = function () {
        return this.freightVendorMappings.indexOf(this.selectedFreightVendorMapping);
    };
    FreightVendorMappingsComponent = __decorate([
        core_1.Component({
            selector: 'freightvendormappings',
            templateUrl: './app/administration/freight-vendors/freight-vendor-mappings.component.html',
            providers: [primeng_1.ConfirmationService]
        }), 
        __metadata('design:paramtypes', [forms_1.FormBuilder, router_1.Router, DJJAPI_service_1.DJJAPIService, primeng_1.ConfirmationService])
    ], FreightVendorMappingsComponent);
    return FreightVendorMappingsComponent;
}());
exports.FreightVendorMappingsComponent = FreightVendorMappingsComponent;
var PrimeFreightVendorMapping = (function () {
    function PrimeFreightVendorMapping(EntityID, ReferenceID) {
        this.EntityID = EntityID;
        this.ReferenceID = ReferenceID;
    }
    return PrimeFreightVendorMapping;
}());
//# sourceMappingURL=freight-vendor-mappings.component.js.map