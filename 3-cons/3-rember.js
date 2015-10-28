function car(arr){
	return arr[0];
}

function cdr(arr){
	if(arr.length == 0){
		return arr;
	}

	return arr.slice(1);
}

function cons(a, lat){
	return lat.splice(0,0,a);
}

//lat is an array
function rember(member, lat){
	console.log('Trying to remove "'+ member +'" from ' + lat );

	if (lat == []){
		return lat;
	} else {

		//if member == the car of lat
		if (member == car(lat)){
			console.log('car(lat) =' + car(lat) +'!');
			//return the entire list without the car
			console.log('returning cdr(lat)=' + cdr(lat));
			return cdr(lat);
		}
		//if member is not the car of lat
		else {
			console.log('cons(%s, rember(%s, cdr(%s))',lat[0],member,lat);
			return cons(lat[0], rember(member, cdr(lat)) );
		}
	}
}

var memberToRemove = 3;
var list = [1,3];

console.log(rember(memberToRemove,list));