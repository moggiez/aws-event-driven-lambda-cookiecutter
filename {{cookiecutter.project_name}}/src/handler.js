class Handler {
    constructor(event, callback) {
        this.callback = callback;
        this.event = event;
    }

    async handle() {
        Promise.resolve("Greatt success!");
    }
}

exports.Handler = Handler;