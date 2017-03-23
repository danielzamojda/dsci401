#Daniel Zamojda

#1a
mov.avg = function(values, n){
	#create a vector
	#append NA to the first < n
	#go from n to len
	v = c();
	for(i in 1:n){
		v = append(v,NA);
	}

	for(i in n:length(values)){
		x = mean(values[c((i-n):(i-1))]);
		v = append(v,x);
	}
	return(v);
}

#1b

mov.avg.summary = function(values, n){
	ma = mov.avg(values,n);
	v = c();
	for(i in 1:n){
		v = append(v,NA);
	}
	
	for(i in (n+1):length(values)){
		num =  values[i]-ma[i+1];
		v = append(v,num);
	}
	ans = list(ma,v);
	return(ans);
	
}



#2

np.percentile.finder = function(nums, p){
	len = length(nums);
	perc = len*p;
	return(nums[perc]);
	
	}
	
#3

df.summarize = function(df){
	names = colnames(df);
	
	for(i in 1:ncol(df)){
		if (is.numeric(df[,i])){
			mean = mean(df[,i]);
			max = max(df[,i]);
			min = min(df[,i]);
			stdev = sd(df[,i]);
			message("Column ",names[i],": mean = ",means[i]," min = ",min," max = ",max," sd = ",stdev);
		}
		else {
			message("Column ",names[i]," is non-numeric");
		}
	}	
}