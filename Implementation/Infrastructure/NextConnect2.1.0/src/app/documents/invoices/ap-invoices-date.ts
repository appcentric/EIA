import { Component, Input, OnInit } from '@angular/core';
import { FormArray, FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { DJJAPIService } from '../../services/DJJAPI.service';
import { AuthService } from '../../services/auth.service';


@Component({
    selector: 'apinvoicesbydate',
    templateUrl: './ap-invoices-date.html'
})

export class APInvoicesByDateComponent implements OnInit {
     
    APInvoices: any[]; 
    
    apInvoiceAck: any[];

    form: FormGroup;

    fromDate: Date;

    toDate: Date;

    minDate: Date;

    maxDate: Date;

    invoiceDateFilter: string;

    dueDateFilter: string;

    createdDateFilter: string;

    lastUpdatedDateFilter: string;

    errorMessage: string;

    loading: boolean;

    ackloading: boolean;
    
    constructor(
        fb: FormBuilder,
        private _service: DJJAPIService,
        private auth: AuthService
        ){
        this.form = fb.group({
            'fromDate': new FormControl('', Validators.required),
            'toDate': new FormControl('', Validators.required)
        });
    }
    ngOnInit() {
        let today = new Date();
        let month = today.getMonth();
        let year = today.getFullYear();
        let prevMonth = (month === 0) ? 11 : month -2;
        let prevYear = (prevMonth === 11) ? year - 1 : year;
        let nextMonth = (month === 11) ? 0 : month;
        let nextYear = (nextMonth === 0) ? year + 1 : year;
        this.minDate = new Date();
        this.minDate.setMonth(prevMonth);
        this.minDate.setFullYear(prevYear);
        this.maxDate = new Date();
        this.maxDate.setMonth(nextMonth);
        this.maxDate.setFullYear(nextYear);
    }
    submit(fromDate, toDate) {
        this.loading = true;
        // this.ackloading = true;

        this._service.getAPInvoicesByDate(this.fromDate, this.toDate)
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
    resetTable(dt){
        this.invoiceDateFilter = null;
        this.dueDateFilter = null;
        this.createdDateFilter = null;
        this.lastUpdatedDateFilter = null;
        dt.reset();
    }
    closeError(){
        this.errorMessage = null;
        this.form.reset();
    }
}