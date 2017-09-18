import { DJJAPIService } from '../../services/DJJAPI.service';
export declare class ItemEntitiesComponent {
    private _service;
    items: any[];
    selectedAPI: string;
    loading: any;
    constructor(_service: DJJAPIService);
    ngOnInit(): void;
    refreshPage(): void;
}
