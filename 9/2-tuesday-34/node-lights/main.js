// ON  "https://maker.ifttt.com/trigger/wemo_on/with/key/gY-XtgrfuUybUYMVt4E6FQs6UtLhac2Il3uBQOhXwUg"
// OFF "https://maker.ifttt.com/trigger/wemo_off/with/key/gY-XtgrfuUybUYMVt4E6FQs6UtLhac2Il3uBQOhXwUg"
const fetch = require('node-fetch');

function turnOnLights() {
  console.log("Trying to turn on the lights");
  fetch("https://maker.ifttt.com/trigger/wemo_on/with/key/gY-XtgrfuUybUYMVt4E6FQs6UtLhac2Il3uBQOhXwUg").then(function () {
    console.log("Sent a message to turn on the lights");
  })
}

function turnOffLights() {
  console.log("Trying to turn off the lights");
  fetch("https://maker.ifttt.com/trigger/wemo_off/with/key/gY-XtgrfuUybUYMVt4E6FQs6UtLhac2Il3uBQOhXwUg").then(function () {
    console.log("Sent a message to turn off the lights");
  })
}


turnOnLights()
