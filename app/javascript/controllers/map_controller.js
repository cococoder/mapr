import { Controller } from "stimulus";
export default class extends Controller {

    static targets = ['mark'];

    mark(e){
        console.log(e);
        console.log(this.data.get("ref"));
        var mark = {
            top: e.clientY - 16,
            left: e.clientX - 16,
            body_map: this.data.get("ref")
        };

        var mark_image = this.markTarget.cloneNode();
        mark_image.style.position = "absolute";
        mark_image.style.top = mark.top + "px";
        mark_image.style.left = mark.left + "px" ;
        mark_image.style.display = "block";

        fetch(`/mark/add/${mark.body_map}/left/${mark.left}/top/${mark.top}`,{method:'GET'});
        this.element.appendChild(mark_image);

    }
}
