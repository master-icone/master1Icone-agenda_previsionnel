import { Component } from '@angular/core';
import { UtilisateurService } from '../../services/utilisateur.service';

@Component({
  moduleId: module.id,
  selector: 'sd-toolbar',
  templateUrl: '../../../app/shared/toolbar/toolbar.component.html',
  styleUrls: ['../../../app/shared/toolbar/toolbar.component.css']
})

export class ToolbarComponent {
	utilisateur: string;;

	constructor (private _utilisateurService: UtilisateurService) { }

	getUtilisateur(){
    this.utilisateur = this._utilisateurService.getValue();
  }
}
    