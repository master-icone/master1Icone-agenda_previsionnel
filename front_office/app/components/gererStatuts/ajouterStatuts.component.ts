import { Component } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { Router, ActivatedRoute } from '@angular/router';

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

  constructor (private _httpService: HttpService, private router: Router) { }

  ajouterStatut() {
    this.data = 'label='+this.label+'&heures='+this.heures+'&autorisation='+this.autorisation;
    this._httpService.httpPost(this.link, this.data)
        .subscribe(
          data => {
            this.router.navigate(['./gererStatuts'+'/'+data.id]);
          },
          error => alert(error),
          () => console.log("Finished")
        );

  }
}
