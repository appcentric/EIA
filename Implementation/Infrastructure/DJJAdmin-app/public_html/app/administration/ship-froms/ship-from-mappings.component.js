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
var ShipFromMappingsComponent = (function () {
    function ShipFromMappingsComponent(fb, _router, _service, _confirmService) {
        this._router = _router;
        this._service = _service;
        this._confirmService = _confirmService;
        this.selectedAPI = "ShipFromMappings";
        this.shipFromMapping = new PrimeShipFromMapping();
        this.form = fb.group({
            'EntityID': new forms_1.FormControl('', forms_1.Validators.required),
            'ReferenceID': new forms_1.FormControl('', forms_1.Validators.required)
        });
    }
    ShipFromMappingsComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(function (shipFromMappings) {
            return _this.shipFromMappings = shipFromMappings;
        }, function (response) {
            if (response.status == 204) {
                window.alert('This contains no data');
            }
            (function () { _this.loading = false; });
        });
    };
    ShipFromMappingsComponent.prototype.refreshPage = function () {
        var _this = this;
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(function (shipFromMappings) {
            return _this.shipFromMappings = shipFromMappings;
        }, null, function () { _this.loading = false; });
    };
    ShipFromMappingsComponent.prototype.showDialogToAdd = function () {
        this.newShipFromMapping = true;
        this.shipFromMapping = new PrimeShipFromMapping();
        this.displayDialog = true;
    };
    ShipFromMappingsComponent.prototype.save = function (value) {
        var result;
        if (this.newShipFromMapping) {
            this.shipFromMappings.push(this.shipFromMapping);
            result = this._service.addShipFromMappingUrl(this.selectedAPI, this.form.value);
        }
        else {
            this.shipFromMappings[this.findSelectedShipFromMappingIndex()] = this.shipFromMapping;
            result = this._service.addShipFromMappingUrl(this.selectedAPI, this.form.value);
        }
        result.subscribe(JSON.stringify);
        this.shipFromMapping = null;
        this.displayDialog = false;
    };
    ShipFromMappingsComponent.prototype.delete = function () {
        var _this = this;
        this._confirmService.confirm({
            message: 'Are you sure that you want delete this ship from mapping?',
            accept: function () {
                _this.shipFromMappings.splice(_this.findSelectedShipFromMappingIndex(), 1);
                _this._service.deleteMappingUrl(_this.selectedAPI, _this.shipFromMapping.EntityID)
                    .subscribe(null, function (err) {
                    alert("Could not delete the ship from mapping.");
                    _this.shipFromMappings.splice(_this.findSelectedShipFromMappingIndex(), 0, _this.shipFromMapping);
                });
                _this.shipFromMapping = null;
                _this.displayDialog = false;
            },
            reject: function () {
                _this.shipFromMapping = null;
                _this.displayDialog = false;
            }
        });
    };
    ShipFromMappingsComponent.prototype.cancel = function () {
        this.displayDialog = false;
    };
    ShipFromMappingsComponent.prototype.onRowSelect = function (event) {
        this.newShipFromMapping = false;
        this.shipFromMapping = this.cloneShipFromMapping(event.data);
        this.displayDialog = true;
    };
    ShipFromMappingsComponent.prototype.cloneShipFromMapping = function (s) {
        var shipFromMapping = new PrimeShipFromMapping();
        for (var prop in s) {
            shipFromMapping[prop] = s[prop];
        }
        return shipFromMapping;
    };
    ShipFromMappingsComponent.prototype.findSelectedShipFromMappingIndex = function () {
        return this.shipFromMappings.indexOf(this.selectedShipFromMapping);
    };
    ShipFromMappingsComponent.prototype.routerCanDeactivate = function () {
        if (this.form.dirty)
            return confirm('You have unsaved changes. Are you sure you want to navigate away?');
        return true;
    };
    ShipFromMappingsComponent = __decorate([
        core_1.Component({
            selector: 'shipfrommappings',
            templateUrl: './app/administration/ship-froms/ship-from-mappings.component.html',
            providers: [primeng_1.ConfirmationService]
        }), 
        __metadata('design:paramtypes', [forms_1.FormBuilder, router_1.Router, DJJAPI_service_1.DJJAPIService, primeng_1.ConfirmationService])
    ], ShipFromMappingsComponent);
    return ShipFromMappingsComponent;
}());
exports.ShipFromMappingsComponent = ShipFromMappingsComponent;
var PrimeShipFromMapping = (function () {
    function PrimeShipFromMapping(EntityID, ReferenceID) {
        this.EntityID = EntityID;
        this.ReferenceID = ReferenceID;
    }
    return PrimeShipFromMapping;
}());
//# sourceMappingURL=ship-from-mappings.component.js.map