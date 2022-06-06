// Enumeration Class
class Enum {
	constructor(...keys) {
		keys.forEach((key, i) => {
			this[key] = i;
		});
		Object.freeze(this);
	}

	*[Symbol.iterator]() {
		for (let key of Object.keys(this)) yield key;
	}
}

// list of message types
const EMsg = new Enum(
	'information',
	'warning',
	'error'
);
  
// output on log window
/**
 * print a message to log window
 * @param {String} massage
*/
function cout(massage, type){
	switch(type)
	{
		case EMsg.information:
		alg.log.info(massage);
		break;

		case EMsg.warning:
		alg.log.warn(massage);
		break;

		case EMsg.error:
		alg.log.error(massage);
		break;
	}
}