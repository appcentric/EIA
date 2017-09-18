import { OnInit } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';
import { DJJAPIService } from '../../services/DJJAPI.service';
export declare class APInvoicesComponent implements OnInit {
    private _service;
    APInvoices: any[];
    form: FormGroup;
    warning: boolean;
    loading: any;
    constructor(fb: FormBuilder, _service: DJJAPIService);
    ngOnInit(): void;
    submit(invoiceNumber: number): void;
    closeWarning(): void;
}
