import { Component, OnInit } from '@angular/core';
import { ShopFloorToolsService } from '../../services/sft.service';
import { AuthService } from '../../services/auth.service';

@Component({
    selector: 'sfthome',
    templateUrl: './sft-home.html'
})

export class SFTHomeComponent implements OnInit {

    sftItems: any[];
    sftBatches: any[];

    constructor(
        private shopFloorToolsService: ShopFloorToolsService,
        public auth: AuthService
    ){ }
    
    ngOnInit(){
        this.shopFloorToolsService.getSFTItems().then(sftItems => this.sftItems = sftItems);
        this.shopFloorToolsService.getSFTBatches().then(sftBatches => this.sftBatches = sftBatches);
    }
    resetTable(dt) {    
        dt.reset();
    }
}