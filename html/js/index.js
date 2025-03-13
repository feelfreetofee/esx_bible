const options = [
	{
		label: 'Close',
		action() {
			TriggerNUICallback('HideBible')
				.then(r => HideBible())
		}
	}
]

function OpenBible(url) {
	const menu = document.body.create('nav')
	for (const {label, action} of options)
		menu.create('button', {
			innerText: label,
			onclick() {
				if (action)
					action()
			}
		})
	document.body.create('iframe', {
		src: url
	})
}

function HideBible() {
    document.body.replaceChildren()
}
