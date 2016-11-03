"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var core_1 = require("@angular/core");
var PROFS = [
    { id: 1, name: 'dupont' },
    { id: 2, name: 'durant' },
    { id: 3, name: 'sagnier' }
];
var AppComponent = (function () {
    function AppComponent() {
        this.title = 'Planif YOUR prof';
        this.profs = PROFS;
    }
    AppComponent.prototype.onSelect = function (prof) {
        this.selectedProf = prof;
    };
    return AppComponent;
}());
AppComponent = __decorate([
    core_1.Component({
        selector: 'my-app',
        template: "\n  <h1>{{title}}</h1>\n  <ul>\n    <li *ngFor=\"let prof of profs\" (click)=\"onSelect(prof)\"><h5>{{prof.name}}</h5></li>\n  </ul>\n  <div *ngIf=\"selectedProf\">\n    Details : {{selectedProf.id}}\n  </div>\n  <detail [prof]=\"selectedProf\"></detail>\n  "
    }),
    __metadata("design:paramtypes", [])
], AppComponent);
exports.AppComponent = AppComponent;
//# sourceMappingURL=app.component.js.map