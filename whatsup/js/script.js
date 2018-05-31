(function (){

	var hamburger = document.getElementById("hamburger");
	var closeHamburger = document.getElementById("closebtn");
	

	function openNav() {
	    document.getElementById("mySidenav").style.width = "50%";
	}

	function closeNav() {
	    document.getElementById("mySidenav").style.width = "0";
	}

	hamburger.addEventListener("click", function(){
	    openNav();
	});

	closeHamburger.addEventListener("click", function(){
	    closeNav();
	});

	// document.querySelector('.button').onmousemove = (e) => {
	//   const x = e.pageX - e.target.offsetLeft
	//   const y = e.pageY - e.target.offsetTop
	//   e.target.style.setProperty('--x', `${ x }px`)
	//   e.target.style.setProperty('--y', `${ y }px`)
	 
	// }	


})();