sendContact = () => {
	let email = document.getElementById("email").value;
	let request = new Request(
		'http://localhost:3000/contatos',
		{
			method: 'POST',
			mode: 'no-cors',
			headers: new Headers({
				'Content-Type': 'application/json',
				'Accept': 'application/json, */*',
			}),
			body: JSON.stringify({ 'email': email })
		}
	);
	fetch(request)
		.then((resp) => resp.json())
		.then((data) => {
			console.log('data' + data)
		})
		.catch((error) => {
			console.log(JSON.stringify(error));
		});
};

uuid = () => {
	return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
		var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
		return v.toString(16);
	});
}

let data = JSON.stringify({
	'acesso': {
		'key': uuid(),
		'url': window.location.href,
		'date': (new Date()).toISOString().substring(0, 19).replace('T', ' ')
	}
})

let request = new Request(
	'http://localhost:3000/acessos',
	{
		method: 'POST',
		mode: 'no-cors',
		headers: new Headers({
			'Content-Type': 'application/json',
			'Accept': 'application/json, */*',
		}),
		body: data
	}
);

console.log('hasStorage:'+hasStorage);

fetch(request)
.then((resp) => resp.json())
	.then((data) => {
		console.log('data' + data)
	})
	.catch((error) => {
		console.log(JSON.stringify(error));
	});