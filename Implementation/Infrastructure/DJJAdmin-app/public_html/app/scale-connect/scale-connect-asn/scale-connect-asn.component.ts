import { Component, OnInit } from '@angular/core';
import { DJJAPIService } from '../../services/DJJAPI.service';

@Component({
    selector: 'scaleconnectasn',
    templateUrl: './app/scale-connect/scale-connect-asn/scale-connect-asn.component.html'
})

export class ScaleConnectASNComponent implements OnInit{
    ASNs: any[];

    loading;

    constructor(private _service: DJJAPIService) {
    }
    ngOnInit(){
        this.loading  = true;
        this._service.getScaleConnectASN()
        .subscribe(
                ASNs =>  
                    this.ASNs = ASNs,
                    null,
                    () => { this.loading = false; });
    }
    refreshPage() {
        this.loading  = true;
        this._service.getScaleConnectASN()
        .subscribe(
                ASNs =>  
                    this.ASNs = ASNs,
                    null,
                    () => { this.loading = false; });
    }
}