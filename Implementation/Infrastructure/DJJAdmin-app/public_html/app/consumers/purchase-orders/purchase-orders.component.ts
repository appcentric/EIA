import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { DJJAPIService } from '../../services/DJJAPI.service';
import { POHeader, POLine, ShipToLocation, POFufillment, FreightRate } from './purchase-order';

@Component({
    selector: 'purchaseorders',
    templateUrl: './app/consumers/purchase-orders/purchase-orders.component.html'
})

export class PurchaseOrdersComponent implements OnInit {
    POs: any[]; 

    form: FormGroup;

    warning = true;

    loading;
    
    constructor(
        fb: FormBuilder,
        private _service: DJJAPIService
        ){
        this.form = fb.group({
            'PONumber': new FormControl('', Validators.compose([Validators.required, Validators.minLength(5), Validators.maxLength(7)]))
        });
    }
    
    ngOnInit() {
    }
    submit(PONumber: number) {
        this.loading = true;

        this._service.getPurchaseOrders(PONumber)
            .subscribe(POs => this.POs = POs.POHeader,
                null,
                () => { this.loading = false; });
    }
    closeWarning(){
        this.warning = false;
    }
}

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