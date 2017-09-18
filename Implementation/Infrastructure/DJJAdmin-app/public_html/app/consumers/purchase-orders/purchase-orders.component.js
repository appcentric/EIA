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
var PurchaseOrdersComponent = (function () {
    function PurchaseOrdersComponent(fb, _service) {
        this._service = _service;
        this.warning = true;
        this.form = fb.group({
            'PONumber': new forms_1.FormControl('', forms_1.Validators.compose([forms_1.Validators.required, forms_1.Validators.minLength(5), forms_1.Validators.maxLength(7)]))
        });
    }
    PurchaseOrdersComponent.prototype.ngOnInit = function () {
    };
    PurchaseOrdersComponent.prototype.submit = function (PONumber) {
        var _this = this;
        this.loading = true;
        this._service.getPurchaseOrders(PONumber)
            .subscribe(function (POs) { return _this.POs = POs.POHeader; }, null, function () { _this.loading = false; });
    };
    PurchaseOrdersComponent.prototype.closeWarning = function () {
        this.warning = false;
    };
    PurchaseOrdersComponent = __decorate([
        core_1.Component({
            selector: 'purchaseorders',
            templateUrl: './app/consumers/purchase-orders/purchase-orders.component.html'
        }), 
        __metadata('design:paramtypes', [forms_1.FormBuilder, DJJAPI_service_1.DJJAPIService])
    ], PurchaseOrdersComponent);
    return PurchaseOrdersComponent;
}());
exports.PurchaseOrdersComponent = PurchaseOrdersComponent;
// @Component({
//   moduleId: module.id,
//   selector: 'app-root',
//   templateUrl: 'app.component.html',
//   styleUrls: ['app.component.css'],
//   providers: [ BooksService ]
// })
// export class AppComponent {
//   books: Book[];
//   details: Book;
//   error: any;
//   validationError: any;
//   constructor(private http:Http, private errorNotifier:ErrorNotifierService,
//       private booksService:BooksService) {
//       this.errorNotifier.onError(err => {
//         this.error = err;
//         console.log(err);
//       });
//   }
//   getBooks() {
//       this.booksService.getBooks()
//               .subscribe((data:Book[]) => {
//                 this.books = data;
//               });
//   }
//   getBookDetails(bookId:string) {
//     this.booksService.getBookWithDetails(bookId)
//             .subscribe(details => {
//               this.details = details;
//             })
//   }
// } 
//# sourceMappingURL=purchase-orders.component.js.map