<!DOCTYPE html>
<html
	lang="en"
	xmlns:mso="urn:schemas-microsoft-com:office:office"
	xmlns:msdt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882"
>
	<head>
		<title>RMA Dashboard</title>
		<link rel="stylesheet" href="bootstrap5/css/bootstrap.min.css" />
		<link rel="stylesheet" href="supportLib/dataTables.bootstrap5.min.css" />
		<link rel="stylesheet" href="bootstrap5/css/bootstrap-icons.css" />
		<link
			rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
		/>
		<link rel="stylesheet" href="css/style.css" />
	</head>

	<body>
		<!--Nav Bar-->
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
			<div class="container-fluid">
				<!--Offcanvas trigger-->
				<button
					class="navbar-toggler me-2"
					type="button"
					data-bs-toggle="offcanvas"
					data-bs-target="#offcanvasExample"
					aria-controls="offcanvasExample"
				>
					<span
						class="navbar-toggler-icon"
						data-bs-target="#offcanvasExample"
					></span>
				</button>
				<!--END: Offcanvas trigger-->
				<a class="navbar-brand fw-bold text-uppercase me-auto" href="#"
					>Quality RMA</a
				>
				<button
					class="navbar-toggler"
					type="button"
					data-bs-toggle="collapse"
					data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent"
					aria-expanded="false"
					aria-label="Toggle navigation"
				>
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<!-- <li class="nav-item">
							<a class="nav-link" href="#">Link</a>
						</li> -->
						<!-- <li class="nav-item dropdown">
							<a
								class="nav-link dropdown-toggle"
								href="#"
								id="navbarDropdown"
								role="button"
								data-bs-toggle="dropdown"
								aria-expanded="false"
							>
								Dropdown
							</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li><hr class="dropdown-divider" /></li>
								<li>
									<a class="dropdown-item" href="#">Something else here</a>
								</li>
							</ul>
						</li> -->

						<!-- <li class="nav-item">
							<a
								class="nav-link disabled"
								href="#"
								tabindex="-1"
								aria-disabled="true"
								>Disabled</a
							>
						</li> -->
					</ul>
				</div>
			</div>
		</nav>
		<!--END NAVBAR-->
		<!--OFFCANVAS-->
		<div
			class="offcanvas offcanvas-start bg-dark text-white sidebar-nav"
			tabindex="-1"
			id="offcanvasExample"
			aria-labelledby="offcanvasExampleLabel"
		>
			<div class="offcanvas-body p-0">
				<nav class="navbar-dark">
					<ul class="navbar-nav">
						<li>
							<div class="text-muted small fw-bold text-uppercase px-3">
								HOME
							</div>
						</li>

						<li>
							<a href="#" class="nav-link px-3 active">
								<span class="me-2">
									<i class="bi bi-speedometer2"></i>
								</span>

								<span> Dashboard </span>
							</a>
						</li>

						<!--Divider-->
						<li class="my-4">
							<hr class="dropdown-divider" />
						</li>

						<li>
							<div class="text-muted small fw-bold text-uppercase px-3">
								Interface
							</div>
						</li>

						<!--Collapsible content-->
						<a
							class="nav-link px-3 sidebar-link"
							data-bs-toggle="collapse"
							href="#collapseExample"
							role="button"
							aria-expanded="false"
							aria-controls="collapseExample"
						>
							<span class="me-2"><i class="bi bi-layout-split"></i></span>
							<span>Layouts</span>

							<span class="right-icon ms-auto">
								<i class="bi bi-chevron-down"></i>
							</span>
						</a>

						<div class="collapse" id="collapseExample">
							<div>
								<ul class="navbar-nav ps-3">
									<li>
										<a href="#" class="nav-link px-3">
											<span class="me-2">
												<i class="bi bi-layout-split"></i>
											</span>
											<span>Nested Link</span>
										</a>
									</li>
								</ul>
							</div>
						</div>
						<!--End collapsible content-->
					</ul>
				</nav>
			</div>
		</div>
		<!--END OFFCANVAS-->
		<!--Main-->
		<main class="mt-5 pt-3">
			<div class="mt-3 container-fluid">
				<div class="row">
					<div class="col-md-12 fw-bold fs-3"></div>
				</div>
				<!-- Link Buttons-->
				<div class="row h-05">
					<!--Card 1-->
					<div class="col-md-3 mb-3 align-self-center">
						<div
							class="
								card card-link
								text-white text-center
								bg-secondary
								mb-3
								h-100
							"
						>
							<!--<div class="card-header">Header</div> -->
							<div class="card-body">
								<!--<h5 class="card-title">Primary card title</h5>-->
								<p class="card-text">Submit New RMA Request</p>
								<a href="https://www.google.com/" class="stretched-link"></a>
							</div>
						</div>
					</div>
					<!--Card 2-->
					<div class="col-md-3 mb-3 align-self-center">
						<div
							class="
								card card-link
								text-white text-center
								bg-secondary
								mb-3
								h-100
							"
						>
							<!--<div class="card-header">Header</div>-->
							<div class="card-body">
								<!-- <h5 class="card-title">Primary card title</h5> -->
								<p class="card-text">View RMA's Pending Approvals</p>
								<a href="https://www.google.com/" class="stretched-link"></a>
							</div>
						</div>
					</div>
					<!--Card 3-->
					<div class="col-md-3 mb-3 align-self-center">
						<div
							class="
								card card-link
								text-center text-white
								bg-secondary
								mb-3
								h-100
							"
						>
							<!-- <div class="card-header">Header</div> -->
							<div class="card-body">
								<!-- <h5 class="card-title">Primary card title</h5> -->
								<p class="card-text">View Approved RMA's</p>
								<a href="https://www.google.com/" class="stretched-link"></a>
							</div>
						</div>
					</div>
					<!--Card 4-->
					<div class="col-md-3 mb-3 align-self-center">
						<div
							class="
								card card-link
								text-center text-white
								bg-secondary
								mb-3
								h-100
							"
						>
							<!-- <div class="card-header">Header</div> -->
							<div class="card-body">
								<!-- <h5 class="card-title">Primary card title</h5> -->
								<p class="card-text">RMA Credit/Debit Reconciliation</p>
								<a href="https://www.google.com/" class="stretched-link"></a>
							</div>
						</div>
					</div>
				</div>
				<!-- Chart Row 1 and 2-->
				<div class="row">
					<div class="col-md-6">
						<div class="card">
							<div class="card-header">Charts</div>
							<div class="card-body">
								<!-- <canvas class="chart" width="400" height="200"></canvas> -->

								<div id="chart-container">FusionCharts XT will load here!</div>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="card">
							<div class="card-header">Charts</div>
							<div class="card-body">
								<div id="chart-container2">FusionCharts XT will load here!</div>
							</div>
						</div>
					</div>
				</div>

				<!-- KPI's Row 1 and 2-->
				<div class="row">
					<div class="col-md-6">
						<div class="card">
							<div class="card-header">KPI</div>
							<div class="card-body">
								<div id="pyramid-container-1">
									FusionCharts XT will load here!
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="card">
							<div class="card-header">KPI 2</div>
							<div class="card-body">
								<div id="kpi-container-2">FusionCharts XT will load here!</div>
							</div>
						</div>
					</div>
				</div>

				<!--Data Table-->
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">Data Tables</div>
							<div class="card-body">
								<div class="table-responsive">Table</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
		<!--End Main-->
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
</html>
