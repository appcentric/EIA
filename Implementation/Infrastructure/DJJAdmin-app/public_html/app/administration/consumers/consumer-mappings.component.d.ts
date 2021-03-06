import { OnInit } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';
import { Router } from '@angular/router';
import { DJJAPIService } from '../../services/DJJAPI.service';
import { ConfirmationService } from 'primeng/primeng';
import { ConsumerMapping } from './consumer-mapping';
export declare class ConsumerMappingsComponent implements OnInit {
    private _router;
    private _service;
    private _confirmService;
    selectedAPI: string;
    form: FormGroup;
    displayDialog: boolean;
    consumerMapping: ConsumerMapping;
    newConsumerMapping: boolean;
    selectedConsumerMapping: ConsumerMapping;
    consumerMappings: ConsumerMapping[];
    errorMessage: string;
    loading: any;
    constructor(fb: FormBuilder, _router: Router, _service: DJJAPIService, _confirmService: ConfirmationService);
    ngOnInit(): void;
    refreshPage(): void;
    showDialogToAdd(): void;
    save(value: string): void;
    delete(): void;
    cancel(): void;
    onRowSelect(event: any): void;
    cloneConsumerMapping(s: ConsumerMapping): ConsumerMapping;
    findSelectedConsumerMappingIndex(): number;
}
