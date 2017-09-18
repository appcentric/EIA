import { OnInit } from '@angular/core';
import { SelectItem } from 'primeng/primeng';
import { DJJAPIService } from '../services/DJJAPI.service';
import { Acknowledgement } from './acknowledgement';
export declare class AcknowledgementsComponent implements OnInit {
    private _service;
    acknowledgements: Acknowledgement[];
    selectedAcknowledgement: Acknowledgement;
    APIendpoint: SelectItem[];
    selectedAPIendpoint: string;
    showAcknowledged: SelectItem[];
    selectedShowAcknowledged: string;
    loading: any;
    displayDialog: boolean;
    constructor(_service: DJJAPIService);
    ngOnInit(): void;
    refreshPage(): void;
    onChange(): void;
}
