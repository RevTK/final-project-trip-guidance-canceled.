<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="map" style="position: relative; z-index: 1;">
		<!--The div element for the map -->
		<!-- 
     The `defer` attribute causes the callback to execute after the full HTML
     document has been parsed. For non-blocking uses, avoiding race conditions,
     and consistent behavior across browsers, consider loading using Promises
     with https://www.npmjs.com/package/@googlemaps/js-api-loader.
    -->
	</div>

	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCjGlvNyptuTaaOw4gAhWL_P4aeg0euVU&callback=initMap&v=weekly"
		defer></script>
		
			<main class="intro-section">
	<div class="container">
		<div class="grid">
			<div class="column-xs-12">
				<ul class="slider">
					<li class="slider-item active">
						<div class="grid vertical">
							<div class="column-xs-12 column-md-2 hide-mobile">
								<div class="intro">
									<a href="#">
										<h1 class="title">
											<span class="underline">Explore Tokyo</span>
										</h1>
									</a>
								</div>
							</div>
							<div class="column-xs-12 column-md-10">
								<div class="image-holder">
									<img src="https://source.unsplash.com/cddaZDt6uRw">
								</div>
								<div class="grid">
									<div class="column-xs-12 column-md-9">
										<div class="intro show-mobile">
											<a href="#">
												<h1 class="title">
													<span class="underline">Explore Tokyo</span>
												</h1>
											</a>
										</div>
										<p class="description">Tokyo, Japan’s busy capital, mixes
											the ultramodern and the traditional, from neon-lit
											skyscrapers to historic temples.</p>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li class="slider-item">
						<div class="grid vertical">
							<div class="column-xs-12 column-md-2 hide-mobile">
								<div class="intro">
									<a href="#">
										<h1 class="title">
											<span class="underline">Explore Kyoto</span>
										</h1>
									</a>
								</div>
							</div>
							<div class="column-xs-12 column-md-10">
								<div class="image-holder">
									<img src="https://source.unsplash.com/Pz3EHf-KJfc">
								</div>
								<div class="grid">
									<div class="column-xs-12 column-md-9">
										<div class="intro show-mobile">
											<a href="#">
												<h1 class="title">
													<span class="underline">Explore Kyoto</span>
												</h1>
											</a>
										</div>
										<p class="description">Kyoto is famous for its numerous
											classical Buddhist temples, gardens, imperial palaces, Shinto
											shrines and traditional wooden houses.</p>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li class="slider-item">
						<div class="grid vertical">
							<div class="column-xs-12 column-md-2 hide-mobile">
								<div class="intro">
									<a href="#">
										<h1 class="title">
											<span class="underline">Explore Osaka</span>
										</h1>
									</a>
								</div>
							</div>
							<div class="column-xs-12 column-md-10">
								<div class="image-holder">
									<img src="https://source.unsplash.com/peYW3VwICpE">
								</div>
								<div class="grid">
									<div class="column-xs-12 column-md-9">
										<div class="intro show-mobile">
											<a href="#">
												<h1 class="title">
													<span class="underline">Explore Osaka</span>
												</h1>
											</a>
										</div>
										<p class="description">Osaka is a large port city and
											commercial center known for its modern architecture,
											nightlife and hearty street food.</p>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li class="slider-item">
						<div class="grid vertical">
							<div class="column-xs-12 column-md-2 hide-mobile">
								<div class="intro">
									<a href="#">
										<h1 class="title">
											<span class="underline">Explore Hokkaido</span>
										</h1>
									</a>
								</div>
							</div>
							<div class="column-xs-12 column-md-10">
								<div class="image-holder">
									<img src="https://source.unsplash.com/VmeOZQjTVGE">
								</div>
								<div class="grid">
									<div class="column-xs-12 column-md-9">
										<div class="intro show-mobile">
											<a href="#">
												<h1 class="title">
													<span class="underline">Explore Hokkaido</span>
												</h1>
											</a>
										</div>
										<p class="description">Hokkaido, the northernmost of
											Japan’s main islands, is known for its volcanoes, natural hot
											springs ("onsen") and ski areas.</p>
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
				<div class="grid">
					<div class="column-xs-12">
						<div class="controls">
							<button class="previous">
								<span class="visually-hidden">Previous</span> <span
									class="icon arrow-left" aria-hidden="true"></span> </a>
								<button class="next">
									<span class="visually-hidden">Next</span> <span
										class="icon arrow-right" aria-hidden="true"></span> </a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>