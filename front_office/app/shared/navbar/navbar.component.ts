import { Component, DoCheck } from '@angular/core';
import { UtilisateurService } from '../../services/utilisateur.service';

@Component({
  moduleId: module.id,
  selector: 'sd-navbar',
  templateUrl: '../../../app/shared/navbar/navbar.component.html',
  styleUrls: ['../../../app/shared/navbar/navbar.component.css']
})

export class NavbarComponent { 
	private utilisateur: string;

	constructor (private _utilisateurService: UtilisateurService) { }

	ngDoCheck() {
      if(this._utilisateurService.getNavBar()) {
      this.utilisateur = this._utilisateurService.getUtilisateur() ;
    }
      this._utilisateurService.resetNavBar();
 	}
 }	
