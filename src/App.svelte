<script type="ts">
	export let name;

</script>



<main>
	<nav>
		<ul>
			<li>
				<img src="PotatOS.jpeg" alt="Avatar" />
			</li>
			<h2>PotaTracker</h2>
			<li>
				<a href="https://github.com/seamusmullan/potatracker">Github</a>
			</li>
			<li>
				<a href="some page on github">Docs</a>
			</li>
			<li>
				<a href="some page on my site maybe?">Legal</a>
			</li>
		</ul>
	</nav>

	<!-- Info Text Thingy -->
	<h1>Hello {name}!</h1>
	<h2>PotaTracker is an app for tracking your pota.</h2>
	<h5>not rlly tho...</h5>

	<!-- GIF of PotaTracker UI -->
	<br>

	<h4>This is a sample of PotaTracker being used in Minecraft</h4>
	<p>gif of potatracker</p>




</main>

<style>
	main {
		text-align: center;
		padding: auto;
		max-width: 240px;
		margin: 0 auto;
	}

	nav {
		display: flex;
		flex-direction: row;
		justify-content: space-between;
		align-items: center;
		background-color: #d66802c2;
	}

	nav ul {
		display: flex;
		flex-direction: row;
		justify-content: space-between;
		align-items: center;
	}

	nav ul li {
		list-style: none;
		display: flex;
		flex-direction: row;
		justify-content: space-between;
		align-items: center;
		padding: 0.5em;
		margin: 0.5em;
		border: 1px solid #d66802c2;
		border-radius: 5px;
		background-color: #d66802c2;
		color: #fff;
		font-size: 1em;
		font-weight: bold;
		cursor: pointer;
	}

	nav ul li a {
		color: #fff;
		text-decoration: none;
	}

	nav ul li a:hover {
		color: #d66802c2;
	}

	nav ul li img {
		width: 50px;
		height: 50px;
		border-radius: 50%;
	}


	h1 {
		color: #ffcc00;
		font-size: 4em;
		font-weight: 100;
	}


	nav h2 {
		color: #fff;
		font-size: 2em;
		font-weight: 100;
	}

	h2 {
		color: #000000;
		font-size: 2em;
		font-weight: 100;
	}







	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>