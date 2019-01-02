import { Controller } from "stimulus";
export default class extends Controller {
    mark(e){
        console.log(e);
        console.log(this.data.get("ref"));
        var mark = {
            top: e.clientY,
            left: e.clientX,
            body_map: this.data.get("ref")
        };

        fetch(`/mark/add/${mark.body_map}/left/${mark.left}/top/${mark.top}`,{method:'GET'});

    }
}
