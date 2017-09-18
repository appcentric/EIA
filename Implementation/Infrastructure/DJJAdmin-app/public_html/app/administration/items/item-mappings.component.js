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
var ItemMappingsComponent = (function () {
    function ItemMappingsComponent(fb, _router, _service, _confirmService) {
        this._router = _router;
        this._service = _service;
        this._confirmService = _confirmService;
        this.selectedAPI = "ItemMappings";
        this.itemMapping = new PrimeItemMapping();
        this.form = fb.group({
            'ItemMasterID': new forms_1.FormControl('', forms_1.Validators.required),
            'ItemReferenceID': new forms_1.FormControl('', forms_1.Validators.required),
            'ItemName': new forms_1.FormControl(''),
            'ItemLongName': new forms_1.FormControl(''),
            'ItemTypeID': new forms_1.FormControl(''),
            'SendData': new forms_1.FormControl(''),
            'AddressBookTypeID': new forms_1.FormControl('', forms_1.Validators.required),
            'AddressBookTypeName': new forms_1.FormControl(''),
            'AddressBookNum': new forms_1.FormControl('', forms_1.Validators.required),
            'Name': new forms_1.FormControl(''),
        });
        this.AddressBookNums = [];
        this.AddressBookNums.push({ label: 'Select Address Book #', value: '' });
        this.AddressBookNums.push({ label: '942428', value: '942428' });
        this.AddressBookNums.push({ label: '1074757', value: '1074757' });
        this.AddressBookNums.push({ label: '7451313', value: '7451313' });
        this.AddressBookNums.push({ label: '7456421', value: '7456421' });
        this.AddressBookNums.push({ label: '7550340', value: '7550340' });
        this.AddressBookNums.push({ label: '7556711', value: '7556711' });
    }
    ItemMappingsComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(function (itemMappings) {
            return _this.itemMappings = itemMappings;
        }, null, function () { _this.loading = false; });
    };
    ItemMappingsComponent.prototype.refreshPage = function () {
        var _this = this;
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(function (itemMappings) {
            return _this.itemMappings = itemMappings;
        }, null, function () { _this.loading = false; });
    };
    ItemMappingsComponent.prototype.showDialogToAdd = function () {
        this.newItemMapping = true;
        this.itemMapping = new PrimeItemMapping();
        this.displayDialog = true;
    };
    ItemMappingsComponent.prototype.save = function (value) {
        var result;
        if (this.newItemMapping) {
            this.itemMappings.push(this.itemMapping);
            result = this._service.addItemMappingUrl(this.selectedAPI, this.form.value);
        }
        else {
            this.itemMappings[this.findSelectedItemMappingIndex()] = this.itemMapping;
            result = this._service.addItemMappingUrl(this.selectedAPI, this.form.value);
        }
        result.subscribe(JSON.stringify);
        this.itemMapping = null;
        this.displayDialog = false;
    };
    ItemMappingsComponent.prototype.delete = function () {
        var _this = this;
        this._confirmService.confirm({
            message: 'Are you sure that you want delete this item mapping?',
            accept: function () {
                _this.itemMappings.splice(_this.findSelectedItemMappingIndex(), 1);
                _this._service.deleteMappingUrl(_this.selectedAPI, _this.itemMapping.ItemMasterID)
                    .subscribe(null, function (err) {
                    alert("Could not delete the item mapping.");
                    _this.itemMappings.splice(_this.findSelectedItemMappingIndex(), 0, _this.itemMapping);
                });
                _this.itemMapping = null;
                _this.displayDialog = false;
            },
            reject: function () {
                _this.itemMapping = null;
                _this.displayDialog = false;
            }
        });
    };
    ItemMappingsComponent.prototype.cancel = function () {
        this.displayDialog = false;
    };
    ItemMappingsComponent.prototype.onRowSelect = function (event) {
        this.newItemMapping = false;
        this.itemMapping = this.cloneItemMapping(event.data);
        this.displayDialog = true;
    };
    ItemMappingsComponent.prototype.cloneItemMapping = function (i) {
        var itemMapping = new PrimeItemMapping();
        for (var prop in i) {
            itemMapping[prop] = i[prop];
        }
        return itemMapping;
    };
    ItemMappingsComponent.prototype.findSelectedItemMappingIndex = function () {
        return this.itemMappings.indexOf(this.selectedItemMapping);
    };
    ItemMappingsComponent.prototype.routerCanDeactivate = function () {
        if (this.form.dirty)
            return confirm('You have unsaved changes. Are you sure you want to navigate away?');
        return true;
    };
    ItemMappingsComponent = __decorate([
        core_1.Component({
            selector: 'itemmappings',
            templateUrl: './app/administration/items/item-mappings.component.html',
            providers: [primeng_1.ConfirmationService]
        }), 
        __metadata('design:paramtypes', [forms_1.FormBuilder, router_1.Router, DJJAPI_service_1.DJJAPIService, primeng_1.ConfirmationService])
    ], ItemMappingsComponent);
    return ItemMappingsComponent;
}());
exports.ItemMappingsComponent = ItemMappingsComponent;
var PrimeItemMapping = (function () {
    function PrimeItemMapping(ItemMasterID, ItemReferenceID, ItemName, ItemLongName, ItemTypeID, SendData, AddressBookTypeID, AddressBookTypeName, AddressBookNum, Name) {
        this.ItemMasterID = ItemMasterID;
        this.ItemReferenceID = ItemReferenceID;
        this.ItemName = ItemName;
        this.ItemLongName = ItemLongName;
        this.ItemTypeID = ItemTypeID;
        this.SendData = SendData;
        this.AddressBookTypeID = AddressBookTypeID;
        this.AddressBookTypeName = AddressBookTypeName;
        this.AddressBookNum = AddressBookNum;
        this.Name = Name;
    }
    return PrimeItemMapping;
}());
//# sourceMappingURL=item-mappings.component.js.map