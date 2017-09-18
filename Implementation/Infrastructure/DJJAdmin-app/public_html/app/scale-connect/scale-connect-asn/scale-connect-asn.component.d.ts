import { OnInit } from '@angular/core';
import { DJJAPIService } from '../../services/DJJAPI.service';
export declare class ScaleConnectASNComponent implements OnInit {
    private _service;
    ASNs: any[];
    loading: any;
    constructor(_service: DJJAPIService);
    ngOnInit(): void;
    refreshPage(): void;
}
