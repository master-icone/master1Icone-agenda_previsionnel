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
  label: string;
  heures: string;
  autorisation: string;
  data: string;

  constructor (private _httpService: HttpService, private router: Router) { }

  postData() {
    this.data = 'label='+this.label+'&heures='+this.heures+'&autorisation='+this.autorisation;
    this._httpService.httpPost(this.link, this.data)
        .subscribe(
          data => { },
          error => alert(error),
          () => console.log("Finished")
        );
    this.router.navigate(['./gererStatuts']);
  }
}
