import { Component, DoCheck } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { Router, ActivatedRoute } from '@angular/router';
import { CommunicateService } from '../../services/communicate.service';

@Component({
  selector: 'vuePersonnel',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererPersonnel/vuePersonnel.html'
})

export class VuePersonnelComponent {
  link = 'http://localhost:3000/gererPersonnel';
  personnel: any;
  id: any;
  test: string;

  constructor (private _httpService: HttpService,
               params: ActivatedRoute,
               private router: Router,
               private communicateService: CommunicateService) {
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

  change() {
    if(this.id) {
      this.getPersonnel(this.id);
    }
  }

  getPersonnel(id) {
    this._httpService.httpGet(this.link+"/"+id)
        .subscribe(
          data => {
            this.personnel = data;
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
}
