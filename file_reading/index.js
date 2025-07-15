let file = document.getElementById("file"),
    preview = document.getElementById("preview");

file.addEventListener("change", (e) => {
    console.log(e.target.files);
    let files = e.target.files;

    Array.from(files).forEach((file) => {
        const image = new Image(); // Remove width, height parameters
        image.width = 300;
        image.height = 300;
        image.src = URL.createObjectURL(file);
        
        preview.appendChild(image);
    });
});