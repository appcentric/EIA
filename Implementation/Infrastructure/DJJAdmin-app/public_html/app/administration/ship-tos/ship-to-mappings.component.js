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
var ShipToMappingsComponent = (function () {
    function ShipToMappingsComponent(fb, _router, _service, _confirmService) {
        this._router = _router;
        this._service = _service;
        this._confirmService = _confirmService;
        this.selectedAPI = "ShipToMappings";
        this.shipToMapping = new PrimeShipToMapping();
        this.form = fb.group({
            'EntityID': new forms_1.FormControl('', forms_1.Validators.required),
            'ReferenceID': new forms_1.FormControl('', forms_1.Validators.required)
        });
    }
    ShipToMappingsComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(function (shipToMappings) {
            return _this.shipToMappings = shipToMappings;
        }, function (response) {
            if (response.status == 204) {
                window.alert('This contains no data');
            }
            (function () { _this.loading = false; });
        });
    };
    ShipToMappingsComponent.prototype.refreshPage = function () {
        var _this = this;
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(function (shipToMappings) {
            return _this.shipToMappings = shipToMappings;
        }, null, function () { _this.loading = false; });
    };
    ShipToMappingsComponent.prototype.showDialogToAdd = function () {
        this.newShipToMapping = true;
        this.shipToMapping = new PrimeShipToMapping();
        this.displayDialog = true;
    };
    ShipToMappingsComponent.prototype.save = function (value) {
        var result;
        if (this.newShipToMapping) {
            this.shipToMappings.push(this.shipToMapping);
            result = this._service.addShipToMappingUrl(this.selectedAPI, this.form.value);
        }
        else {
            this.shipToMappings[this.findSelectedShipToMappingIndex()] = this.shipToMapping;
            result = this._service.addShipToMappingUrl(this.selectedAPI, this.form.value);
        }
        result.subscribe(JSON.stringify);
        this.shipToMapping = null;
        this.displayDialog = false;
    };
    ShipToMappingsComponent.prototype.delete = function () {
        var _this = this;
        this._confirmService.confirm({
            message: 'Are you sure that you want delete this ship to mapping?',
            accept: function () {
                _this.shipToMappings.splice(_this.findSelectedShipToMappingIndex(), 1);
                _this._service.deleteMappingUrl(_this.selectedAPI, _this.shipToMapping.EntityID)
                    .subscribe(null, function (err) {
                    alert("Could not delete this ship to mapping.");
                    _this.shipToMappings.splice(_this.findSelectedShipToMappingIndex(), 0, _this.shipToMapping);
                });
                _this.shipToMapping = null;
                _this.displayDialog = false;
            },
            reject: function () {
                _this.shipToMapping = null;
                _this.displayDialog = false;
            }
        });
    };
    ShipToMappingsComponent.prototype.cancel = function () {
        this.displayDialog = false;
    };
    ShipToMappingsComponent.prototype.onRowSelect = function (event) {
        this.newShipToMapping = false;
        this.shipToMapping = this.cloneShipToMapping(event.data);
        this.displayDialog = true;
    };
    ShipToMappingsComponent.prototype.cloneShipToMapping = function (s) {
        var shipToMapping = new PrimeShipToMapping();
        for (var prop in s) {
            shipToMapping[prop] = s[prop];
        }
        return shipToMapping;
    };
    ShipToMappingsComponent.prototype.findSelectedShipToMappingIndex = function () {
        return this.shipToMappings.indexOf(this.selectedShipToMapping);
    };
    ShipToMappingsComponent.prototype.routerCanDeactivate = function () {
        if (this.form.dirty)
            return confirm('You have unsaved changes. Are you sure you want to navigate away?');
        return true;
    };
    ShipToMappingsComponent = __decorate([
        core_1.Component({
            selector: 'shiptomappings',
            templateUrl: './app/administration/ship-tos/ship-to-mappings.component.html',
            providers: [primeng_1.ConfirmationService]
        }), 
        __metadata('design:paramtypes', [forms_1.FormBuilder, router_1.Router, DJJAPI_service_1.DJJAPIService, primeng_1.ConfirmationService])
    ], ShipToMappingsComponent);
    return ShipToMappingsComponent;
}());
exports.ShipToMappingsComponent = ShipToMappingsComponent;
var PrimeShipToMapping = (function () {
    function PrimeShipToMapping(EntityID, ReferenceID) {
        this.EntityID = EntityID;
        this.ReferenceID = ReferenceID;
    }
    return PrimeShipToMapping;
}());
//# sourceMappingURL=ship-to-mappings.component.js.map