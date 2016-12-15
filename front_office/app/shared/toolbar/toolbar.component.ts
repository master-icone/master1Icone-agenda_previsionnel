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
        this._utilisateurService.setValueToolBar(" ");
    }

    ngDoCheck() {
      if(this._utilisateurService.getValueToolBar() != "") {
      this.utilisateur = this._utilisateurService.getValueToolBar() ;
    }
  }
}
