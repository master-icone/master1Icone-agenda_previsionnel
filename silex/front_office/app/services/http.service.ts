import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';

@Injectable()
export class HttpService {
  constructor(private _http: Http) {}

  getDate(link: string) {
    return this._http.get(link)
        .map(res => res.json());
  }
}
