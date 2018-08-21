<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<link rel="stylesheet" href="assets/css/leaflet.css">
<link rel="stylesheet" href="assets/css/qgis2web.css">
<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
<script src="assets/js/qgis2web_expressions.js"></script>
<script src="assets/js/leaflet.js"></script>
<script src="assets/js/leaflet.rotatedMarker.js"></script>
<script src="assets/js/leaflet.pattern.js"></script>
<script src="assets/js/leaflet-hash.js"></script>
<script src="assets/js/Autolinker.min.js"></script>
<script src="assets/js/rbush.min.js"></script>
<script src="assets/js/labelgun.min.js"></script>
<script src="assets/js/labels.js"></script>
<script src="assets/data/map5_1.js"></script>
<style>
html, body, #map {
	width: 100%;
	height: 100%;
	padding: 0;
	margin: 0;
}

p.tableLocation {
	font-size: 12pt;
	font-weight: bold;
}

table.type09 {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
}

table.type09 thead th {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #369;
	border-bottom: 3px solid #036;
}

table.type09 tbody th {
	width: 350px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #f3f6f7;
}

table.type09 td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}
</style>

<script>
	function getColor(d) {
		return (d <= 68) ? '#ffffff' : (d <= 83) ? '#ffbfbf'
				: (d <= 97) ? '#ff8080' : (d <= 121) ? '#ff4040' : '#ff0000';
	}
	function getColor2(d) {
		return (d == 0) ? '#ffffff' : (d <= 0.14) ? '#ffbfbf'
				: (d <= 0.22) ? '#ff8080' : (d <= 0.3) ? '#ff4040' : '#ff0000';
	}
	function getColor3(d) {
		return (d <= 0.08) ? '#ffffff' : (d <= 0.14) ? '#ffbfbf'
				: (d <= 0.198) ? '#ff8080' : (d <= 0.3) ? '#ff4040' : '#ff0000';
	}
	function getColor4(d) {
		return (d <= 39.53) ? '#ffffff' : (d <= 47.394) ? '#ffbfbf'
				: (d <= 55.316) ? '#ff8080' : (d <= 71.958) ? '#ff4040'
						: '#ff0000';
	}
	function getColor5(d) {
		return (d <= 25) ? '#ffffff' : (d <= 30.3) ? '#ffbfbf'
				: (d <= 36.2) ? '#ff8080' : (d <= 43.5) ? '#ff4040' : '#ff0000';
	}
	function getColor6(d) {
		return (d <= 3.1) ? '#ffffff' : (d <= 3.9) ? '#ffbfbf'
				: (d <= 4.8) ? '#ff8080' : (d <= 6.3) ? '#ff4040' : '#ff0000';
	}

	function style(feature) {
		return {
			fillColor : getColor(feature.properties['만명당 5대']),
			weight : 2,
			opacity : 1,
			color : 'white',
			dashArray : '3',
			fillOpacity : 0.5
		};
	}

	function style2(feature) {
		return {
			fillColor : getColor2(feature.properties['만명당 강']),
			weight : 2,
			opacity : 1,
			color : 'white',
			dashArray : '3',
			fillOpacity : 0.5
		};
	}
	function style3(feature) {
		return {
			fillColor : getColor3(feature.properties['만명당 살']),
			weight : 2,
			opacity : 1,
			color : 'white',
			dashArray : '3',
			fillOpacity : 0.5
		};
	}
	function style4(feature) {
		return {
			fillColor : getColor4(feature.properties['만명당 폭']),
			weight : 2,
			opacity : 1,
			color : 'white',
			dashArray : '3',
			fillOpacity : 0.5
		};
	}
	function style5(feature) {
		return {
			fillColor : getColor5(feature.properties['만명당 절']),
			weight : 2,
			opacity : 1,
			color : 'white',
			dashArray : '3',
			fillOpacity : 0.5
		};
	}

	function style6(feature) {
		return {
			fillColor : getColor6(feature.properties['만명당 성']),
			weight : 2,
			opacity : 1,
			color : 'white',
			dashArray : '3',
			fillOpacity : 0.5
		};
	}
	var mapData;
	function empty() {
		if (mapData != null)
			mapData = mapData.removeFrom(map);
	}

	function categories(value) {
		if (value == '만명당 5대')
			return style;
		else if (value == '만명당 강')
			return style2;
		else if (value == '만명당 살')
			return style3;
		else if (value == '만명당 폭')
			return style4;
		else if (value == '만명당 절')
			return style5;
		else if (value == '만명당 성')
			return style6;
	}
	function changeColor(value) {
		empty();
		mapData = L.geoJson(json_map5_1, {
			style : categories(value)
		}).addTo(map);
	}
