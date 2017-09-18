import { OnInit } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';
import { Router } from '@angular/router';
import { DJJAPIService } from '../../services/DJJAPI.service';
import { ConfirmationService } from 'primeng/primeng';
import { SupplierMapping } from './supplier-mapping';
export declare class SupplierMappingsComponent implements OnInit {
    private _router;
    private _service;
    private _confirmService;
    selectedAPI: string;
    form: FormGroup;
    displayDialog: boolean;
    supplierMapping: SupplierMapping;
    newSupplierMapping: boolean;
    selectedSupplierMapping: SupplierMapping;
    supplierMappings: SupplierMapping[];
    loading: any;
    constructor(fb: FormBuilder, _router: Router, _service: DJJAPIService, _confirmService: ConfirmationService);
    ngOnInit(): void;
    refreshPage(): void;
    showDialogToAdd(): void;
    save(value: string): void;
    delete(): void;
    cancel(): void;
    onRowSelect(event: any): void;
    cloneSupplierMapping(s: SupplierMapping): SupplierMapping;
    findSelectedSupplierMappingIndex(): number;
}
