import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent {
  title = 'DevOpsFinal';
  public countResult: number = 0;

  public increaseNumber() {
    this.countResult++;
  }

  public decreaseNumber() {
    this.countResult--;
  }

  public resetResult() {
    this.countResult = 0;
  }
}
