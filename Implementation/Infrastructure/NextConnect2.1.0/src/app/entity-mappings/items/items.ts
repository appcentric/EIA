import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { DJJAPIService } from '../../services/DJJAPI.service';
import { AuthService } from '../../services/auth.service';
import { ConfirmationService } from 'primeng/primeng';

@Component({
    templateUrl: './items.html',
    providers: [ConfirmationService]
})
export class ItemsComponent {
    constructor(private auth: AuthService){ }
}
