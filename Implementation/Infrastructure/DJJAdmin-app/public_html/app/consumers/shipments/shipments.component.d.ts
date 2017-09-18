import { OnInit } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';
import { DJJAPIService } from '../../services/DJJAPI.service';
export declare class ShipmentsComponent implements OnInit {
    private _service;
    shipments: any[];
    form: FormGroup;
    warning: boolean;
    loading: any;
    constructor(fb: FormBuilder, _service: DJJAPIService);
    ngOnInit(): void;
    submit(shipmentNumber: number): void;
    closeWarning(): void;
}
