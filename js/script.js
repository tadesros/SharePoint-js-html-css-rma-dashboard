//* CHART DATA AND CONFIG *

//Global Data
var totalRMARecords;

//*Chart 1 config and data
const chartData1 = [
	{
		label: "Approved",
		value: "633",
	},
	{
		label: "Pending Approval",
		value: "378",
	},
];
const chartConfig1 = {
	//Specify the chart type
	type: "column2d",
	//Set the container object
	renderAt: "chart-container",
	//Specify the width of the chart
	width: "100%",
	//Specify the height of the chart
	height: "400",
	//Set the type of data
	dataFormat: "json",
	dataSource: {
		chart: {
			//Set the chart caption
			caption: "Countries With Most Oil Reserves [2017-18]",
			//Set the chart subcaption
			subCaption: "In MMbbl = One Million barrels",
			//Set the x-axis name
			xAxisName: "Country",
			//Set the y-axis name
			yAxisName: "Reserves (MMbbl)",
			// numberSuffix: "K",
			//Set the theme for your chart
			theme: "ocean",
		},
		// Chart Data from Step 2
		data: chartData1,
	},
};
//*Chart 2 config and data
const chartData2 = {
	chart: {
		caption: "Recommended Portfolio Split",
		subcaption: "For a net-worth of $1M",
		showvalues: "1",
		showpercentintooltip: "0",
		numberprefix: "$",
		enablemultislicing: "1",
		theme: "fusion",
	},
	data: [
		{
			label: "Equity",
			value: "300000",
		},
		{
			label: "Debt",
			value: "230000",
		},
		{
			label: "Bullion",
			value: "180000",
		},
		{
			label: "Real-estate",
			value: "270000",
		},
		{
			label: "Insurance",
			value: "20000",
		},
	],
};
const chartConfig2 = {
	//Specify the chart type
	type: "pie3d",
	//Set the container object
	renderAt: "chart-container-map-1",
	//Specify the width of the chart
	width: "100%",
	//Specify the height of the chart
	height: "400",
	//Set the type of data
	dataFormat: "json",
	dataSource: {
		chart: {
			//Set the chart caption
			caption: "RMA Status Breakdown",
			//Set the chart subcaption
			// subCaption: "In MMbbl = One Million barrels",
			//Set the x-axis name
			// xAxisName: "Country",
			//Set the y-axis name
			// yAxisName: "Reserves (MMbbl)",
			// numberSuffix: "K",
			//Set the theme for your chart
			theme: "candy",
		},
		// Chart Data from Step 2
		data: chartData1,
	},
};
//*KPI 1 config and data
const chartData3 = [
	{
		label: "Top 32M",
		value: "128.7",
	},
	{
		label: "Next 391M",
		value: "111.4",
	},
	{
		label: "Next 1054M",
		value: "32.5",
	},
	{
		label: "Last 3474M",
		value: "7.6",
	},
];
const chartConfig3 = {
	type: "funnel",
	renderAt: "pyramid-container-1",
	// width: "100%",
	// height: "100%",
	dataFormat: "json",
	dataSource: {
		chart: {
			theme: "fusion",
			caption: "The Global Wealth Pyramid",
			subcaption: "Credit Suisse 2017",
			showvalues: "1",
			numbersuffix: " trn",
			numberprefix: "$",
			plottooltext:
				"<b>$label</b> of world population owns <b>$dataValue</b> of global wealth",
			is2d: "0",
		},
		data: chartData3,
	},
};

//*    WHEN THE DOM IS READY FIRE THIS CODE
document.onreadystatechange = function () {
	//* Check the value - if it's 'interactive' then the DOM has loaded
	if (document.readyState === "interactive") {
		//Get Total List Item count and Populate dashboard
		getListItemCount()
			.then((data) => {
				//Set itemCount to a variable
				var itemsCount = data.d.ItemCount;
				totalRMARecords = itemsCount;
				return itemsCount;
			})
			.then((itemsCount) => {
				//Set the Widget with item count
				var elemNumRecords = document.getElementById("totalRMARecords");
				elemNumRecords.innerHTML = itemsCount;
				//Set Global Array to this value
			})
			.catch((e) => console.log(e));

		//Get List Pending Count
		getListPendingCount()
			.then((data) => {
				//Set itemCount to a variable
				var numOfItems = data.d.results.length;
				return numOfItems;
			})
			.then((numOfItems) => {
				//Set the Widget with item count
				var elemTotalRecords = document.getElementById("totalRMAPending");
				elemTotalRecords.innerHTML = numOfItems;

				notPending = totalRMARecords - numOfItems;

				//Set Value in chart to this value
				chartData2[1].value = notPending;
			})
			.catch((e) => console.log(e));

		FusionCharts.ready(function () {
			// 	//Render Pie Chart
			var pieChart = new FusionCharts(chartConfig2);
			pieChart.render();
			// 	//Render Bar Chart
			// 	var barChart = new FusionCharts(chartConfig1);
			// 	barChart.render();
			// 	//Render pyramid chart
			// 	var pyramidChart = new FusionCharts(chartConfig3);
			// 	pyramidChart.render();

			// 	//This attaches event listener to all objects on the page
			// 	FusionCharts.addEventListener(
			// 		"renderComplete",
			// 		function (eventObj, eventArgs) {
			// 			console.log(
			// 				eventObj.eventType +
			// 					" was raised by the chart whose ID is " +
			// 					eventObj.sender.id
			// 			);
			// 		}
			// 	);
		});
	} //END READY STATE IS INTERACTIVE
}; //*  END ON READY STATE OUTSIDE

