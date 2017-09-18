import { Component, OnInit } from '@angular/core';
import { DJJAPIService } from '../../services/DJJAPI.service';

@Component({
    selector: 'shipfromentities',
    templateUrl: './app/administration/ship-froms/ship-from-entities.component.html'
})

export class ShipFromEntitiesComponent {
    shipFroms: any[];
    selectedAPI = "ShipFroms";
    loading;

    constructor(private _service: DJJAPIService){
    }
    ngOnInit(){
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                shipFroms => 
                    this.shipFroms = shipFroms,
                    null,
                    () => { this.loading = false; });
    }
    refreshPage() {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                shipFroms => 
                    this.shipFroms = shipFroms,
                    null,
                    () => { this.loading = false; });
    }
}