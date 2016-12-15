import { Component } from '@angular/core';
import { UtilisateurService } from '../../services/utilisateur.service';

@Component({
  selector: 'authentification',
  templateUrl: '../../../app/components/authentification/authentification.html'
})

export class AuthentificationComponent {
	 utilisateur: string;
	 constructor (private _utilisateurService: UtilisateurService) { }

	 onClick () {
        this._utilisateurService.setValueToolBar(this.utilisateur);
        this._utilisateurService.setValueNavBar(this.utilisateur);
    }
}
