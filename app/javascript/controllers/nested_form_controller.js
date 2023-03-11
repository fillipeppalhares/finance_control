import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="nested-form"
export default class extends Controller {
  static targets = ["template", "table"];

  addItem(event) {
    event.preventDefault();
    var content = this.templateTarget.innerHTML.replace(/NEW_RECORD/g, new Date().valueOf());
    this.tableTarget.getElementsByTagName("tbody")[0].insertAdjacentHTML("beforeend", content);
  };

  removeItem(event) {
    event.preventDefault();
    let item = event.target.closest(".nested-fields");
    item.querySelector("input[name*='_destroy']").value = 1;
    item.style.display = "none";
  };
};
