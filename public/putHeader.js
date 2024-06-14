"use strict";
async function putHeader(){
    try {
        const response = await fetch("header.html");
        const html = await response.text();
        document.getElementById("headerArea").innerHTML = html;
        console.log("header loaded");
    } catch (error) {
        console.error('Header could not be loaded', error);
    }
}
