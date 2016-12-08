import {Injectable} from '@angular/core';
import {Http} from '@angular/http';
import {Car} from '../interfaces';
import 'rxjs/add/operator/toPromise';

@Injectable()
export class CarService {

    constructor(private http: Http) {}

    getCarsSmall() {
        return this.http.get('http://localhost:3000/cars')
                    .toPromise()
                    .then(res => <Car[]> res.json().data)
                    .then(data => { return data; });
    }
}
