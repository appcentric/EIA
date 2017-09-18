import { Component, OnInit } from '@angular/core';
import { DJJAPIService } from '../../services/DJJAPI.service';

@Component({
    selector: 'itementities',
    templateUrl: './app/administration/items/item-entities.component.html'
})

export class ItemEntitiesComponent {
    items: any[];
    selectedAPI = "ItemMasters";
    loading;

    constructor(private _service: DJJAPIService){
    }
    ngOnInit(){
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                items => 
                    this.items = items,
                    null,
                    () => { this.loading = false; });
    }
    refreshPage(){
        this.loading = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                items => 
                    this.items = items,
                    null,
                    () => { this.loading = false; });
    }
}