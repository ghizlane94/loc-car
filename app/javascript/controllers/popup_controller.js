import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="popup"
export default class extends Controller {
  static targets = ["boxe", "pop", "button"]
  connect() {
    console.log("hii popup");
  }
  display(){
    this.popTarget.style.visibility="visible";
    this.boxeTarget.classList.add("invisible");
    this.buttonTarget.classList.add("invisible");
  }
}
