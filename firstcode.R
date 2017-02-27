
#add4 example
add4 = function(a, b, c, d) { a + b + c + d}

#triangle

triangle = function(h, full=FALSE){
	for(i in 1:h)
	{
		message(rep("*",i))
	}
	
	if(full)
	{
		for(i in h-1:1)
		{
			message(rep("*",i))
		}
	}
}


#Quadratic Formula

quadratic = function(a, b, c){
	m = (-b + sqrt(b^(2*a*c))) / (2*a)
	p = (-b - sqrt(b^(2*a*c))) / (2*a)

	vec = c(m, p)
	return(vec)
	
} 

sumRange = function(a, b)
{
	x = 0;
	for(i in a:b)
	{
		x = x + i;
	}
	return(x)
}	

srr = function(a, b){
	if(a==b){ return(a)}
	srr(a,b-1)+b
}
	
#fibonacci sequence

fib = function(a, b, i){
	if(i == 0){
		return(0)
		}
	else if(i == 1){
		return(1)
		}
	else return( fib(a,b,i-1) + fib(a,b,i-2))
}


#other way to do it

fib2 = function(a,b,i){
	if(i ==1){return(a)}
	if(i==2){return(b)}
	return(fib2(a,b,i-1) + fib2(a,b,i-2))
}

# HW, recursively go through a vector and apply a function f() to each member of the vector
# Look on canvas to see the code example iteratively

f = function(a){
	a^2
	}


map.recurs = function(vec, new.vec, f, i) {
	if(i == 0){ 
		return(new.vec)
	}
	else { 
		new.vec[i] = f(vec[i])
		map.recurs(vec, new.vec, f, i-1)
	}
}

map.rec = function(vec, f){

	if(length(vec) == 1)
	{
	return(f[v(1)])
	}
	append(f(v[1]), map.rec(v[2:length(v)], f))
	}
	
	
#Do exercise 2 on slides for HW
# ideas, use rep function to repeat a sequence

thirds.sums = function(vec){
	v = c()
	len = 0;
	while(len < length(vec)-2){
		sum = sum(len:len+3)
		v = append(v,sum)
		len = len + 3
	}
	return(v)
}			
		