</script>
<title>Crime System for Visualzation by CSV</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css"
	rel="stylesheet">
<!-- CSS Files -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="assets/css/now-ui-dashboard.css?v=1.1.0" rel="stylesheet" />
</head>

<body class="">
	<div class="wrapper ">
		<div class="sidebar" data-color="orange">
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
			<div class="logo">
				<a href="http://www.creative-tim.com" class="simple-text logo-mini">
					CT </a> <a href="http://www.creative-tim.com"
					class="simple-text logo-normal"> Creative Tim </a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li><a href="dashboard"> <i
							class="now-ui-icons design_app"></i>
							<p>Dashboard</p>
					</a></li>
					<li><a href="icons.html"> <i
							class="now-ui-icons education_atom"></i>
							<p>Icons</p>
					</a></li>
					<li class="active "><a href="map"> <i
							class="now-ui-icons location_map-big"></i>
							<p>Maps</p>
					</a></li>
					<li><a href="notifications"> <i
							class="now-ui-icons ui-1_bell-53"></i>
							<p>Notifications</p>
					</a></li>
					<li><a href="user.html"> <i
							class="now-ui-icons users_single-02"></i>
							<p>User Profile</p>
					</a></li>
					<li><a href="tables"> <i
							class="now-ui-icons design_bullet-list-67"></i>
							<p>Table List</p>
					</a></li>
					<li><a href="typography"> <i
							class="now-ui-icons text_caps-small"></i>
							<p>Typography</p>
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent  navbar-absolute bg-primary fixed-top">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<div class="navbar-toggle">
							<button type="button" class="navbar-toggler">
								<span class="navbar-toggler-bar bar1"></span> <span
									class="navbar-toggler-bar bar2"></span> <span
									class="navbar-toggler-bar bar3"></span>
							</button>
						</div>
						<a class="navbar-brand" href="#pablo">Maps</a>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navigation" aria-controls="navigation-index"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-bar navbar-kebab"></span> <span
							class="navbar-toggler-bar navbar-kebab"></span> <span
							class="navbar-toggler-bar navbar-kebab"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end"
						id="navigation">
						<form>
							<div class="input-group no-border">
								<input type="text" value="" class="form-control"
									placeholder="Search...">
								<div class="input-group-append">
									<div class="input-group-text">
										<i class="now-ui-icons ui-1_zoom-bold"></i>
									</div>
								</div>
							</div>
						</form>
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" href="#pablo">
									<i class="now-ui-icons media-2_sound-wave"></i>
									<p>
										<span class="d-lg-none d-md-block">Stats</span>
									</p>
							</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="http://example.com"
								id="navbarDropdownMenuLink" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> <i
									class="now-ui-icons location_world"></i>
									<p>
										<span class="d-lg-none d-md-block">Some Actions</span>
									</p>
							</a>
								<div class="dropdown-menu dropdown-menu-right"
									aria-labelledby="navbarDropdownMenuLink">
									<a class="dropdown-item" href="#">Action</a> <a
										class="dropdown-item" href="#">Another action</a> <a
										class="dropdown-item" href="#">Something else here</a>
								</div></li>
							<li class="nav-item"><a class="nav-link" href="#pablo">
									<i class="now-ui-icons users_single-02"></i>
									<p>
										<span class="d-lg-none d-md-block">Account</span>
									</p>
							</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->
			<div class="panel-header panel-header-sm"></div>
			<div class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="card ">
							<div class="card-header ">
								<h4 class="card-title">Crime in map</h4>
							</div>
						</div>
						<div class="card-body">
							<div class="card  card-tasks"
								style="height: 410px; width: 200px; position: relative; top: 0px; left: 0px; float: left;">
								<div class="card-header ">
									<h5 class="card-category">카테고리분류</h5>
									<h4 class="card-title">범죄지도</h4>
								</div>
								<div class="card-body ">
									<div class="table-full-width"
										style="height: 300px; width: 100%; position: relative; top: 0px; left: 0px; float: left;">
										<table class="table">
											<tr style="height: 50px">
												<td>
													<form action="#">
														<p>
															<input type="radio" id="강력 5대범죄" name="radio-group"
																onclick="changeColor(value)" value='만명당 5대'> <label
																for="강력 5대범죄">강력 5대범죄</label>
														</p>
												</td>
											</tr>
											<tr style="height: 50px">
												<td>
													<form action="#">
														<p>
															<input type="radio" id="살인" name="radio-group"
																onclick="changeColor(value)" value='만명당 살'> <label
																for="살인">살인</label>
														</p>
												</td>
											</tr>
											<tr style="height: 50px">
												<td>
													<form action="#">
														<p>
															<input type="radio" id="강도" name="radio-group"
																onclick="changeColor(value)" value='만명당 강'> <label
																for="강도">강도</label>
														</p>
												</td>
											</tr>
											<tr style="height: 50px">
												<td>
													<form action="#">
														<p>
															<input type="radio" id="폭력" name="radio-group"
																onclick="changeColor(value)" value='만명당 폭'> <label
																for="폭력">폭력</label>
														</p>
												</td>
											</tr>
											<tr style="height: 50px">
												<td>
													<form action="#">
														<p>
															<input type="radio" id="절도" name="radio-group"
																onclick="changeColor(value)" value='만명당 절'> <label
																for="절도">절도</label>
														</p>
												</td>
											</tr>
											<tr style="height: 50px">
												<td>
													<form action="#">
														<p>
															<input type="radio" id="성폭력" name="radio-group"
																onclick="changeColor(value)" value='만명당 성'> <label
																for="성폭력">성폭력</label>
														</p>
												</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
							<div
								style="height: 800px; width: 1000px; position: relative; top: 0px; left: 0px; margin-left: 10px; display: inline-block;">
								<div id="map" style="position: relative">
									<div class="leaflet-top leaflet-right">
										<div class="sidebar-wrapper">
											<ul class="nav">
												<li><a href="dashboard"> <i
														class="now-ui-icons design_app"></i>
														<p>Dashboard</p>
												</a></li>
												<li><a href="icons.html"> <i
														class="now-ui-icons education_atom"></i>
														<p>Icons</p>
												</a></li>
												<li class="active "><a href="map"> <i
														class="now-ui-icons location_map-big"></i>
														<p>Maps</p>
												</a></li>
												<li><a href="notifications"> <i
														class="now-ui-icons ui-1_bell-53"></i>
														<p>Notifications</p>
												</a></li>
												<li><a href="user.html"> <i
														class="now-ui-icons users_single-02"></i>
														<p>User Profile</p>
												</a></li>
												<li><a href="tables"> <i
														class="now-ui-icons design_bullet-list-67"></i>
														<p>Table List</p>
												</a></li>
												<li><a href="typography"> <i
														class="now-ui-icons text_caps-small"></i>
														<p>Typography</p>
												</a></li>
											</ul>
										</div>
									</div>
								</div>
								<script>
									var map = L.map('map', {
										zoomControl : true,
										maxZoom : 28,
										minZoom : 1
									})
									var hash = new L.Hash(map);
									map.attributionControl
											.addAttribution('<a href="https://github.com/tomchadwin/qgis2web" target="_blank">qgis2web</a>');
									var bounds_group = new L.featureGroup([]);
									function setBounds() {
										if (bounds_group.getLayers().length) {
											map.fitBounds(bounds_group
													.getBounds());
										}
									}
									var overlay_GoogleMaps_0 = L
											.tileLayer(
													'https://mt1.google.com/vt/lyrs=m&x={x}&y={y}&z={z}',
													{
														opacity : 1
													});
									overlay_GoogleMaps_0.addTo(map);
									map.addLayer(overlay_GoogleMaps_0);
									function pop_map5_1(feature, layer) {
										var popupContent = '<p class="tableLocation">'
												+ (feature.properties['시도'] !== null ? Autolinker
														.link(String(feature.properties['시도']))
														: '')
												+ ' '
												+ (feature.properties['시군구'] !== null ? Autolinker
														.link(String(feature.properties['시군구']))
														: '')
												+ '</p>\
						                    <table class="type09">\
						                    <thead>\
						                    <tr>\
						                    	<th scope="cols">항목명</th>\
						                    	<th scope="cols">데이터</th>\
						                    	<th scope="cols">항목명</th>\
						                    	<th scope="cols">데이터</th>\
						                    </tr>\
						                    </thead>\
						                    <tbody>\
						                    <tr>\
						                        <th scope="row">시도</th>\
						                        <td>'
												+ (feature.properties['시도'] !== null ? Autolinker
														.link(String(feature.properties['시도']))
														: '')
												+ '</td>\
												<th scope="row">만명당 절도</th>\
						                        <td>'
												+ (feature.properties['만명당 절'] !== null ? Autolinker
														.link(String(feature.properties['만명당 절']))
														: '')
												+ '</td>\
						                    </tr>\
						                    <tr>\
						                        <th scope="row">시군구</th>\
						                        <td>'
												+ (feature.properties['시군구'] !== null ? Autolinker
														.link(String(feature.properties['시군구']))
														: '')
												+ '</td>\
												<th scope="row">만명당 성폭력</th>\
						                        <td>'
												+ (feature.properties['만명당 성'] !== null ? Autolinker
														.link(String(feature.properties['만명당 성']))
														: '')
												+ '</td>\
						                    </tr>\
						                    <tr>\
						                        <th scope="row">만명당 5대범죄</th>\
						                        <td>'
												+ (feature.properties['만명당 5대'] !== null ? Autolinker
														.link(String(feature.properties['만명당 5대']))
														: '')
												+ '</td>\
												<th scope="row">경찰 출동시간(분)</th>\
						                        <td>'
												+ (feature.properties['경찰 출동'] !== null ? Autolinker
														.link(String(feature.properties['경찰 출동']))
														: '')
												+ '</td>\
						                    </tr>\
						                    <tr>\
						                        <th scope="row">만명당 살인</th>\
						                        <td>'
												+ (feature.properties['만명당 살'] !== null ? Autolinker
														.link(String(feature.properties['만명당 살']))
														: '')
												+ '</td>\
												<th scope="row">치안만족도</th>\
						                        <td>'
												+ (feature.properties['치안만족도'] !== null ? Autolinker
														.link(String(feature.properties['치안만족도']))
														: '')
												+ '</td>\
						                    </tr>\
						                    <tr>\
						                        <th scope="row">살인 건수</th>\
						                        <td>'
												+ (feature.properties['살인 건수'] !== null ? Autolinker
														.link(String(feature.properties['살인 건수']))
														: '')
												+ '</td>\
												<th scope="row">만명당 CCTV</th>\
						                        <td>'
												+ (feature.properties['만명당 CCT'] !== null ? Autolinker
														.link(String(feature.properties['만명당 CCT']))
														: '')
												+ '</td>\
						                    </tr>\
						                    <tr>\
						                        <th scope="row">만명당 강도</th>\
						                        <td>'
												+ (feature.properties['만명당 강'] !== null ? Autolinker
														.link(String(feature.properties['만명당 강']))
														: '')
												+ '</td>\
												<th scope="row">1인당 담당인구</th>\
						                        <td>'
												+ (feature.properties['1인당 담당'] !== null ? Autolinker
														.link(String(feature.properties['1인당 담당']))
														: '')
												+ '</td>\
						                    </tr>\
						                    <tr>\
						                        <th scope="row">만명당 폭력</th>\
						                        <td>'
												+ (feature.properties['만명당 폭'] !== null ? Autolinker
														.link(String(feature.properties['만명당 폭']))
														: '')
												+ '</td>\
						                    </tr>\
						                    <tbody>\
						                </table>';
										layer.bindPopup(popupContent, {
											maxHeight : 400
										});
									}

									function style_map5_1_0() {
										return {
											pane : 'pane_map5_1',
											opacity : 1,
											color : 'rgba(35,35,35,0.3)',
											dashArray : '',
											lineCap : 'butt',
											lineJoin : 'miter',
											weight : 1.0,
											fill : true,
											fillOpacity : 0.3,
											fillColor : 'rgba(255,158,23,1.0)',
										}
									}
									map.createPane('pane_map5_1');
									map.getPane('pane_map5_1').style.zIndex = 401;
									map.getPane('pane_map5_1').style['mix-blend-mode'] = 'normal';
									var layer_map5_1 = new L.geoJson(
											json_map5_1,
											{
												attribution : '<a href=""></a>',
												pane : 'pane_map5_1',
												onEachFeature : pop_map5_1,
												style : style_map5_1_0,
											});
									bounds_group.addLayer(layer_map5_1);
									map.addLayer(layer_map5_1);
									setBounds();
								</script>
							</div>
						</div>
					</div>
				</div>
				<footer class="footer">
					<div class="container-fluid">
						<nav>
							<ul>
								<li><a href="https://www.creative-tim.com"> Creative
										Tim </a></li>
								<li><a href="http://presentation.creative-tim.com">
										About Us </a></li>
								<li><a href="http://blog.creative-tim.com"> Blog </a></li>
							</ul>
						</nav>
						<div class="copyright">
							&copy;
							<script>
								document.write(new Date().getFullYear())
							</script>
							, Designed by <a href="https://www.invisionapp.com"
								target="_blank">CSV</a>. Coded by <a
								href="https://www.creative-tim.com" target="_blank">SEO</a>.
						</div>
					</div>
				</footer>
			</div>
		</div>
		<footer class="footer">
			<div class="container-fluid">
				<nav>
					<ul>
						<li><a href="https://www.creative-tim.com"> Creative Tim
						</a></li>
						<li><a href="http://presentation.creative-tim.com"> About
								Us </a></li>
						<li><a href="http://blog.creative-tim.com"> Blog </a></li>
					</ul>
				</nav>
				<div class="copyright">
					&copy;
					<script>
						document.write(new Date().getFullYear())
					</script>

					, Designed by <a href="https://www.invisionapp.com" target="_blank">Invision</a>.
					Coded by <a href="https://www.creative-tim.com" target="_blank">Creative
						Tim</a>.
				</div>
			</div>
		</footer>
	</div>
	</div>
	<!--   Core JS Files   -->
	<script src="assets/js/core/jquery.min.js"></script>
	<script src="assets/js/core/popper.min.js"></script>
	<script src="assets/js/core/bootstrap.min.js"></script>
	<script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!-- Chart JS -->
	<script src="assets/js/plugins/chartjs.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="assets/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="assets/js/now-ui-dashboard.min.js?v=1.1.0"
		type="text/javascript"></script>
</body>

</html>