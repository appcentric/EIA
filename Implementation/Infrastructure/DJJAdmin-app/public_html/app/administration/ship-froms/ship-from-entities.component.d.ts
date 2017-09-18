import { DJJAPIService } from '../../services/DJJAPI.service';
export declare class ShipFromEntitiesComponent {
    private _service;
    shipFroms: any[];
    selectedAPI: string;
    loading: any;
    constructor(_service: DJJAPIService);
    ngOnInit(): void;
    refreshPage(): void;
}
