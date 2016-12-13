import { Component } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'vueUE',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererUE/vueUE.html'
})

export class VueUEComponent {
  link = 'http://localhost:3000/gererUE';
  UE: any;
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
      this.getUE(this.id);
    }
  }

  getUE(id) {
    this._httpService.httpGet(this.link+"/"+id)
        .subscribe(
          data => {
            this.UE = data;
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }

  deleteUE(id) {
    this._httpService.httpDelete(this.link+"/"+id)
        .subscribe(
          data => { },
          error => alert(error),
          () => console.log("Finished")
        );
    this.sub.unsubscribe();
    this.router.navigate(['./gererUE']);
  }
}
