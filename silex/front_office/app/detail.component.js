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
var core_1 = require('@angular/core');
var prof_1 = require('./prof');
var DetailComponent = (function () {
    function DetailComponent() {
    }
    __decorate([
        core_1.Input(), 
        __metadata('design:type', prof_1.Prof)
    ], DetailComponent.prototype, "prof", void 0);
    DetailComponent = __decorate([
        core_1.Component({
            selector: 'detail',
            template: "<h1>vue detaill\u00E9</h1>\n    <input [(ngModel)]=\"prof.name\" placeholder=\"name\"/>"
        }), 
        __metadata('design:paramtypes', [])
    ], DetailComponent);
    return DetailComponent;
}());
exports.DetailComponent = DetailComponent;
//# sourceMappingURL=detail.component.js.map