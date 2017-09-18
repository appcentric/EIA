import { Component, OnInit } from '@angular/core';
import { DJJAPIService } from '../../services/DJJAPI.service';

@Component({
    selector: 'consumerentities',
    templateUrl: './app/administration/consumers/consumer-entities.component.html',
})

export class ConsumerEntitiesComponent implements OnInit{
    consumers: any[];
    selectedAPI = "Consumers";
    loading;

    constructor(private _service: DJJAPIService) {
    }
    ngOnInit(){
        this.loading  = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                consumers =>  
                    this.consumers = consumers,
                    null,
                    () => { this.loading = false; });
    }
    refreshPage() {
        this.loading  = true;
        this._service.getUrl(this.selectedAPI)
            .subscribe(
                consumers =>  
                    this.consumers = consumers,
                    null,
                    () => { this.loading = false; });
    }
}