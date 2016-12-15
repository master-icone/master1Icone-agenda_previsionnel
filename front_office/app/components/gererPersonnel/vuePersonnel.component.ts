import { Component, DoCheck } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { Router, ActivatedRoute } from '@angular/router';
import { CommunicateService } from '../../services/communicate.service';
import { ConfirmationService } from 'primeng/primeng';

@Component({
  selector: 'vuePersonnel',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererPersonnel/vuePersonnel.html'
})

export class VuePersonnelComponent {
  link = 'http://localhost:3000/gererPersonnel';
  personnel: any;
  id: any;
  urlInterventions = "http://localhost:3000/interventions?idPerson=";
  interventions: any;

  constructor (private _httpService: HttpService,
               params: ActivatedRoute,
               private router: Router,
               private communicateService: CommunicateService,
               private confirmationService: ConfirmationService) {
    params.params.subscribe(params => {
        this.id = params['id'];
    });
    this.display();
  }

  confirm() {
    this.confirmationService.confirm({
            message: 'Êtes vous sur de vouloir supprimer ce personnel ?',
            header: 'Confirmer la suppression',
            icon: ' 	glyphicon glyphicon-info-sign',
            accept: () => {
              this.communicateService.setDisplay();
              this.deletePersonnel(this.id);
            }
        });
  }

  ngDoCheck() {
    if(this.communicateService.getCheckChild()) {
      this.display();
    }
    this.communicateService.resetChild();
  }

  display() {
    if(this.id) {
      this.getPersonnel(this.id);
      this.getInterventions(this.id);
    }
  }

  // Afficher la fiche personnel
  getPersonnel(id) {
    this._httpService.httpGet(this.link+"/"+id)
        .subscribe(
          data => {
            this.personnel = data;
          },
          error => {
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );
  }

  // Suppression d'un personnel
  deletePersonnel(id) {
    this._httpService.httpDelete(this.link+"/"+id)
        .subscribe(
          data => {
            this.communicateService.setCheckParent();
            this.router.navigate(['./gererPersonnel']);
          },
          error => {
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );
  }

  getInterventions(id) {
    this._httpService.httpGet(this.urlInterventions+id)
        .subscribe(
          data => {
            this.interventions = data;
          },
          error => {
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );
  }
}
