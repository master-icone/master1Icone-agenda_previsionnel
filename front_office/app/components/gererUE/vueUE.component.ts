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
  link = 'http://localhost:3000/gererUE';
  UE: any;
  id: any;
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
    }
  }

  getUE(id) {
    this._httpService.httpGet(this.link+"/"+id)
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

  deleteUE(id) {
    this._httpService.httpDelete(this.link+"/"+id)
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

  showDialog() {
        this.displayDial = true;
  }
}
