import tink.http.containers.*;
import tink.web.routing.*;
import tink.http.Response;

class Server {
    static function main() {
        var container = new NodeContainer(8080);
        var router = new Router<Api>(new Api());
        trace("server running on http://localhost:8080/");
        container.run(req ->
            router.route(Context.ofRequest(req))
                .recover(OutgoingResponse.reportError)
        );
    }
}