class Api {
    public function new() {}

    @:get('/status')
    @:produces('application/json')
    @:header("Access-Control-Allow-Origin", "*")
    @:header("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
    @:header("Access-Control-Allow-Headers", "Content-Type")
    public function stats():String {
        return ("ok");
    }
}
