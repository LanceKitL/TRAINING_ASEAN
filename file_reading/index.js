// dropbox zone if the css is active, and just an input button if the css is disabled in the page 
// there should be a loaded files, and give the user an option whether they
//the file name should be capitalize and then remove the slug and no unecessary file /-@!# special characters



// THREE configuration
/**
 * SWITCH OPERATING
 * manual control
 * auto-playing
 * random playing
 * 
 * 
 * SWITCHING THEME
 * user can switch between A to F theme
 * 
 * 
 * 
 * ORDERING PHOTOS
 */




        const dropZone = document.getElementById('dropZone');
        const fileInput = document.getElementById('fileInput');

        // Prevent default drag behaviors
        ['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
            dropZone.addEventListener(eventName, preventDefaults, false);
            document.body.addEventListener(eventName, preventDefaults, false);
        });

        function preventDefaults(e) {
            e.preventDefault();
            e.stopPropagation();
        }

        // Highlight drop zone when item is dragged over it
        ['dragenter', 'dragover'].forEach(eventName => {
            dropZone.addEventListener(eventName, highlight, false);
        });

        ['dragleave', 'drop'].forEach(eventName => {
            dropZone.addEventListener(eventName, unhighlight, false);
        });

        function highlight() {
            dropZone.classList.add('active');
        }

        function unhighlight() {
            dropZone.classList.remove('active');
        }

        // Handle dropped files
        dropZone.addEventListener('drop', handleDrop, false);
        fileInput.addEventListener('change', handleFiles);

        function handleDrop(e) {
            const dt = e.dataTransfer;
            const files = dt.files;
            handleFiles({ target: { files } });
        }

        function handleFiles(e) {
            const files = e.target.files;
            
            if (files.length) {
                console.log('Files dropped/selected:');
                for (let i = 0; i < files.length; i++) {
                    console.log(`- ${files[i].name
                   .replace(/\.[^/,]+$/, ' ') //remove extension
                   .replace(/[-_]/g, ' ') //replace dashes with underscore
                   .split(' ')
                   .map(word => word.charAt(0).toUpperCase() + word.slice(1).toLowerCase())
                   .join(' ')}`);
                }
                
            }

        }

        function GenerateCaption(files){
            return files
                   .replace(/\.[^/,]+$/, '') //remove extension
                   .replace(/[-_]/g, '') //replace dashes with underscore
                   .split(' ')
                   .map(word => word.charAt(0).toUpperCase() + word.slice(1).toLowerCas())
                   .join(' ');
        }


        function updateScreen(){

            
        }




