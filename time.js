const time = () => {
    const now = new Date();
    const element = document.querySelector("#time");

    element.innerHTML = `${now.getHours()}:${now.getMinutes().toString().padStart(2, "0")}`;

};

time();
setInterval(time, 5000);
