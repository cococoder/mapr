import { Controller } from "stimulus";
import {$,jQuery} from 'jquery';
export default class extends Controller {

    static targets = ['mark'];

    mark(e){
        console.log(e);
        console.log(this.data.get("ref"));
        var mark = {
            top: e.clientY,
            left: e.clientX,
            uid: _.uniqueId(this.data.get('ref')) + (parseInt(e.clientX) + parseInt(e.clientY)),
            body_map: this.data.get("ref")
        };

        var mark_image = this.markTarget.cloneNode();
        var grid_ref = parseInt(mark.top) + parseInt(mark.left);
        mark_image.setAttribute("data-action", "click->map#unmark");
        mark_image.setAttribute("data-mark-id",_.uniqueId(this.data.get('ref')) + grid_ref );
        mark_image.style.position = "absolute";
        mark_image.style.top = (mark.top - 16)+ "px";
        mark_image.style.left = (mark.left - 16) + "px" ;
        mark_image.style.display = "block";
        fetch(`/mark/add/${mark.body_map}/left/${mark.left}/top/${mark.top}/uid/${mark.uid}`,{method:'GET'});

        this.element.appendChild(mark_image);

    }
    unmark(e){

        var mark = {
            top: e.clientY,
            left: e.clientX,
            body_map: this.data.get("ref")
        };

        fetch(`/mark/remove/${e.target.getAttribute("data-mark-id")}`,{method:'GET'});

        e.target.remove();
    }
}
