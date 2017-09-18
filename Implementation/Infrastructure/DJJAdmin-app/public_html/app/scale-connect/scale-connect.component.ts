import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { DJJAPIService } from '../services/DJJAPI.service';
import { ConfirmationService } from 'primeng/primeng';

@Component({
    selector: 'scaleconnect',
    templateUrl: './app/scale-connect/scale-connect.component.html',
    providers: [ConfirmationService]
})
export class ScaleConnectComponent {
}