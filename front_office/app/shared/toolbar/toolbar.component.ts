import { Component, DoCheck } from '@angular/core';
import { UtilisateurService } from '../../services/utilisateur.service';

@Component({
  moduleId: module.id,
  selector: 'sd-toolbar',
  templateUrl: '../../../app/shared/toolbar/toolbar.component.html',
  styleUrls: ['../../../app/shared/toolbar/toolbar.component.css']
})

export class ToolbarComponent {
	utilisateur: string;

	constructor (private _utilisateurService: UtilisateurService) { }	

	onClick () {
        this._utilisateurService.setUtilisateur(" ");
    }

    ngDoCheck() {
      if(this._utilisateurService.getToolBar()) {
      this.utilisateur = this._utilisateurService.getUtilisateur() ;
    }
    this._utilisateurService.resetToolBar();
  }
}
