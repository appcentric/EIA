import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { DJJAPIService } from '../../../services/djj.service';
import { AuthService } from '../../../services/auth.service';
import { ConfirmationService } from 'primeng/primeng';

@Component({
    templateUrl: './consumers.html',
    providers: [ConfirmationService]
})
export class ConsumersComponent {
    constructor(public auth: AuthService){ }
}