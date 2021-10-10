import { Controller } from "stimulus"
export default class extends Controller {
  toggleFavorite(event) {
    let CSRF_TOKEN = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
    let xhr = new XMLHttpRequest();
    xhr.open('PATCH', '/books/' + event.currentTarget.getAttribute('data-book-id'));
    xhr.setRequestHeader('Content-Type', 'application/json');
    xhr.setRequestHeader('Accept', 'application/json');
    xhr.setRequestHeader('X-CSRF-Token', CSRF_TOKEN);
    xhr.send(
      JSON.stringify({
        book: {
          favorite: event.currentTarget.checked
        },
      })
    );
  }
}
