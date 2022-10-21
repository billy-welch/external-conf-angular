import { Component } from '@angular/core';
import Config from "../assets/config.json";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'angular-project';
  environment = Config.ENV;
  URL1 = Config.URL1;
  URL2 = Config.URL2;
}
