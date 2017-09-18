import { OnInit } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';
import { DJJAPIService } from '../../services/DJJAPI.service';
export declare class PurchaseOrdersComponent implements OnInit {
    private _service;
    POs: any[];
    form: FormGroup;
    warning: boolean;
    loading: any;
    constructor(fb: FormBuilder, _service: DJJAPIService);
    ngOnInit(): void;
    submit(PONumber: number): void;
    closeWarning(): void;
}
