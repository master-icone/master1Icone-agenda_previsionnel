import { Component } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'vueStatuts',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererStatuts/vueStatuts.html'
})

export class VueStatutsComponent {
  link = 'http://localhost:3000/gererStatuts';
  statuts: any;
  id: any;

  constructor (private _httpService: HttpService, params: ActivatedRoute, router: Router) {
    params.params.subscribe(params => {
        this.id = params['id'];
    });
    this.change();
    router.events.subscribe(() => this.change());
  }

  change() {
    if(this.id) {
      this.getStatut(this.id);
    }
  }

  getStatut(id) {
    this._httpService.httpGet(this.link+"/"+id)
        .subscribe(
          data => {
            this.statuts = data;
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
}
