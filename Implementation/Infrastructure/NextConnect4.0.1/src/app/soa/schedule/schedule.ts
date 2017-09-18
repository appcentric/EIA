import { Component, OnInit } from '@angular/core';
import { SOAService } from '../../services/soa.service';
import { AuthService } from '../../services/auth.service';

@Component({
    selector: 'soaschedule',
    templateUrl: './schedule.html'
})

export class SOAScheduleComponent implements OnInit {

    constructor(
        private soaService: SOAService,
        private auth: AuthService
    ){ }
    
    ngOnInit(){ 
               
    }
}