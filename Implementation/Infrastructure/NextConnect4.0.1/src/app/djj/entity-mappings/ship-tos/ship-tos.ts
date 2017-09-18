import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { DJJAPIService } from '../../../services/djj.service';
import { AuthService } from '../../../services/auth.service';
import { ConfirmationService } from 'primeng/primeng';

@Component({
    templateUrl: './ship-tos.html',
    providers: [ConfirmationService]
})

export class ShipTosComponent{
    constructor(public auth: AuthService){ }
}