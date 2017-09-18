import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { DJJAPIService } from '../../services/DJJAPI.service';
import { ConfirmationService } from 'primeng/primeng';

@Component({
    templateUrl: './app/administration/items/items.component.html',
    providers: [ConfirmationService]
})
export class ItemsComponent {
}