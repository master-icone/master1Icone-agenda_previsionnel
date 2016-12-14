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
  urlPersonnels = 'http://localhost:3000/listePersonnelByStatut?statut=';
  personnels: any;

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
    }
  }

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
}
