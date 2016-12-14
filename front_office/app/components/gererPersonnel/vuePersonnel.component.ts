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
  id: any;
  urlPersonnel = 'http://localhost:3000/gererPersonnel';
  personnel: any;
  test: string;
  urlIntervention = 'http://localhost:3000/interventions';
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

  ngDoCheck() {
    if(this.communicateService.getCheckChild()) {
      this.display();
    }
    this.communicateService.resetChild();
  }

  display() {
    if(this.id) {
      this.getPersonnel(this.id);
    }
  }

   getInterventions() {
    this._httpService.httpGet(this.urlIntervention)
        .subscribe(
          data => {
            this.interventions = data;
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }

  getPersonnel(id) {
    this._httpService.httpGet(this.urlPersonnel+"/"+id)
        .subscribe(
          data => {
            this.personnel = data;
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }


  change() {
    if(this.id) {
      this.getPersonnel(this.id);
    }
  }
}
