document.addEventListener("DOMContentLoaded", function() {
    const markdownFilePath = 'md/index.md';  // Path to the Markdown file

    // Find the element where you want to display the content
    const contentContainer = document.getElementById('mainContent');

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
