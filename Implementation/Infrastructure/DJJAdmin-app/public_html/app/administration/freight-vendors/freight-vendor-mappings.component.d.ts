import { OnInit } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';
import { Router } from '@angular/router';
import { DJJAPIService } from '../../services/DJJAPI.service';
import { ConfirmationService } from 'primeng/primeng';
import { FreightVendorMapping } from './freight-vendor-mapping';
export declare class FreightVendorMappingsComponent implements OnInit {
    private _router;
    private _service;
    private _confirmService;
    selectedAPI: string;
    form: FormGroup;
    displayDialog: boolean;
    freightVendorMapping: FreightVendorMapping;
    newFreightVendorMapping: boolean;
    selectedFreightVendorMapping: FreightVendorMapping;
    freightVendorMappings: FreightVendorMapping[];
    loading: any;
    constructor(fb: FormBuilder, _router: Router, _service: DJJAPIService, _confirmService: ConfirmationService);
    ngOnInit(): void;
    refreshPage(): void;
    showDialogToAdd(): void;
    save(value: string): void;
    delete(): void;
    cancel(): void;
    onRowSelect(event: any): void;
    cloneFreightVendorMapping(f: FreightVendorMapping): FreightVendorMapping;
    findSelectedFreightVendorMappingIndex(): number;
}
