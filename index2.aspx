<!DOCTYPE html>
<html lang="en" xmlns:mso="urn:schemas-microsoft-com:office:office"
	xmlns:msdt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882">

<head>
	<title>RMA Dashboard</title>
	<link rel="stylesheet" href="bootstrap5/css/bootstrap.min.css" />
	<link rel="stylesheet" href="supportLib/dataTables.bootstrap5.min.css" />
	<link rel="stylesheet" href="bootstrap5/css/bootstrap-icons.css" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />
	<link rel="stylesheet" href="css/style2.css" />
</head>
<!--/head-->


<body>

	<nav class="
				navbar navbar-expand-lg navbar-light
				bg-light bg-gradinent
				sticky-top
			">
		<a href="#" class="navbar-brand text-white title-margin logo">RMA
			Quality</a><button type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"
			class="navbar-toggler">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div id="navbarSupportedContent" class="collapse navbar-collapse">
			<div class="row container-filter">
				<div class="col-sm-12 col-md-4">
					<div class="text-center py-2 pb-3">
						<span class="text-white text-center">RMA
							Quality</span><select class="
									custom-select custom-select-sm
									mt-1
									text-center
									select-boxes1
								">
							<option value="All" selected="selected">
								All </option>
							<option value="Saltillo">Saltillo</option>
							<option value="Mulheim">Mulheim</option>
						</select>
					</div>
				</div>
				<!-- <div class="col-sm-12 col-md-4">
					<div class="text-center py-2">
						<span class="text-white text-center">Compare to
							Prior</span><select class="
									custom-select custom-select-sm
									mt-1
									text-center
									select-boxes2
								">
							<option value="Quarter">Quarter</option>
							<option value="Month">Month</option>
						</select>
					</div>
				</div> -->
				<div class="col-sm-12 col-md-4">
					<div class="text-center py-2">
						<span class="text-white text-center">Choose Month for
							Comparision</span><select class="
									custom-select custom-select-sm
									mt-1
									text-center
									select-boxes3
								">
							<option value="1-1-2011">Jan-2011</option>
							<option value="2-1-2011">Feb-2011</option>
							<option value="3-1-2011">Mar-2011</option>
							<option value="4-1-2011">Apr-2011</option>
							<option value="5-1-2011">May-2011</option>
							<option value="6-1-2011">Jun-2011</option>
							<option value="7-1-2011">Jul-2011</option>
							<option value="8-1-2011">Aug-2011</option>
							<option value="9-1-2011">Sep-2011</option>
							<option value="10-1-2011">Oct-2011</option>
							<option value="11-1-2011">Nov-2011</option>
							<option value="12-1-2011">Dec-2011</option>
							<option value="1-1-2012">Jan-2012</option>
							<option value="2-1-2012">Feb-2012</option>
							<option value="3-1-2012">Mar-2012</option>
							<option value="4-1-2012">Apr-2012</option>
							<option value="5-1-2012">May-2012</option>
							<option value="6-1-2012">Jun-2012</option>
							<option value="7-1-2012">Jul-2012</option>
							<option value="8-1-2012">Aug-2012</option>
							<option value="9-1-2012">Sep-2012</option>
							<option value="10-1-2012">Oct-2012</option>
						</select>
						<!---->
					</div>
				</div>
			</div>
		</div>
	</nav>
	<!--/nav bar-->

	<div class="container-fluid mt-4">
		<div class="row">
			<main class="main-content col-lg-12 col-md-12 col-sm-12 p-0">
				<div class="main-content-container container-fluid px-4">
					<!--top row metric indicators-->
					<div class="row">
						<div class="col-lg-3 col-md-6 col-sm-6 mb-4">
							<div class="stats-small stats-small--1 card card-small">
								<div class="card-body p-0 d-flex">
									<div class="d-flex flex-column m-auto">
										<div class="stats-small__data text-center">
											<span class="stats-small__label text-uppercase text-dark">Total RMA Records
											</span>
											<h6 class="stats-small__value count my-2 text-center">
												<div id="totalRMARecords">Total Records</div>
											</h6>
											<!-- <span class="
														stats-small__percentage
														stats-small__percentage--increase
														profit
													">perc?</span> -->
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--End of 1st Indicator-->
						<div class="col-lg-3 col-md-6 col-sm-6 mb-4">
							<div class="stats-small stats-small--1 card card-small">
								<div class="card-body p-0 d-flex">
									<div class="d-flex flex-column m-auto">
										<div class="stats-small__data text-center">
											<span class="stats-small__label text-uppercase text-dark">Total Number of
												Records Pending Approval
												<script></script>
											</span>
											<h6 class="stats-small__value count my-2 text-center">
												<div id="totalRMAPending">$$</div>
											</h6>
											<!-- <span class="
														stats-small__percentage
														stats-small__percentage--increase
														profit
													">( 27.57% )</span> -->
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--End of 2nd Indicator-->
						<div class="col-lg-3 col-md-6 col-sm-6 mb-4">
							<div class="stats-small stats-small--1 card card-small">
								<div class="card-body p-0 d-flex">
									<div class="d-flex flex-column m-auto">
										<div class="stats-small__data text-center">
											<span class="stats-small__label text-uppercase text-dark">Open Value</span>
											<h6 class="stats-small__value count my-2 text-center">
												Placeholder
											</h6>
											<!-- <span class="
														stats-small__percentage
														stats-small__percentage--increase
														profit
													">( 27.57% )</span> -->
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--End of 3rd Indicator-->
						<div class="col-lg-3 col-md-6 col-sm-6 mb-4">
							<div class="stats-small stats-small--1 card card-small">
								<div class="card-body p-0 d-flex">
									<div class="d-flex flex-column m-auto">
										<div class="stats-small__data text-center">
											<span class="stats-small__label text-uppercase text-dark">Placeholder</span>
											<h6 class="stats-small__value count my-2 text-center">
												Placeholder
											</h6>
											<!-- <span class="
														stats-small__percentage
														stats-small__percentage--increase
														profit
													">( 27.57% )</span> -->
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--End of 4th Indicator-->
					</div>
					<!--/row 1-->
					<div class="row">
						<div class="col-lg-6 col-md-12 col-sm-12 mb-4">
							<div id="graph1" class="h-100">
								<div class="card card-small">
									<div class="card-header">
										<div class="heading-wrpaaer">
											<h6 class-"mt-2 mb-0 text-center container-name"></h6>
										</div>
									</div>
									<!--/ crd-header-->
									<div class="card-body mt-0 pt-0" style="min-height: 350px">
										<div id="chart-container-map-1">Chart Body
										</div>
										<!--/chart container-->
									</div>
									<!--/ crd-dbody-->
								</div>
								<!--/Card Class-->
							</div>
							<!--/div for ID-->
						</div>
						<!--/of column 1-->
						<div class="col-lg-6 col-md-12 col-sm-12 mb-4">
							<div id="advisors" class="h-100">
								<div class="card card-small">
									<div class="card-header">
										<div class="heading-wrpaaer">
											<h6 class="mt-2 mb-0 text-center container-name">Chart 2</h6>
										</div>
										<!--/heading-wrpaaer-->


									</div>
									<!--/card-header-->
									<div class="card-body mt-0 pt-0" style="min-height: 350px;">
										asdf
									</div>
									<!--/card-body-->
								</div>
								<!--/card-->
							</div>
						</div>
						<!--/of column 2-->
					</div>
					<!--/row2-->
					<div class="row">
						<div class="col-lg-6 col-md-12 col-sm-12 mb-4">
							<div id="graph3" class="h-100">
								<div class="card card-small">
									<div class="card-header">
										<div class="heading-wrpaaer">
											<h6 class-"mt-2 mb-0 text-center container-name">Test Graph</h6>
										</div>
									</div>
									<!--/ crd-header-->
									<div class="card-body mt-0 pt-0" style="min-height: 350px">
										<div id="chart-container-map-3">Chart Body
										</div>
										<!--/chart container-->
									</div>
									<!--/ crd-dbody-->
								</div>
								<!--/Card Class-->
							</div>
							<!--/div for ID-->
						</div>
						<!--/of column 1-->
						<div class="col-lg-6 col-md-12 col-sm-12 mb-4">
							<div id="advisors3" class="h-100">
								<div class="card card-small">
									<div class="card-header">
										<div class="heading-wrpaaer">
											<h6 class="mt-2 mb-0 text-center container-name">Chart 2</h6>
										</div>
										<!--/heading-wrpaaer-->


									</div>
									<!--/card-header-->
									<div class="card-body mt-0 pt-0" style="min-height: 350px;">
										asdf
									</div>
									<!--/card-body-->
								</div>
								<!--/card-->
							</div>
						</div>
						<!--/of column 2-->
					</div>
					<!--/row3-->

				</div>
				<!-- End of main content-->
			</main>
			<!--/main-->
		</div>
		<!--/outside row-->
	</div>
	<!--/container fluid-->

	<!-- Script link references-->
	<!-- Step 1 - Include the fusioncharts core library -->
	<script src="fusionCharts/fusioncharts.js"></script>
	<!-- Step 2 - Include the fusion theme -->
	<script src="fusionCharts/themes/fusioncharts.theme.fusion.js"></script>
	<script src="fusionCharts/themes/fusioncharts.theme.candy.js"></script>
	<script src="fusionCharts/themes/fusioncharts.theme.carbon.js"></script>
	<script src="fusionCharts/themes/fusioncharts.theme.umber.js"></script>
	<script src="fusionCharts/fusioncharts.charts.js"></script>
	<script src="bootstrap5/js/bootstrap.bundle.min.js"></script>
	<script src="supportLib/jquery-3.6.0.js"></script>
	<script src="supportLib/jquery.dataTables.min.js"></script>
	<script src="supportLib/dataTables.bootstrap5.min.js"></script>
	<script src="js/script.js"></script>
</body>
<!--/ body-->

</html>
<!--/ html-->