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
var http_service_1 = require("../../services/http.service");
var AccueilComponent = (function () {
    function AccueilComponent(_httpService) {
        this._httpService = _httpService;
        this.link = 'http://localhost:3000/interventions';
    }
    AccueilComponent.prototype.ngOnInit = function () {
        this.getInterventions();
    };
    AccueilComponent.prototype.getInterventions = function () {
        var _this = this;
        this._httpService.httpGet(this.link)
            .subscribe(function (data) {
            _this.interventions = data;
        }, function (error) { return alert(error); }, function () { return console.log("Finished"); });
    };
    return AccueilComponent;
}());
AccueilComponent = __decorate([
    core_1.Component({
        selector: 'accueil',
        templateUrl: '../../../app/components/accueil/accueil.html',
        styleUrls: ['../../../app/components/accueil/accueil.css'],
        providers: [http_service_1.HttpService]
    }),
    __metadata("design:paramtypes", [http_service_1.HttpService])
], AccueilComponent);
exports.AccueilComponent = AccueilComponent;
//# sourceMappingURL=accueil.component.js.map