//* 		 FUNCTIONS
//Function Get Data from the specific list item
function getListData() {
	var siteurl = _spPageContextInfo.webAbsoluteUrl;

	$.ajax({
		//async: false,
		url:
			"http://rocsps/sites/GSTIntranet/QUALITY/RMA/_api/lists/getbytitle('RMA')/items(" +
			recordNum +
			")?$select=Program,RA_x002f_Customer_x0020_Concern_,PLant,OEM,Customer_x0020_Name2,Date_x0020_Issued,Title,Author/ID,Author/FirstName,Author/LastName,Author/Title,Author/Department,Author/SipAddress&$expand=Author/ID",
		type: "GET",
		//dataType: "json",
		headers: {
			accept: "application/json; odata=verbose",
		},
		cache: false,
		success: onSuccessListData,
		error: onErrorListData,
	});
}
//Function: OnError
function onErrorListData(error) {
	console.log("Error:" + JSON.stringify(error));
}
//Function: onSuccess
function onSuccessListData(data) {}
//Function Get Data from the specific list item
function getListCount() {
	//Set Site URL
	//var siteurl = _spPageContextInfo.webAbsoluteUrl;

	$.ajax({
		//async: false,
		url: "http://rocsps/sites/GSTIntranet/QUALITY/RMA/_api/lists/getbytitle('RMA')/ItemCount",
		type: "GET",
		//dataType: "json",
		headers: {
			accept: "application/json; odata=verbose",
		},
		cache: false,
		success: onSuccessListCount,
		error: onErrorListCount,
	});
}
//Function: OnError
function onErrorListCount(error) {
	console.log("Error:" + JSON.stringify(error));
}
//Function: onSuccess
function onSuccessListCount(data) {
	alert("success");
} //End of On Success
//FUNCTIONS
function getItems2() {
	return $.ajax({
		url: "http://rocsps/sites/GSTIntranet/QUALITY/RMA/_api/lists/getbytitle('RMA')/ItemCount",
		async: false,
		type: "GET",
		headers: {
			accept: "application/json;odata=verbose",
		},
		success: onSuccessGetItem,
		error: onErrorGetItem,
	});
}
//Function: OnError
function onErrorGetItem(error) {
	console.log("Error:" + JSON.stringify(error));
}
//Function: onSuccess
function onSuccessGetItem(data) {
	alert("success");
} //End of On Success

//get list item count
function getListItemCount() {
	return new Promise((resolve, reject) => {
		$.ajax({
			url: "http://rocsps/sites/GSTIntranet/QUALITY/RMA/_api/lists/getbytitle('RMA')/ItemCount",
			async: true,
			type: "GET",
			headers: {
				accept: "application/json;odata=verbose",
			},
			success: function (data) {
				resolve(data);
			},
			error: function (error) {
				reject(error);
			},
		});
	});
}
//get list items pending
function getListPendingCount() {
	return new Promise((resolve, reject) => {
		$.ajax({
			url: "http://rocsps/sites/GSTIntranet/QUALITY/RMA/_api/lists/getbytitle('RMA')/items?$filter=RMA_x0020_Request_x0020_Status eq 'Pending'&$top=5000",
			async: true,
			type: "GET",
			headers: {
				accept: "application/json;odata=verbose",
			},
			success: function (data) {
				resolve(data);
			},
			error: function (error) {
				reject(error);
			},
		});
	});
}
//Get pending Approval Numbers
function getPendingApprovalNumbers() {
	return new Promise((resolve, reject) => {
		$.ajax({
			url: "http://rocsps/sites/GSTIntranet/QUALITY/RMA/_api/lists/getbytitle('RMA')/ItemCount",
			async: false,
			type: "GET",
			headers: {
				accept: "application/json;odata=verbose",
			},
			success: function (data) {
				resolve(data);
			},
			error: function (error) {
				reject(error);
			},
		});
	});
}
//Get all list items up to threshold
function getAllThresholdItems() {
	// Variable to store the list item values.
	var results = results || [];
	GetRows();
	console.log(results);

	//Function: Get Rows
	function GetRows() {
		return $.ajax({
			url: "http://rocsps/sites/GSTIntranet/QUALITY/RMA/_api/lists/getbytitle('RMA')/items?$skiptoken=Paged=TRUE$top=100",
			method: "GET",
			headers: {
				Accept: "application/json; odata=verbose",
			},
			success: function (data) {
				results = results.concat(data.d.results);
				// If there's next set of data, "data.d.__next" will contain URL. If not then you’re at the end of the records list and the execution of the code will stop.
				if (data.d.__next) {
					url = data.d.__next;
					GetRows();
					console.log(url);
				}
			},
			error: function (error) {},
		});
	}
}
//Function: Test Chart
function testChart() {
	FusionCharts.ready(function () {
		var fusioncharts = new FusionCharts(chartConfigs);
		fusioncharts.render();
	});
}
//Function: Test Chart
function testChart2() {
	FusionCharts.ready(function () {
		var myChart = new FusionCharts({
			type: "pie3d",
			renderAt: "chart-container2",
			// width: "100%",
			// height: "100%",
			dataFormat: "json",
			dataSource,
		}).render();
	});
}
