import { OnInit } from '@angular/core';
import { DJJAPIService } from '../../services/DJJAPI.service';
export declare class FreightVendorEntitiesComponent implements OnInit {
    private _service;
    freightVendors: any[];
    selectedAPI: string;
    loading: any;
    constructor(_service: DJJAPIService);
    ngOnInit(): void;
    refreshPage(): void;
}
