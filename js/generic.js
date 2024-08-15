document.addEventListener("DOMContentLoaded", function() {
    // Get the current HTML file name
    const htmlFileName = window.location.pathname.split('/').pop(); // Get the last part of the path (filename)

    // Construct the path to the corresponding Markdown file
    const markdownFilePath = `md/${htmlFileName.replace('.html', '.md')}`;

    // Find the element where you want to display the content
    const contentContainer = document.getElementById('mainContent'); // Adjust this ID as needed

    // Fetch and render the Markdown content
    fetch(markdownFilePath)
        .then(response => response.text())
        .then(markdown => {
            const converter = new showdown.Converter();
            const html = converter.makeHtml(markdown);

            contentContainer.innerHTML = html;
        })
        .catch(error => {
            console.error(`Error fetching or rendering ${markdownFilePath}:`, error);
        });
});