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
var ConsumerMappingsComponent = (function () {
    function ConsumerMappingsComponent(fb, _router, _service, _confirmService) {
        this._router = _router;
        this._service = _service;
        this._confirmService = _confirmService;
        this.selectedAPI = "ConsumerMappings";
        this.consumerMapping = new PrimeConsumerMapping();
        this.form = fb.group({
            'EntityID': new forms_1.FormControl('', forms_1.Validators.required),
            'ReferenceID': new forms_1.FormControl('', forms_1.Validators.required)
        });
    }
    ConsumerMappingsComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(function (consumerMappings) { return _this.consumerMappings = consumerMappings; }, function (error) { return _this.errorMessage = error; }, function () { _this.loading = false; });
    };
    ConsumerMappingsComponent.prototype.refreshPage = function () {
        var _this = this;
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(function (consumerMappings) {
            return _this.consumerMappings = consumerMappings;
        }, null, function () { _this.loading = false; });
    };
    ConsumerMappingsComponent.prototype.showDialogToAdd = function () {
        this.newConsumerMapping = true;
        this.consumerMapping = new PrimeConsumerMapping();
        this.displayDialog = true;
    };
    ConsumerMappingsComponent.prototype.save = function (value) {
        var result;
        if (this.newConsumerMapping) {
            this.consumerMappings.push(this.consumerMapping);
            result = this._service.addConsumerMappingUrl(this.selectedAPI, this.form.value);
        }
        else {
            this.consumerMappings[this.findSelectedConsumerMappingIndex()] = this.consumerMapping;
            result = this._service.addConsumerMappingUrl(this.selectedAPI, this.form.value);
        }
        result.subscribe(JSON.stringify);
        this.consumerMapping = null;
        this.displayDialog = false;
    };
    ConsumerMappingsComponent.prototype.delete = function () {
        var _this = this;
        this._confirmService.confirm({
            message: 'Are you sure that you want delete this consumer mapping?',
            accept: function () {
                _this.consumerMappings.splice(_this.findSelectedConsumerMappingIndex(), 1);
                _this._service.deleteMappingUrl(_this.selectedAPI, _this.consumerMapping.EntityID)
                    .subscribe(null, function (err) {
                    alert("Could not delete the consumer mapping.");
                    _this.consumerMappings.splice(_this.findSelectedConsumerMappingIndex(), 0, _this.consumerMapping);
                });
                _this.consumerMapping = null;
                _this.displayDialog = false;
            },
            reject: function () {
                _this.consumerMapping = null;
                _this.displayDialog = false;
            }
        });
    };
    ConsumerMappingsComponent.prototype.cancel = function () {
        this.displayDialog = false;
    };
    ConsumerMappingsComponent.prototype.onRowSelect = function (event) {
        this.newConsumerMapping = false;
        this.consumerMapping = this.cloneConsumerMapping(event.data);
        this.displayDialog = true;
    };
    ConsumerMappingsComponent.prototype.cloneConsumerMapping = function (s) {
        var consumerMapping = new PrimeConsumerMapping();
        for (var prop in s) {
            consumerMapping[prop] = s[prop];
        }
        return consumerMapping;
    };
    ConsumerMappingsComponent.prototype.findSelectedConsumerMappingIndex = function () {
        return this.consumerMappings.indexOf(this.selectedConsumerMapping);
    };
    ConsumerMappingsComponent = __decorate([
        core_1.Component({
            selector: 'consumermappings',
            templateUrl: './app/administration/consumers/consumer-mappings.component.html',
            providers: [primeng_1.ConfirmationService]
        }), 
        __metadata('design:paramtypes', [forms_1.FormBuilder, router_1.Router, DJJAPI_service_1.DJJAPIService, primeng_1.ConfirmationService])
    ], ConsumerMappingsComponent);
    return ConsumerMappingsComponent;
}());
exports.ConsumerMappingsComponent = ConsumerMappingsComponent;
var PrimeConsumerMapping = (function () {
    function PrimeConsumerMapping(EntityID, ReferenceID) {
        this.EntityID = EntityID;
        this.ReferenceID = ReferenceID;
    }
    return PrimeConsumerMapping;
}());
//# sourceMappingURL=consumer-mappings.component.js.map