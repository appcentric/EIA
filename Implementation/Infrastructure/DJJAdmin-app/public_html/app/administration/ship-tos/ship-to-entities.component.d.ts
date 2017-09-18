import { DJJAPIService } from '../../services/DJJAPI.service';
export declare class ShipToEntitiesComponent {
    private _service;
    shipTos: any[];
    selectedAPI: string;
    loading: any;
    constructor(_service: DJJAPIService);
    ngOnInit(): void;
    refreshPage(): void;
}
