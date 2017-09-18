import { OnInit } from '@angular/core';
import { DJJAPIService } from '../../services/DJJAPI.service';
export declare class ScaleConnectPOComponent implements OnInit {
    private _service;
    POs: any[];
    loading: any;
    constructor(_service: DJJAPIService);
    ngOnInit(): void;
    refreshPage(): void;
}
