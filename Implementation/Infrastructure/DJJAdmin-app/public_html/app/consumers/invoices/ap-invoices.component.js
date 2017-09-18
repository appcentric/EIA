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
var APInvoicesComponent = (function () {
    function APInvoicesComponent(fb, _service) {
        this._service = _service;
        this.warning = true;
        this.form = fb.group({
            'APInvoice': new forms_1.FormControl('', forms_1.Validators.compose([forms_1.Validators.required, forms_1.Validators.minLength(5), forms_1.Validators.maxLength(7)]))
        });
    }
    APInvoicesComponent.prototype.ngOnInit = function () {
    };
    APInvoicesComponent.prototype.submit = function (invoiceNumber) {
        var _this = this;
        this.loading = true;
        this._service.getAPInvoices(invoiceNumber)
            .subscribe(function (APInvoices) {
            return _this.APInvoices = APInvoices.APInvoices;
        }, null, function () { _this.loading = false; });
    };
    APInvoicesComponent.prototype.closeWarning = function () {
        this.warning = false;
    };
    APInvoicesComponent = __decorate([
        core_1.Component({
            selector: 'apinvoices',
            templateUrl: './app/consumers/invoices/ap-invoices.component.html'
        }), 
        __metadata('design:paramtypes', [forms_1.FormBuilder, DJJAPI_service_1.DJJAPIService])
    ], APInvoicesComponent);
    return APInvoicesComponent;
}());
exports.APInvoicesComponent = APInvoicesComponent;
//# sourceMappingURL=ap-invoices.component.js.map