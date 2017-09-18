import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { DJJAPIService } from '../../services/DJJAPI.service';

@Component({
    selector: 'apinvoices',
    templateUrl: './app/consumers/invoices/ap-invoices.component.html'
})

export class APInvoicesComponent implements OnInit {
    APInvoices: any[]; 
    
    form: FormGroup;

    warning = true;

    loading;
    
    constructor(
        fb: FormBuilder,
        private _service: DJJAPIService
        ){ 
        this.form = fb.group({
            'APInvoice': new FormControl('', Validators.compose([Validators.required, Validators.minLength(5), Validators.maxLength(7)]))
        });
    }
    
    ngOnInit() {

    }
    submit(invoiceNumber: number) {
        this.loading = true;
        this._service.getAPInvoices(invoiceNumber)
            .subscribe(
            APInvoices =>
                this.APInvoices = APInvoices.APInvoices,
            null,
            () => { this.loading = false; });
    }
    closeWarning(){
        this.warning = false;
    }
}