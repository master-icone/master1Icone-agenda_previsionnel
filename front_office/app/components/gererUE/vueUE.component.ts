import { Component, DoCheck } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { Router, ActivatedRoute } from '@angular/router';
import { CommunicateService } from '../../services/communicate.service';
import { ConfirmationService } from 'primeng/primeng';

@Component({
  selector: 'vueUE',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererUE/vueUE.html'
})

export class VueUEComponent {
  id: any;
  urlGererUE = 'http://localhost:3000/gererUE';
  UE: any;

  urlPersonnels = 'http://localhost:3000/listePersonnelByUE?ue=';
  personnels: any;

  urlPersonnelsAdd = 'http://localhost:3000/listePersonnelByUE';
  urlSearchPersonnel = 'http://localhost:3000/listePersonnelByUE?nom=';
  personnelsAdd: any;
  personnelAdd: any;
  personnelFind: any;
  resultAdd: any;

  displayDial: boolean = false;

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
            message: 'Êtes vous sur de vouloir supprimer cet UE ?',
            header: 'Confirmer la suppression',
            icon: ' 	glyphicon glyphicon-info-sign',
            accept: () => {
              this.communicateService.setDisplay();
              this.deleteUE(this.id);
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
      this.getUE(this.id);
      this.getPersonnel(this.id);
      this.getPersonnelAdd();
    }
  }

  getUE(id) {
    this._httpService.httpGet(this.urlGererUE+"/"+id)
        .subscribe(
          data => {
            this.UE = data;
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

  deleteUE(id) {
    this._httpService.httpDelete(this.urlGererUE+"/"+id)
        .subscribe(
          data => {
            this.communicateService.setCheckParent();
            this.router.navigate(['./gererUE']);
          },
          error => {
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );
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

  updateUEPersonnel() {
    this._httpService.httpGet(this.urlSearchPersonnel+this.personnelAdd)
        .subscribe(
          data => {
            this.personnelFind = data[0];
            this.resultAdd = '{"nom": "'+this.personnelFind.nom+'","prenom":"'+this.personnelFind.prenom+'","ue":'+this.id+'}';
            this.putPersonnelInUE();
          },
          error => {alert(error);
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );


  }

  putPersonnelInUE() {
    this._httpService.httpPut(this.urlPersonnelsAdd+'/'+this.personnelFind.id, this.resultAdd)
        .subscribe(
          data => {
            this.display();
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
}
