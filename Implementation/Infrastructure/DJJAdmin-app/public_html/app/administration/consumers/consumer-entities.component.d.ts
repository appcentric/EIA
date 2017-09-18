import { OnInit } from '@angular/core';
import { DJJAPIService } from '../../services/DJJAPI.service';
export declare class ConsumerEntitiesComponent implements OnInit {
    private _service;
    consumers: any[];
    selectedAPI: string;
    loading: any;
    constructor(_service: DJJAPIService);
    ngOnInit(): void;
    refreshPage(): void;
}
