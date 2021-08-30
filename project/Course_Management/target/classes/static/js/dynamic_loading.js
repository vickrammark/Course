
function loadHtml(page) {
	const xhr = new XMLHttpRequest();
	const container = document.getElementById("pagecontent");
	xhr.onload = function() {
		console.log("Firing ajax request!!");
		if (this.status = 200) {
			container.innerHTML = this.responseText;
		}
		else {
			container.innerHTML = "Sorry the page is not available";
		}
	}
	xhr.open('get', page);
	xhr.send();
}
