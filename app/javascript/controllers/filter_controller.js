import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static values = { url: String };

  submit(e) {
    const form = e.currentTarget.closest("form");
    const formData = new FormData(form);

    const params = new URLSearchParams(formData);
    const newUrl = `${this.urlValue}?${params.toString()}`;

    Turbo.visit(newUrl, { frame: "jobs" });
    history.pushState({}, "", newUrl);
  }
}
