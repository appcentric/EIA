import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { DJJAPIService } from '../../services/DJJAPI.service';
import { ConfirmationService } from 'primeng/primeng';
import { ConsumerMapping } from '../consumers/consumer-mapping';
import { FreightVendorMapping } from '../freight-vendors/freight-vendor-mapping';
import { ItemMapping } from '../items/item-mapping';
import { ShipFromMapping } from '../ship-froms/ship-from-mapping';
import { ShipToMapping } from '../ship-tos/ship-to-mapping';
import { SupplierMapping } from '../suppliers/supplier-mapping';


@Component({
    selector: 'mappings',
    templateUrl: './app/administration/mappings/mappings.component.html',
    providers: [ConfirmationService]
})
export class MappingsComponent {
}