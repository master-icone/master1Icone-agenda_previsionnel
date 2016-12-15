import { Component, DoCheck } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { Router, ActivatedRoute } from '@angular/router';
import { CommunicateService } from '../../services/communicate.service';
import { ConfirmationService } from 'primeng/primeng';

@Component({
  selector: 'vueStatuts',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererStatuts/vueStatuts.html'
})

export class VueStatutsComponent {
  id: any;
  urlStatuts = 'http://localhost:3000/gererStatuts';
  statuts: any;
  // Get personnel by statut
  urlPersonnels = 'http://localhost:3000/listePersonnelByStatut?statut=';
  personnels: any;
  // Add personnel to statut
  urlPersonnelsAdd = 'http://localhost:3000/listePersonnelByStatut';
  urlPersonnelsOpt = 'http://localhost:3000/listePersonnelByStatut?nom=';
  personnelsAdd: any;
  personnelAdd: any;
  personnelAd: any;
  resultAdd: any;

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

  ngDoCheck() {
    if(this.communicateService.getCheckChild()) {
      this.display();
    }
    this.communicateService.resetChild();
  }

  display() {
    if(this.id) {
      this.getStatut(this.id);
      this.getPersonnel(this.id);
      this.getPersonnelAdd();
    }
  }

  // Afficher la fiche statut
  getStatut(id) {
    this._httpService.httpGet(this.urlStatuts+"/"+id)
        .subscribe(
          data => {
            this.statuts = data;
          },
          error => {
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );
  }

  // Afficher la liste des personnel du statut
  getPersonnel(id) {
    this._httpService.httpGet(this.urlPersonnels+id)
        .subscribe(
          data => {
            this.personnels = data;
          },
          error => {alert(error);
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );
  }

  // Suppression d'un statut
  deleteStatut(id) {
    this._httpService.httpDelete(this.urlStatuts+"/"+id)
        .subscribe(
          data => {
            this.communicateService.setCheckParent();
            this.router.navigate(['./gererStatuts']);
          },
          error => {
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );
  }

  // Confirmer la suppression
  confirm() {
    this.confirmationService.confirm({
            message: 'Êtes vous sur de vouloir supprimer ce statut ?',
            header: 'Confirmer la suppression',
            icon: ' 	glyphicon glyphicon-info-sign',
            accept: () => {
              this.communicateService.setDisplay();
              this.deleteStatut(this.id);
            }
        });
  }

  // Ajouter un personnel à un statut
  getPersonnelAdd() {
    this._httpService.httpGet(this.urlPersonnelsAdd)
        .subscribe(
          data => {
            this.personnelsAdd = data;
          },
          error => {alert(error);
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );
  }


  updateStatutPersonnel() {
    this._httpService.httpGet(this.urlPersonnelsOpt+this.personnelAdd)
        .subscribe(
          data => {
            this.personnelAd = data[0];
            this.resultAdd = '{"nom": "'+this.personnelAd.nom+'","prenom":"'+this.personnelAd.prenom+'","statut":'+this.id+'}';
            this.putPersonnelInStatut();
          },
          error => {alert(error);
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );


  }

  putPersonnelInStatut() {
    this._httpService.httpPut(this.urlPersonnelsAdd+'/'+this.personnelAd.id, this.resultAdd)
        .subscribe(
          data => {
            this.display();
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
}
