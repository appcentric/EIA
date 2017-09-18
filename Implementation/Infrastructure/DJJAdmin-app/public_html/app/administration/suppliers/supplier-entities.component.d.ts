import { DJJAPIService } from '../../services/DJJAPI.service';
export declare class SupplierEntitiesComponent {
    private _service;
    suppliers: any[];
    selectedAPI: string;
    loading: any;
    constructor(_service: DJJAPIService);
    ngOnInit(): void;
    refreshPage(): void;
}
