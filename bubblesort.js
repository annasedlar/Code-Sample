function bubbleSort(items){
	var length = items.length //the size of n
	for(let i = 0; i < length; i++){ //first loop - total # of passes
		var sorted = true; //assume the list is sorted
		for(let j=0; j < (length -1); j++){
			if(items[j] > items[j+1]){ //compare current spot with next spot
				sorted = false; //we had to switch numbers (thus we dk if list is sorted)
				//swap the numbers
				var temp = items[j] //temp var to stash the variable (like temp in blackjack)
				items[j] = items[j+1]; //the left item is now set to the right item
				items[j+1] = temp //the right items is now equal to what the left item WAS
			}	
			if(sorted){
			//stop the outer loops because we didn'ts wap anything on this pass
			break;
			}
		}

	}
	console.log(items) 
}

bubbleSort([1,2,3,4,5,6]);