import { Component, Input, OnInit } from '@angular/core';
import { FormArray, FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { DJJAPIService } from '../../services/DJJAPI.service';

@Component({
    selector: 'apinvoices',
    templateUrl: './ap-invoices.html'
})

export class APInvoicesComponent implements OnInit {
    @Input() visible = true; 

    APInvoices: any[]; 
    
    apInvoiceAck: any[];

    form: FormGroup;

    errorMessage: string;

    loading: boolean;

    ackloading: boolean;
    
    constructor(
        private _fb: FormBuilder,
        private _service: DJJAPIService
        ){ }
    
    ngOnInit() {
        this.form = this._fb.group({
            //Makes variable required. The variable can only be a number that is between 5 and 7 digits.
            'APInvoice': new FormControl('', Validators.compose([Validators.required, Validators.minLength(5), Validators.maxLength(7), Validators.pattern('[0-9]+')]))
        });
    }
    submit(invoiceNumber: number) {
        this.loading = true;
        // this.ackloading = true;

        this._service.getAPInvoices(invoiceNumber)
            .subscribe(
                APInvoices => { this.APInvoices = APInvoices.APInvoices },
                error => { this.errorMessage = <any>error; this.loading = false; },
                () => { this.loading = false; }
            );

        // this._service.getAPInvoiceAcknowledgementUrl(invoiceNumber)
        //     .subscribe(
        //         apInvoiceAck => { this.apInvoiceAck = apInvoiceAck; },
        //         error => { this.errorMessage = <any>error; this.loading = false; },
        //         () => this.ackloading = false);       
    }
    //Download file as .json 
    // downloadFile(){
    //     var blob = new Blob([JSON.stringify(this.APInvoices)], { type: 'application/json' });
    //     var url= window.URL.createObjectURL(blob);
    //     window.open(url);
    // }
    closeError(){
        this.errorMessage = null;
        this.form.reset();
    }
}