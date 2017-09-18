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
var DJJAPI_service_1 = require('../../services/DJJAPI.service');
var ItemEntitiesComponent = (function () {
    function ItemEntitiesComponent(_service) {
        this._service = _service;
        this.selectedAPI = "ItemMasters";
    }
    ItemEntitiesComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(function (items) {
            return _this.items = items;
        }, null, function () { _this.loading = false; });
    };
    ItemEntitiesComponent.prototype.refreshPage = function () {
        var _this = this;
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(function (items) {
            return _this.items = items;
        }, null, function () { _this.loading = false; });
    };
    ItemEntitiesComponent = __decorate([
        core_1.Component({
            selector: 'itementities',
            templateUrl: './app/administration/items/item-entities.component.html'
        }), 
        __metadata('design:paramtypes', [DJJAPI_service_1.DJJAPIService])
    ], ItemEntitiesComponent);
    return ItemEntitiesComponent;
}());
exports.ItemEntitiesComponent = ItemEntitiesComponent;
//# sourceMappingURL=item-entities.component.js.map