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
  sub;

  constructor (private _httpService: HttpService, params: ActivatedRoute, private router: Router) {
    params.params.subscribe(params => {
        this.id = params['id'];
    });
    this.change();
    this.sub = router.events.subscribe(() => this.change());
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

  deleteStatut(id) {
    this._httpService.httpDelete(this.link+"/"+id)
        .subscribe(
          data => { },
          error => alert(error),
          () => console.log("Finished")
        );
    this.sub.unsubscribe();
    this.router.navigate(['./gererStatuts']);
  }
}
