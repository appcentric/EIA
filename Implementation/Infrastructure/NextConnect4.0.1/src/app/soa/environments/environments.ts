import { Component, OnInit } from '@angular/core';
import { MenuItem, SelectItem } from 'primeng/primeng';
import { SOAService } from '../../services/soa.service';
import { AuthService } from '../../services/auth.service';

@Component({
    selector: 'soaenvironments',
    templateUrl: './environments.html'
})

export class SOAEnvironmentsComponent implements OnInit {

    environments: any[];

    cols: any[];

    urls: any[];
    
    selectedUrl: string;

    columnOptions: SelectItem[];

    constructor(
        private soaService: SOAService,
        private auth: AuthService
    ){ }
    
    ngOnInit(){
        this.soaService.getSOAEnvironments().then(environments => this.environments = environments);

        this.cols = [
            {field: 'type', header: 'Type'},
            {field: 'qmos_nsne', header: 'QMOS NSNE'},
            {field: 'qmos_nsut', header: 'QMOS NSUT'},
            {field: 'qmos_nstx', header: 'QMOS NSTX'},
            {field: 'qmos_nssea', header: 'QMOS NSSEA'},
            {field: 'l2_nsne', header: 'L2 NSNE'},
            {field: 'vcp', header: 'VCP'},
            {field: 'admin_server', header: 'Admin Server'},
            {field: 'soa_server1', header: 'SOA Server 1'},
            {field: 'soa_server2', header: 'SOA Server 2'},
            {field: 'soa_server3', header: 'SOA Server 3'},
            {field: 'soa_server4', header: 'SOA Server 4'}
        ];

        this.urls = [];
        this.urls.push({label:'Enterprise Manager', value:'em/'});
        this.urls.push({label:'Weblogic Admin Console', value:'console/'});
        this.urls.push({label:'Common Logging', value:'AuditLog/'});
        this.urls.push({label:'SOA DVM Composer', value:'soa/composer/'});
        this.urls.push({label:'NextConnect', value:'nextconnect/'});
    
        this.columnOptions = [];
            for(let i = 0; i < this.cols.length; i++) {
                this.columnOptions.push({label: this.cols[i].header, value: this.cols[i]});
        }
    }
    resetTable(dt) {    
        dt.reset();
    }
}