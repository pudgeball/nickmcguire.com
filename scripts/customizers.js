document.addEventListener("DOMContentLoaded", () => {
    const currentDate = new Date();
    let funColour = undefined;

    if (currentDate.getMonth() === 2 && currentDate.getDate() === 17) {
        funColour = "paddys";
    } else if (currentDate.getMonth() === 4 && currentDate.getDate() >= 1 && currentDate.getDate() <= 13) {
        funColour = "bday";
    } else if (currentDate.getMonth() === 9 && currentDate.getDate() === 31) {
        funColour = "halloween";
    }

    if (funColour !== undefined) {
        const firstName = document.getElementById("first_name");

        if (firstName) {
            firstName.classList.add(funColour);
        }
    }
});
