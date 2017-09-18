import { Component, OnInit } from '@angular/core';
import { DJJAPIService } from '../../services/DJJAPI.service';


@Component({
    selector: 'shiptoentities',
    templateUrl: './app/administration/ship-tos/ship-to-entities.component.html'
})

export class ShipToEntitiesComponent {
    shipTos: any[];
    selectedAPI = "ShipTos";
    loading;

    constructor(private _service: DJJAPIService){
    }
    ngOnInit(){
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                shipTos =>
                    this.shipTos = shipTos,
                    null,
                    () => { this.loading = false; });
    }
    refreshPage() {
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                shipTos =>
                    this.shipTos = shipTos,
                    null,
                    () => { this.loading = false; });
    }
}