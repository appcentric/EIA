import { Component } from '@angular/core';
import { AuthService } from '../services/auth.service';

@Component({
  selector: 'profile',
  templateUrl: './profile.html'
})
export class ProfileComponent {
  
  constructor(private auth: AuthService) { }  
  
}