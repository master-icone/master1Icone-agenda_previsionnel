import { Component } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { Router, ActivatedRoute } from '@angular/router';
import { CommunicateService } from '../../services/communicate.service';

@Component({
  selector: 'ajouterStatuts',
  templateUrl: '../../../app/components/gererStatuts/ajouterStatuts.html',
  providers: [HttpService]
})

export class AjouterStatutsComponent {
  link = 'http://localhost:3000/gererStatuts';
  label = "";
  heures = "";
  autorisation = "";
  data: string;
  result: any;

  constructor (private _httpService: HttpService,
               private router: Router,
               private communicateService: CommunicateService) { }

  ajouterStatut() {
    this.data = 'label='+this.label+'&heures='+this.heures+'&autorisation='+this.autorisation;
    this._httpService.httpPost(this.link, this.data)
        .subscribe(
          data => {
            this.communicateService.setCheckParent();
            this.router.navigate(['./gererStatuts'+'/'+data.id]);
          },
          error => {
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );
  }
}
