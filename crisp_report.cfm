<div='header_2'>
	<style>
	.container {
		width: 96%;
		max-width: 1100px;
	}

	/* ********************* */
	/* ****   GLOBAL    **** */
	/* ********************* */

	.section-1 {
		display: block;
		position: relative;
		float: none;
		margin-top: 10px;
		margin-bottom: 40px;
	}
	.top-dropdown {
		position: absolute !important;
		right: 0px;
		margin: 0px !important;
		margin-top: -6px !important;
		z-index: 9999;
	}
	.section-2 {
		display: block;
		position: relative;
		float: none;
		margin-top: 10px;
		margin-bottom: 40px;
	}
	.section-header {
		display: block;
		position: relative;
		margin-bottom: 10px;
		color: #b4b4b4;
		font-size: 35px;
		line-height: 35px;
		font-weight: 200;
		border-bottom: solid 1px #ececec;
	}
	.section-header span {
		font-size: 25px;
		float: right;
	}
	.hidden{
		display:none;
	}
	.visible{
		display: block;
	}
	.module-holder-full {
		display: inline-block;
		position: relative;
		width: 100%;
	}
	.module-holder-medium {
		display: inline-block;
		vertical-align: top;
		position: relative;
		width: 50%;
	}
	.module {
		display: block;
		position: relative;
		padding: 0px;
		margin: 10px;
		background-color: #ffffff;
		border: solid 1px #d8d8d8;
		text-align: center;
		-moz-border-radius: 4px;
		-webkit-border-radius: 4px;
		border-radius: 4px;
		overflow: hidden;
	}
	.module-inner {
		display: block;
		padding: 25px;
		-webkit-user-select: none;
		-moz-user-select: none;
		-ms-user-select: none;
	}
	.darker {
		background-color:#f6f6f5;
	}
	.left-module {
		margin-left: 0px !important;
	}
	.right-module {
		margin-right: 0px !important;
	}
	.module-header {
		display: block;
		position: relative;
		padding: 6px 0px;
		background-color: #d8d8d8;
		color: #575757;
		font-size: 14px;
		line-height: 14px;
		font-weight: 900;
		letter-spacing: 0.5px;
		text-transform: uppercase;
	}
	.benchmark-holder {
		overflow: hidden;
	}
	.benchmark {
		position: relative;
	}
	.loading-gif {
		display: block;
		padding: 15px 5px;
		margin-bottom: 20px;
	}
	.loading-gif p {
		font-size: 12px;
		line-height: 16px;
		color: #b4b4b4;
	}

	/* --------------------- */
	/* ------ MODULE 1 ----- */
	/* --------------------- */
	.data-box-list {
		display: block;
	}
	.data-box-list li {
		display: inline-block;
		vertical-align: middle;
		width: 25%;
	}
	.data-box-list li:nth-child(4) .data-box {
		border-right:none;
	}
	.data-box {
		display: block;
		border-right: solid 1px #d8d8d8;
		text-align: center;
		padding: 0px 0px 20px 0px;
	}
	.data-box-number {
		color: #505050;
		font-size: 56px;
		font-weight: 700;
	}
	.data-box-number span {
		font-weight:400;
		color:#c1c1c1;
	}
	.data-box-label {
		color: #505050;
		font-size: 18px;
		font-weight: 700;
		padding-bottom:14px;
	}
	.section {
		display: inline-block;
		vertical-align: top;
		position: relative;
		margin: 0px;
		padding: 0px;
		width: 100%;
		text-align: center;
	}
	.charts {
		display: block;
		margin-top: 25px;
		background-color: #ffffff;
		border: solid 1px #d8d8d8;
		text-align: center;
		padding: 0px;
		-moz-border-radius: 4px;
		-webkit-border-radius: 4px;
		border-radius: 4px;
		-moz-box-shadow: 0px 1px 2px rgba(0,0,0,0.1);
		-webkit-box-shadow: 0px 1px 2px rgba(0,0,0,0.1);
		box-shadow: 0px 1px 2px rgba(0,0,0,0.1);
		overflow: hidden;
	}
	.charts-btns {
		display: block;
	}
	.charts-btns li {
		display: inline-block;
		vertical-align: top;
		width: 50%;
	}
	.charts-btns li p {
		display: block;
		padding: 10px 0px;
		background-color: #e7e7e7;
		cursor: pointer;
		font-size: 14px;
		line-height: 14px;
		font-weight: 700;
		color: #6d6d6d;
		-webkit-touch-callout: none;
		-webkit-user-select: none;
		-khtml-user-select: none;
		-moz-user-select: none;
		-ms-user-select: none;
		user-select: none;
	}
	.selected-chart {
		background-color: #d6d6d6 !important;
		-moz-box-shadow: inset 0px 1px 0px 0px rgba(0,0,0,0.1);
		-webkit-box-shadow: inset 0px 1px 0px 0px rgba(0,0,0,0.1);
		box-shadow: inset 0px 1px 0px 0px rgba(0,0,0,0.1);
	}
	.charts-container {
		display: block;
		position: relative;
		padding: 10px 0px;
	}
	.chart-key {
		display: block;
		position: relative;
		padding: 6px 0px 8px 0px;
	}
	.chart-key li {
		display: inline-block;
		vertical-align: middle;
		margin: 0px 12px;
	}
	.key-color {
		display: inline-block;
		vertical-align: middle;
		margin: 0px 6px;
		width: 20px;
		height: 6px;
		background-color: #cdcdcd;
	}
	.key-label {
		display: inline-block;
		vertical-align: middle;
		margin: 0px 6px;
		color:#575757;
	}

	/* --------------------- */
	/* ------ MODULE 2 ----- */
	/* --------------------- */

	.staff-list, .dealer-list {
		display: block;
		position: relative;
		padding: 12px 20px;
		padding-top: 6px;
	}
	.staff-list { padding-right: 20px; padding-left: 0px; }
	.staff-list-labels-row, .dealer-list-labels-row {
		padding-bottom: 12px;
		font-size: 12px;
		line-height: 16px;
		color: #a7a7a7;
		-webkit-touch-callout: none;
		-webkit-user-select: none;
		-khtml-user-select: none;
		-moz-user-select: none;
		-ms-user-select: none;
		user-select: none;
	}
	.rankings {
		font-size:16px;
	}
	.list-block {
		font-size: inherit;
		line-height: inherit;
		color: inherit;
		display: inline-block;
		vertical-align: middle;
		text-align: right;
	}
	.active-tab-p {
		color: #007def !important;
	}
	.active-tab-img {
		background-color: #007def !important;
	}

	.column-1 {
		width: 36%;
		text-align: left !important;
		background-color: rgba(233,233,233,1);
	}
	.column-2, .column-3, .column-4, .column-5, .column-6 {
		width: 16%;
		background-color: rgba(233,233,233,1);
		text-align: center !important;
	}
	.your-dealership .column-1, .your-dealership .column-2, .your-dealership .column-3,
	.your-dealership .column-4, .your-dealership .column-5 {
		background-color:#f5f5f5;
	}
	.your-dealership .sorted {
		background-color:#fff;
	}
	.your-dealership .sorted p {
		color:#0c0c0c;
		font-weight:bold;
	}
	.staff-name { color: #525252 !important; }
	.column-1 .dealer-name, .data-cell .num-holder, .data-cell a {
		border-top:1px solid #bababa;
		border-left:1px solid #bababa;
	}
	.staff-list-row { border-left: 1px solid #bababa; }
	.staff-list-row .column-1 {	border-top:1px solid #bababa; }

	.data-cell:last-child .num-holder {
		border-right:1px solid #bababa;
	}

	.list-label {
		display: inline-block;
		vertical-align: middle;
		padding-left: 6px;
	}
	.list-label img {
		display: inline-block;
		vertical-align: middle;
		background-color: #a7a7a7;
	}
	.list-label p {
		display: inline-block;
		vertical-align: middle;
		padding: 0px 3px;
		color: #a7a7a7;
	}

	.staff-label-1, .dealer-label-1 {
		padding-left: 6px;
	}

	.staff-list-labels-row div:hover, .dealer-list-labels-row div:hover {
		cursor: pointer;
	}
	.staff-list-labels-row:first-child div:hover a img, .dealer-list-labels-row:first-child div:hover a img {
		background-color: #007def;
	}
	.staff-list-labels-row:first-child div:hover a p, .dealer-list-labels-row:first-child div:hover a p {
		color: #007def;
	}

	.staff-list-labels-row div:nth-child(3):hover a img, .dealer-list-labels-row div:nth-child(3):hover a img {
		background-color: #f4ca57;
	}
	.staff-list-labels-row div:nth-child(3):hover a p, .dealer-list-labels-row div:nth-child(3):hover a p {
		color: #f4ca57;
	}
	.staff-list-labels-row div:nth-child(4):hover a img, .dealer-list-labels-row div:nth-child(4):hover a img {
		background-color: #71ca6f;
	}
	.staff-list-labels-row div:nth-child(4):hover a p, .dealer-list-labels-row div:nth-child(4):hover a p {
		color: #71ca6f;
	}
	.staff-list-labels-row div:nth-child(5):hover a img, .dealer-list-labels-row div:nth-child(5):hover a img {
		background-color: #e56d64;
	}
	.staff-list-labels-row div:nth-child(5):hover a p, .dealer-list-labels-row div:nth-child(5):hover a p {
		color: #e56d64;
	}

	.staff-list-labels-row div:nth-child(2).sorted .list-label img, .dealer-list-labels-row div:nth-child(2).sorted .list-label img {
		background-color: #007def;
	}
	.staff-list-labels-row div:nth-child(3).sorted .list-label img, .dealer-list-labels-row div:nth-child(3).sorted .list-label img {
		background-color: #f4ca57;
	}
	.staff-list-labels-row div:nth-child(4).sorted .list-label img, .dealer-list-labels-row div:nth-child(4).sorted .list-label img {
		background-color: #71ca6f;
	}
	.staff-list-labels-row div:nth-child(5).sorted .list-label img, .dealer-list-labels-row div:nth-child(5).sorted .list-label img {
		background-color: #e56d64;
	}

	.staff-list-row, .dealer-list-row  {
		display: block;
		position: relative;
		margin: 0px;
		padding: 0px 8px;
		font-size: 16px;
		line-height: 16px;
		color: #808080;
	}
	.staff-list-row { padding-left: 0px; }
	.row-anchor {
		display: block; margin: 0px; padding: 0px;
	}
	.percent {
		color: #525252; font-size: 14px;
	}
	.numbers {
		color: #525252; font-size: 12px;
	}
	.dealership-single { display: block; padding: 0px 20px; }
	.your-dealership {
		display: block;
		position: relative;
		margin-top: 20px;
		padding: 0px 8px;
		font-size: 16px;
		line-height: 16px;
		color: #808080;
	}

	.your-dealership .list-block {
		border-bottom:1px solid #bababa;
	}
	.selected-row .list-block {
		background-color:#f5f5f5;
	}
	.selected-row .sorted {
		background-color:#fff;
	}

	.staff-list-row:nth-of-type(10n + 1) .list-block, .dealer-list-row:nth-child(6) .list-block {
		border-bottom:1px solid #bababa;
	}
	.staff-list-row:last-child .list-block {
		border-bottom:1px solid #bababa;
	}
	.data-cell .num-holder, .data-cell a, .staff-name, .dealer-name {
		display: block;
		padding: 4px 8px;
		white-space: nowrap;
		text-overflow: ellipsis;
		overflow: hidden;
	}
	.staff-name {
		display: inline-block;
		vertical-align: middle;
		padding: 12px 8px;
		width: 80%;
		width: -moz-calc(100% - 55px);
		width: -webkit-calc(100% - 55px);
		width: -o-calc(100% - 55px);
		width: calc(100% - 55px);
	}
	.staff-avatar {
		display: inline-block; vertical-align: middle;
		height: 30px; width: 30px; margin-left: 8px;
		-moz-border-radius: 50%; -webkit-border-radius: 50%; border-radius: 50%;
	}
	.data-cell {
		color: #808080;
	}
	.list-pagination {
		display: block;
		position: relative;
		padding: 0px 24px 20px 5px;
		float: right;
	}
	.staff-list-prev-btn, .dealer-list-prev-btn {
		display: inline-block;
		vertical-align: middle;
		position: relative;
		margin: 0px;
		padding: 0px;
		height: 22px;
		margin-right: 10px;
		background-color: #626262;
		-webkit-touch-callout: none;
		-webkit-user-select: none;
		-khtml-user-select: none;
		-moz-user-select: none;
		-ms-user-select: none;
		user-select: none;
		z-index: 9999;
	}
	.staff-list-prev-btn:hover, .dealer-list-prev-btn:hover {
		background-color: #007def;
	}
	.staff-list-next-btn, .dealer-list-next-btn {
		display: inline-block;
		vertical-align: middle;
		position: relative;
		margin: 0px;
		padding: 0px;
		height: 22px;
		margin-left: 10px;
		background-color: #626262;
		-webkit-touch-callout: none;
		-webkit-user-select: none;
		-khtml-user-select: none;
		-moz-user-select: none;
		-ms-user-select: none;
		user-select: none;
		z-index: 9999;
	}
	.staff-list-next-btn:hover, .dealer-list-next-btn:hover {
		background-color: #007def;
	}

	.crisp-popup, .crisp-popup2 {
		display:block;
		position:relative;
		right:0px;
		vertical-align:middle;
		text-align:right;
	}

	.crisp-popup a span { display: inline-block; vertical-align: middle; color: #007def; }
	.crisp-popup a:hover span { text-decoration: underline; color: #525252; }

	.module-inner a.list-view, .module-inner a.chart-view {
		display:inline-block;
		color:#575757;
		font-size:26px;
		width:46%;
		padding: 20px 0px;
		background-color:#e7e7e8;
	}

	a.list-view {
		border-top-left-radius: 3px;
		-webkit-border-top-left-radius: 3px;
		-moz-border-top-left-radius: 3px;
		border-left:1px solid #d8d8d8;
		border-top:1px solid #d8d8d8;
	}

	a.chart-view {
		border-top-right-radius: 3px;
		-webkit-border-top-right-radius: 3px;
		-moz-border-top-right-radius: 3px;
		border-right:1px solid #d8d8d8;
		border-top:1px solid #d8d8d8;
	}

	.module-inner a.active {
		background-color:#fff;
	}

	.scroll-list {
		text-align:left;
		margin-left: 20px;
		display:block;
		margin-bottom:20px;
	}
	.scroll-list-bottom {
		text-align:left;
		margin-left:30px;
		display:block;
		position:relative;
	}
	.scroll-list-bottom div {
		display:inline-block;
		position:relative;
		vertical-align:middle;
	}
	.scroll-list div {
		display:inline-block;
		position:relative;
		vertical-align:middle;
	}
	.left-arrow, .right-arrow {
		background-color:#4195de;
	}
	.left-arrowb, .right-arrowb {
		background-color:#e8e8e8;
	}

	.scroll-list-bottom .options {
		background-color: #e8e8e8;
		padding: 12px 16px;
		margin: 0px 1px;
	}
	.scroll-list-bottom .optionsb {
		background-color: #e8e8e8;
		padding: 12px 16px;
		padding: 12px 16px;
	}

	.options {
		background-color: #4195de;
		padding: 10px 0px;
		text-align:center;
		margin: 0px 1px;
		width: 150px;
	}
	.optionsb {
		border-top:1px solid #b9b9b9;
		border-bottom:1px solid #b9b9b9;
		background-color: #4195de;
		padding: 10px 0px;
		text-align:center;
		width: 150px;
	}
	.options h3 {
		color:#fff;
	}
	.optionsb h3 {
		color:#505050;
	}
	.scroll-list-bottom .left-arrow a, .scroll-list-bottom .right-arrow a {
		display:block;
		padding: 8px 6px;
	}
	.scroll-list-bottom .left-arrowb a, .scroll-list-bottom .right-arrowb a {
		display:block;
		padding: 8px 6px;
		border:1px solid #b9b9b9;
	}
	.left-arrow a, .right-arrow a {
		display:block;
		padding: 6px 6px;
	}
	.left-arrowb a, .right-arrowb a {
		display:block;
		padding: 6px 6px;
	}
	.inner-inner {
		border-left:1px solid #d8d8d8;
		border-right:1px solid #d8d8d8;
		border-bottom:1px solid #d8d8d8;
		padding-top:20px;
		margin: 0px 3.9%;
		padding-bottom:20px;
		background-color:#fff;
		display:none;
	}
	.category-buttons {
		display:block;
		margin-top:16px;
		margin-bottom:32px;
	}
	.category-buttons ul li {
		display:inline-block;
	}
	.category-buttons ul li:last-child a {
		border-right:none;
	}
	.category-buttons ul li a {
		display:block;
		color:#878787;
		background-color:#e7e7e8;
		border-right:1px solid #c5c5c5;
		padding:12px 0px;
		width:147px;
		font-size: 18px;
		font-weight: 500;
	}
	.category-buttons ul li:first-child a {
		border-top-left-radius: 3px;
		-moz-border-top-left-radius: 3px;
		-webkit-border-top-left-radius: 3px;
		border-bottom-left-radius: 3px;
		-moz-border-bottom-left-radius: 3px;
		-webkit-border-bottom-left-radius: 3px;
	}
	.category-buttons ul li:last-child a {
		border-top-right-radius: 3px;
		-moz-border-top-right-radius: 3px;
		-webkit-border-top-right-radius: 3px;
		border-bottom-right-radius: 3px;
		-moz-border-bottom-right-radius: 3px;
		-webkit-border-bottom-right-radius: 3px;
	}
	.category-buttons ul li:first-child a.active {
		background-color:#4195df;
		color:#fff;
	}
	.category-buttons ul li:nth-child(2) a.active {
		background-color:#f4ca57;
		color:#fff;
	}
	.category-buttons ul li:nth-child(3) a.active {
		background-color:#71ca6f;
		color:#fff;
	}
	.category-buttons ul li:last-child a.active {
		background-color:#e56d64;
		color:#fff;
	}
	.individual-data {
		display:block;
		padding-bottom:20px;
	}
	.individual-list {
		display:inline-block;
		position:relative;
		width:70%;
		vertical-align:top;
	}
	.individual-chart {
		display:inline-block;
		position:relative;
		width:30%;
		vertical-align:top;
	}
	.individual-list h3 {
		font-size:22px;
		text-align:left;
		margin-bottom:16px;
		color:#585858;
	}
	.individual-chart {
		text-align:right;
		margin-right:0px;
	}
	.line-chart-holder {
		display:block;
		position:relative;
		text-align:left;
		margin-top:20px;
	}
	.line-chart-holder-large {
		display:block;
		position:relative;
		text-align:center;
		margin-top:30px;
	}
	.sorted {
		background-color:#fff;
	}
	.sorted .percent, .sorted .numbers {
		color:#0c0c0c;
		font-weight:bold;
	}
	.sorted p.staff-label-2, .sorted p.dealer-label-2 {
		color:#007def;
	}
	.sorted p.staff-label-3, .sorted p.dealer-label-3 {
		color:#f4ca57;
	}
	.sorted p.staff-label-4, .sorted p.dealer-label-4 {
		color:#71ca6f;
	}
	.sorted p.staff-label-5, .sorted p.dealer-label-5 {
		color:#e56d64;
	}
	.inner-inner-two {
		border-left:1px solid #d8d8d8;
		border-right:1px solid #d8d8d8;
		border-bottom:1px solid #d8d8d8;
		padding-top:20px;
		margin: 0px 3.9%;
		padding-bottom:20px;
		background-color:#fff;
	}
	.shadow-div, .shadow-div2 {
		display: none;
		position: fixed;
		width: 100%;
		height: 100%;
		left: 0px;
		top: 0px;
		background-color: rgba(0,0,0,0.9);
		z-index: 99999; /*because 9's*/
		/*-webkit-transition: all .3s linear;
		-moz-transition: all .3s linear;
		-ms-transition: all .3s linear;
		transition: all .3s linear;*/
	}
	.shadow-div table, .shadow-div2 table {
		width:100%;
		height:100%;
	}
	.shadow-div table td, .shadow-div2 table td {
		width:100%;
		height:100%;
		vertical-align:middle;
		text-align:center;
	}
	.shadow-div table td div, .shadow-div2 table td div {
		padding:10px 20px;
		background-color:transparent;
	}
	.shadow-div table td div div, .shadow-div2 table td div div {
		margin:0px 200px;
		background-color:#fff;
		border-radius:3px;
		-webkit-border-radius:3px;
		-moz-border-radius:3px;
	}
	.options h3 {
		white-space: nowrap;
		text-overflow: ellipsis;
		overflow: hidden;
	}
	.pop-up-header {
		font-size:16px;
		color:#474747;
		font-weight:bold;
		margin-bottom:14px;
		text-align:left;
	}
	.shadow-div table td div div .pop-up-header, .shadow-div2 table td div div .pop-up-header {
		margin-bottom:4px;
	}
	.pop-up-sub {
		font-size:14px;
		line-height:18px;
		color:#787878;
		font-weight:bold;
		margin-bottom:14px;
		text-align:left;
	}
	.crisp-points li {
		text-align:left;
		transition: all ease-in-out .3s;
		-webkit-transition: all ease-in-out .3s;
		-moz-transition: all ease-in-out .3s;
	}
	.crisp-points li:first-child:hover {
		background-color: rgba(85,159,229,0.2);
		border-radius:3px;
		-webkit-border-radius:3px;
		-moz-border-radius:3px;
	}
	.crisp-points li:nth-child(2):hover {
		background-color: rgba(244,202,87,0.2);
		border-radius:3px;
		-webkit-border-radius:3px;
		-moz-border-radius:3px;
	}
	.crisp-points li:nth-child(3):hover {
		background-color: rgba(113,202,111,0.2);
		border-radius:3px;
		-webkit-border-radius:3px;
		-moz-border-radius:3px;
	}
	.crisp-points li:last-child:hover {
		background-color: rgba(229,109,100,0.2);
		border-radius:3px;
		-webkit-border-radius:3px;
		-moz-border-radius:3px;
	}
	.crisp-points li h3 {
		margin-bottom:8px;
	}
	.crisp-points li h3 span {
		color:#787878;
		text-decoration:none;
	}
	.staff-list-page {
		display:inline-block;
	}
	.4charts1 {
		color:#007def;
		font-size:12px;
	}
	.4charts2 {
		color:#f4ca57;
		font-size:12px;
	}
	.4charts3 {
		color:#71ca6f;
		font-size:12px;
	}
	.4charts4 {
		color:#e56d64;
		font-size:12px;
	}
	span.connect {
		color:#007def;
	}
	span.request {
		color:#f4ca57;
	}
	span.set {
		color:#71ca6f;
	}
	span.pursue {
		color:#e56d64;
	}
	/* --- Medium Device --- */
	@media screen and (max-width: 1068px), screen and (max-device-width: 1068px) {
		.shadow-div table td div div, .shadow-div2 table td div div {
			margin:0px 100px;
		}
		.scroll-list-bottom {
			text-align:center;
			margin-left:0;
			width:100%;
			display:inline-block;
		}
	}

	/* --- Small Device --- */
	@media screen and (max-width: 840px), screen and (max-device-width: 840px) {
		.inner-container {
			padding: 20px 10px;
		}
		.module-inner {
			padding: 10px;
		}
		.data-box-label {
			font-size:12px;
		}
		.data-box-number {
			font-size:40px;
		}
		.scroll-list {
			margin-left: 7.25%;
			display: block;
			margin-bottom: 20px;
		}
		.category-buttons ul li a {
			width:100px;
			font-size:14px;
		}
		.shadow-div table td div div, .shadow-div2 table td div div {
			margin:0px 40px;
		}
		.individual-list {
			display:block;
			width:100%;
		}
		.individual-chart {
			display:block;
			width:100%;
			border: solid 1px #d8d8d8;
			border-radius: 3px;
			-webkit-border-radius: 3px;
			-moz-border-radius: 3px;
			margin-top:35px;
			margin-left:-4px;
			padding:20px 0px 20px 5px;
		}
		.scroll-list-bottom {
			text-align:center;
			margin-left:0;
			display:inline-block;
			position:relative;
		}
	}

	/* --- Very Small Device --- */
	@media screen and (max-width: 690px), screen and (max-device-width: 690px) {
		.top-dropdown {
			display: block !important;
			margin: 0px auto !important;
			margin-top: -50px !important;
			left: 0% !important;
			right: 0% !important;
			text-align: center;
		}
		.section-1 .section-header {
			margin-top: 45px !important;
		}
		.shadow-div table td div div, .shadow-div2 table td div div {
			margin:0px 0px;
			margin-top:40px;
		}
		.shadow-div2 table td div div {
			margin-top:50px;
			padding:4px;
		}
		.pop-up-header, .pop-up-sub {
			font-size:9px;
		}
		.pop-up-header span {
			display:none;
		}
		.category-buttons ul li a {
			width:70px;
			font-size:12px;
		}
		.scroll-list-bottom {
			width:100%;
			display:inline-block;
		}
		.section-header {
			text-align:center;
		}
	}
	</style>

	<cftry>
	<cfif isDefined("SESSION.axreport_lskin")>
		<cfset session_accountnumber_GIT = SESSION.axreport_lskin>
	</cfif>

	<cfif NOT isDefined("session_accountnumber_GIT")>
		<cfif isDefined("SESSION.callmeasurement_lskin")>
			<cfset session_accountnumber_GIT = SESSION.callmeasurement_lskin>
		</cfif>
	</cfif>

	<cfif NOT isDefined('this_start')>
		<cfif isDefined('SESSION.callmeasurement_start')>
			<cfset this_start = SESSION.callmeasurement_start>
		<cfelse>
			<cfset this_start = DateFormat(DateAdd('d',-7,Now()),'yyyy-mm-dd')>
		</cfif>
	</cfif>

	<cfif NOT isDefined('this_end')>
		<cfif isDefined('SESSION.callmeasurement_end')>
			<cfset this_end = SESSION.callmeasurement_end>
		<cfelse>
			<cfset this_end = DateFormat(Now(),'yyyy-mm-dd')>
		</cfif>
	</cfif>

	<cfif NOT IsDefined('pClass')>
		<cfif IsDefined('SESSION.product_GIT')>
			<cfquery datasource="#application.ds#" name="pull_defaultClass">
				select pc.phonecode_classid, pc.class_name
				from phonecode_class_join pcj
					inner join phonecode_class pc on pc.phonecode_classid = pcj.frn_phonecode_classid
					inner join wdb7000.humanatic.dbo.hproduct_phonecode_class hpc on hpc.frn_phonecode_classid = pc.phonecode_classid
				where frn_lskinid = #session_accountnumber_GIT#
					and hpc.frn_hproductid = #SESSION.product_GIT#
			</cfquery>

			<cfif pull_defaultClass.recordCount GT 0>
				<cfset pClass = pull_defaultClass.phonecode_classid>
			</cfif>
		</cfif>
	</cfif>

	<cfset five_sundays = ArrayNew(1)>
	<cfset five_sundays_odbc = ArrayNew(1)>
	<cfset five_sundays_staff_show = ArrayNew(1)>

	<cfloop index="i" from="1" to ="5" step="1">
		<cfset dtLastWeek = (Fix( Now() ) - (7*(i-1))) />
		<cfset objLastWeek = StructNew() />
		<cfset objLastWeek.Start = DateFormat(dtLastWeek - DayOfWeek( dtLastWeek ) + 1) />
		<cfset objLastWeek.End = DateFormat( objLastWeek.Start + 6 ) />
		<cfset five_sundays[i] = #objlastweek.start#>
		<cfset five_sundays_staff_show[6-i] = #DateFormat(objlastweek.start, "mm-dd")#>
		<cfset five_sundays_odbc[6-i] = #CreateODBCDate(objlastweek.start)#>
	</cfloop>

	<cfinclude template="../query_table_call.cfm">
	<cfinclude template="crisp_report_queries.cfm">

<!--- 	<cfif check_phonedamentals.participating eq 'yes'>	
		<cfinclude template="crisp_report_queries_staff.cfm">
	</cfif> --->


<cfif isdefined("cody")>
	<cfdump var="#five_sundays_staff_show#">
	<cfabort>
</cfif>

</div>

<script>
var crispColors = ["#4195e0","#f4ca57","#71ca6f","#e56d64"];
/* ------------------------- */
/* --- STAFF MASTER LIST --- */
/* ------------------------- */
var staffMasterList = []

	<cfoutput query="pull_staff_master">
		staffMasterList.push(
			{
				name: "#phone_digit_staff_name_GIT#",
				avatar:
						<cfif pc_avatar IS "">
							<cfset randNumber = RandRange(1,15)>
							"../images/cx_details/agent_placeholder_images/known/placeholder_#randNumber#.jpg",
						<cfelse>
							"../images/phonecode/#phonecode_master#/#avatar_GIT#",
						</cfif>
				currentC : ["#Round(current_connect_score)#%",
							"#caller_name_yes+vehicle_pref_yes+perfect_car_yes#",
							"#caller_name_yes+vehicle_pref_yes+perfect_car_yes+caller_name_no+vehicle_pref_no+perfect_car_no#"],

				currentR : ["#Round(current_request_score)#%",
							"#two_appts_yes#",
							"#two_appts_yes+two_appts_no#"],


				currentS : ["#Round(current_Set_score)#%",
							"#instructions_provided+clear_flexibility#",
							"#instructions_provided+clear_flexibility+no_instructions_provided+no_clear_flexibility#"],


				currentP : ["#Round(current_pursue_score)#%",
							"#expectations_set+permission_asked+confirmed_callback#",
							"#expectations_set+permission_asked+confirmed_callback+no_expectations_set+no_permission_asked+no_confirmed_callback#"],

				trendC : [0,0,0,0,#Round(current_connect_score)#],
				trendR : [0,0,0,0,#Round(current_request_score)#],
				trendS : [0,0,0,0,#Round(current_Set_score)#],
				trendP : [0,0,0,0,#Round(current_pursue_score)#],
			});

	<cfquery name="staff_trend" datasource="callmeasurement">
			SELECT
			pc.icdc_id_GIT,
			pc.phone_digit_staff_name_GIT,
			DATEADD(dd,(DATEPART(dw,xc.the_date_git)*(-1)+8),xc.the_date_git) AS sunday,
			Round(
				CASE
					WHEN ( COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88162) THEN xc.callid END)
						 + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88612) THEN xc.callid END)
						 + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88614) THEN xc.callid END)
						 ) = 0
					THEN 0
		        ELSE (
		       			(
		       				Cast(
		       						(
		       							COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88161) THEN xc.callid END)
		       						  + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88610) THEN xc.callid END)
		       						  + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88613) THEN xc.callid END)
		       						 )
		       			 AS NUMERIC) /
		                	Cast(
		                			(
		                				COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88162) THEN xc.callid END)
		                			  + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88612) THEN xc.callid END)
		                			  + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88614) THEN xc.callid END)
		                			  + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88161) THEN xc.callid END)
		       						  + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88610) THEN xc.callid END)
		       						  + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88613) THEN xc.callid END)
		                			)
		                 AS NUMERIC)

		                ) * 100
		            )   END , 2)                                AS connect_trend,
			Round(
			    CASE
			      WHEN ( Count(DISTINCT CASE WHEN xch.metric_we_need_git IN ( 88619 ) THEN xc.callid END)
			         ) = 0
			      THEN 0
			        ELSE (
			            (
			              Cast(
			                  (
			                Count(DISTINCT CASE WHEN xch.metric_we_need_git IN ( 88618 ) THEN xc.callid END)
			                   )
			             AS NUMERIC) /
			                  Cast(
			                      (
			                Count(DISTINCT CASE WHEN xch.metric_we_need_git IN ( 88618 ) THEN xc.callid END)
			                + Count(DISTINCT CASE WHEN xch.metric_we_need_git IN ( 88619 ) THEN xc.callid END)
			                      )
			                 AS NUMERIC)
			                ) * 100
			            )   END , 2)                                AS request_trend,
			Round(
		    CASE
		      WHEN ( COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88625) THEN xc.callid END)
		         + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88627) THEN xc.callid END)
		         ) = 0
		      THEN 0
		        ELSE (
		            (
		              Cast(
		                  (
		                    COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88624) THEN xc.callid END)
		                    + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88626) THEN xc.callid END)
		                   )
		             AS NUMERIC) /
		                  Cast(
		                      (
		                        COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88625) THEN xc.callid END)
		                        + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88627) THEN xc.callid END)
		                        + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88626) THEN xc.callid END)
		                        + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88624) THEN xc.callid END)
		                      )
		                 AS NUMERIC)

		                ) * 100
		            )   END , 2)                                AS set_trend,
			Round(
			  CASE
			    WHEN ( COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88623) THEN xc.callid END)
			       + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88631) THEN xc.callid END)
			       + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88621) THEN xc.callid END)
			       ) = 0
			    THEN 0
			      ELSE (
			          (
			            Cast(
			                (
			                  COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88622) THEN xc.callid END)
			                  + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88630) THEN xc.callid END)
			                  + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88620) THEN xc.callid END)
			                 )
			           AS NUMERIC) /
			                Cast(
			                    (
			                      COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88623) THEN xc.callid END)
			                      + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88631) THEN xc.callid END)
			                      + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88621) THEN xc.callid END)
			                      + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88622) THEN xc.callid END)
			                  + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88630) THEN xc.callid END)
			                  + COUNT(DISTINCT CASE WHEN xch.metric_we_need_git IN (88620) THEN xc.callid END)
			                    )
			               AS NUMERIC)

			              ) * 100
			          )   END , 2)                                AS pursue_trend
				FROM xdnis d
				INNER JOIN call_data_table_git xc ON xc.cf_frn_callinfo_git = d.callinfo_git
				INNER JOIN call_data_table_git_one xch2 ON xch2.frn_callid_GIT = xc.callid_GIT
				INNER JOIN call_data_table_git_one xch ON xch2.frn_callid_GIT = xch.frn_callid_GIT
				INNER JOIN phonecode pc ON xc.frn_icdc_id_GIT = pc.icdc_id_GIT
				where d.add_account_number_git = #session_accountnumber_GIT#
					and pc.isactive = 1
					and icdc_id_GIT = #phonecode_master#
					AND xc.the_date_git > CONVERT(DATE, DATEADD(ww,-5,DATEADD(dd,(DATEPART(dw,GETDATE())*(-1)+1),GETDATE())))
					and xc.the_date_git <= CONVERT(DATE, DATEADD(ww,-1,DATEADD(dd,(DATEPART(dw,GETDATE())*(-1)+7),GETDATE())))
				GROUP BY DATEADD(dd,(DATEPART(dw,xc.the_date_git)*(-1)+8),xc.the_date_git), pc.phone_digit_staff_name_GIT, pc.icdc_id_GIT,DATEADD(dd,(DATEPART(dw,xc.the_date_git)*(-1)+7),xc.the_date_git)
				order by sunday
	</cfquery>

		<cfloop index='i' from="1" to ="4" step="1">
			<cfloop query="staff_trend">
				<cfif #CreateODBCDate(sunday)# EQ five_sundays_odbc[#i#]>
					staffMasterList[staffMasterList.length-1].trendC[#i#-1] = #connect_trend#
					staffMasterList[staffMasterList.length-1].trendR[#i#-1] = #request_trend#
					staffMasterList[staffMasterList.length-1].trendS[#i#-1] = #set_trend#
					staffMasterList[staffMasterList.length-1].trendP[#i#-1] = #pursue_trend#
				</cfif>
			</cfloop>
		</cfloop>
	</cfoutput>
</script>

<!--- SECTION 1 --->
<ul class="section-1">
	<h2 class="section-header">CRISP Score <span><cfoutput>#Dateformat(five_sundays[2], "mmm-dd")# - #DateFormat(five_sundays[1],"mmm-dd, yyyy")#</cfoutput></span></h2>
	<li class="module-holder-full">
		<!---  MODULE 1  --->
		<div class="module left-module right-module" style="background-color: ##fbfbfb;">
			<h3 class="module-header">YOUR DEALERSHIP</h3>
			<div class="module-inner">
				<ul class="data-box-list">
					<cfoutput query="dealership_crisp_scores">
						<cfif #sunday# eq five_sundays[2]>
							<li>
								<div class="data-box">
									<p class="data-box-label">Connect</p>
									<p class="data-box-number" style="color: ##559fe5;">#Round(connect_score)#<span>%</span></p>
								</div>
							</li><li>
								<div class="data-box">
									<p class="data-box-label">Request/Invite</p>
									<p class="data-box-number" style="color: ##f4ca57;">#Round(request_score)#<span>%</span></p>
								</div>
							</li><li>
								<div class="data-box">
									<p class="data-box-label">Set</p>
									<p class="data-box-number" style="color: ##71ca6f;">#Round(set_score)#<span>%</span></p>
								</div>
							</li><li>
								<div class="data-box">
									<p class="data-box-label">Pursue</p>
									<p class="data-box-number" style="color: ##e56d64;">#Round(pursue_score)#</p>
								</div>
							</li>
						</cfif>
					</cfoutput>
				</ul>
			</div>
		</div>
	</li>
</ul>
<ul class="section-2">
	<div class="crisp-popup">
		<a href="" onclick="return false;">
			<span>How is my dealership CRISP score calculated?</span>
		</a>
		<div class="shadow-div">
			<table><td>
				<div>
					<div>
					<h3 class="pop-up-header">How is my dealership CRISP score calculated?</h3>
					<h3 class="pop-up-sub">Gauge your dealership?s phone performance and compare your
						store to your competitors with the CRISP score. This simple acronym breaks down
						important key aspects of each phone call that affect your score. You should maximize
						each of these elements to improve your score.
					</h3>
					<ul class="crisp-points">
						<li>
							<h3 class="pop-up-header">Connect</h3>
							<p class="pop-up-sub">Is your team throwing away prospect opportunities by not connecting
								 calls quickly enough? If so, you need to know. <span class="connect">Connect</span> score is determined by monitoring
								 how often your dealership connects inbound calls to a live agent that can help the caller
								 in less than 30 seconds.
							</p>
						</li>
						<li>
							<h3 class="pop-up-header">Request/Invite</h3>
							<p class="pop-up-sub">Your dealership can?t sell cars if no one is inviting your callers
								in for an appointment. Your <span class="request">request/invite</span> score is determined by how often your agents
								are inviting callers into the dealership.
							</p>
						</li>
						<li>
							<h3 class="pop-up-header">Set</h3>
							<p class="pop-up-sub">Setting firm appointments increases the customer show rate.
								Your <span class="set">set</span> score will be measured by how often your team is scheduling appointments for a
								firm date and time.
							</p>
						</li>
						<li>
							<h3 class="pop-up-header">Pursue</h3>
							<p class="pop-up-sub">Is your team reaching out to prospects to bring in more business?
								Outbound calls are just as important as inbound calls to your dealership. The <span class="pursue">pursue</span>
								score is calculated as the number of connected outbound calls divided by the number of
								inbound sales opportunities.
							</p>
						</li>

					</ul>
				</div>
				</div>
			</td></table>
		</div>
	</div>
	<li class="module-holder-full">
		<!---  MODULE 2  --->
		<div class="module left-module right-module" style="background-color: ##fbfbfb;">
			<h3 class="module-header">TOP DEALERSHIPS</h3>
			<div class="module-inner darker">
				<div class="tabs">
					<a class="list-view" href="#" onclick="return false;">List View</a><a class="chart-view active" href="#" onclick="return false;">Chart View</a>
				</div>
					<div class="inner-inner">
					</div>
					<div class="inner-inner-two">
						<div class="category-buttons">
							<ul>
								<li><div><a class="ajax_line_btn c active" href="connect_score" onclick="return false;">Connect</a></div>
								</li><li><div><a class="ajax_line_btn r/i tw" href="request_score" onclick="return false;">Request/Invite</a></div>
								</li><li><div><a class="ajax_line_btn s" href="set_score" onclick="return false;">Set</a></div>
								</li><li><div><a class="ajax_line_btn p" href="pursue_score" onclick="return false;">Pursue</a></div></li>
							</ul>


										<div class="line_chart_ajax">
											<div class="line-chart-holder-large">
												<ul class="chart-key">
													<li><div class="key-color" style="background-color: #323232;"></div><p class="key-label">Top 5 Dealerships</p>
													</li><li><div id="key-color" class="key-color" style="background-color: #007def;"></div><p class="key-label">Your Dealership</p>
													</li>
												</ul>
												<canvas id="line-chart-top" width="680" height="300"></canvas>
												<script>

													<cfoutput>
														#ToScript(five_sundays, "five_sundays")#
													</cfoutput>
													var stepWidth = 50;	//divide by four to get the steps
													var connectedData = [0,0,0,0,0];

													// 5 weeks of crisp scores for this dealership
													<cfloop index='i' from="1" to ="5" step="1">
														<cfoutput query="CRISP_ranks_dealership">
															<cfif #CreateODBCDate(sunday)# EQ five_sundays_ODBC[#i#]>
																connectedData[#i#-1] = #Round(connect_score)#
															</cfif>
														</cfoutput>
													</cfloop>

													var currentData = connectedData;
													var lineData = {
														labels : [five_sundays[4], five_sundays[3], five_sundays[2],five_sundays[1],five_sundays[0]],
														datasets : [
															{
																fillColor : "#323232",
																strokeColor : "#323232",
																pointColor : "#323232",
																pointStrokeColor : "#ffffff",
																data : [0,0,0,0,0]
															},
															{
																fillColor : "#007def",
																strokeColor : "#007def",
																pointColor : "#007def",
																pointStrokeColor : "#ffffff",
																data : currentData
															}
														]
													}
												// Five weeks of the average top 5 for the connected category.
													<cfoutput>
														<cfloop array="#five_sundays#" index="sunday">
															<cfquery name="average_top_5_connect" datasource="callmeasurement" maxrows="5">
																WITH current_week_cte (lskinid, Sunday, connect_under_10, no_employee_reached,
																					   connect_11to29, connect_30to60, connect_slow)
																	     AS 
																	     (SELECT lskinid, 
																				DATEADD(dd,(DATEPART(dw,ah.the_date_git)*(-1)+8),ah.the_date_git) AS sunday,
																	             Sum(CASE WHEN hcat_optionid = 9 THEN callcount 
																	                   ELSE 0 END) AS connect_under_10, 
																	             Sum(CASE WHEN hcat_optionid = 10 THEN callcount 
																	                   ELSE 0 END) AS no_employee_reached,
																	             Sum(CASE WHEN hcat_optionid = 171 THEN callcount 
																	                   ELSE 0 END) AS connect_11to29, 
																	             Sum(CASE WHEN hcat_optionid = 172 THEN callcount 
																	                   ELSE 0 END) AS connect_30to60, 
																	             Sum(CASE WHEN hcat_optionid = 173 THEN callcount 
																	                   ELSE 0 END) AS connect_slow
																	      FROM   aggregate_lskin_hco ah 
																	             INNER JOIN lskin_group_join lgj 
																	                     ON lgj.frn_lskinid = ah.lskinid 
																	      WHERE  lgj.frn_lskin_groupid = 56
																	             AND ah.the_date_git > CONVERT(DATE, DATEADD(ww,-5,DATEADD(dd,(DATEPART(dw,GETDATE())*(-1)+1),GETDATE())))
																	             AND ah.the_date_git <= CONVERT(DATE, DATEADD(ww,-1,DATEADD(dd,(DATEPART(dw,GETDATE())*(-1)+7),GETDATE())))
																	      GROUP  BY lskinid, DATEADD(dd,(DATEPART(dw,ah.the_date_git)*(-1)+8),ah.the_date_git)) 
																	SELECT lskinid, sunday,
																	       CASE 
																		        WHEN ( connect_under_10 + connect_11to29 + connect_30to60 + 
																		        	connect_slow + no_employee_reached ) = 0 THEN 0 
																		        ELSE ( ( 
																		        		Cast(( connect_under_10 + connect_11to29 )AS NUMERIC) / 
																						Cast(( connect_under_10 + connect_11to29 + connect_30to60 + 
																	                    		connect_slow + no_employee_reached )AS NUMERIC) 
																						) * 100 ) 
																	       		END AS connect_score
																	FROM   current_week_cte
																	WHERE sunday = #CreateODBCDate(sunday)#
																	ORDER BY SUNDAY, connect_score desc
															</cfquery>

															<cfloop index="i" from="1" to="5" step="1">
																<cfif #sunday# eq #five_sundays_ODBC[i]#>
																	<cfoutput>lineData.datasets[0].data[#i-1#] = #average_top_5_connect.connect_score#</cfoutput>;
																</cfif> 
															</cfloop>
														</cfloop>
													</cfoutput>



													var lineOptions = {
														//Boolean - If we show the scale above the chart data
														scaleOverlay : false,
														//Boolean - If we want to override with a hard coded scale
														scaleOverride : true,
														//** Required if scaleOverride is true **
														//Number - The number of steps in a hard coded scale
														scaleSteps : 2,
														scaleLabel: "<%=value%>%",
														//Number - The value jump in the hard coded scale
														scaleStepWidth : stepWidth,
														//Number - The scale starting value
														scaleStartValue : 0,
														//String - Colour of the scale line
														scaleLineColor : "rgba(0,0,0,.1)",
														//Number - Pixel width of the scale line
														scaleLineWidth : 1,
														//Boolean - Whether to show labels on the scale
														scaleShowLabels : true,
														//Number - Scale label font size in pixels
														scaleFontSize : 12,
														//String - Scale label font colour
														scaleFontColor : "#666",
														///Boolean - Whether grid lines are shown across the chart
														scaleShowGridLines : true,
														//String - Colour of the grid lines
														scaleGridLineColor : "rgba(0,0,0,.05)",
														//Number - Width of the grid lines
														scaleGridLineWidth : 1,
														//Boolean - Whether the line is curved between points
														bezierCurve : false,
														//Boolean - Whether to show a dot for each point
														pointDot : true,
														//Number - Radius of each point dot in pixels
														pointDotRadius : 6,
														//Number - Pixel width of point dot stroke
														pointDotStrokeWidth : 3,
														//Boolean - Whether to show a stroke for datasets
														datasetStroke : false,
														//Number - Pixel width of dataset stroke
														datasetStrokeWidth : 3,
														//Boolean - Whether to fill the dataset with a colour
														datasetFill : false,
														//Boolean - Whether to animate the chart
														animation : false,

													}

													var chart= document.getElementById("line-chart-top").getContext("2d");
													new Chart(chart).Line(lineData, lineOptions);
												</script>
											</div>
										</div>
									</div>
			
			</div>
		</div>
	</li>
</ul>

<div id='staff_section'>
<ul class="section-3">
	<div class="crisp-popup2">
		<a href="" onclick="return false;">
			<span>How is my staff CRISP score calculated?</span>
		</a>
		<div class="shadow-div2">
			<table><td>
				<div>
					<div>
					<h3 class="pop-up-header">How is my staff CRISP score calculated?</h3>
					<h3 class="pop-up-sub">Your staf members also get a CRISP score. We've identified critical phone skills that are
					important for your agents to master. Each element is determined by how often they perform
					these skills.</h3>
					<ul class="crisp-points">
						<li>
							<h3 class="pop-up-header">Connect</h3>
							<p class="pop-up-sub">Connecting and building relationships with prospects is an essential piece
								of the sales process. Staff <span class="connect">connect</span> score is calculated as each employee?s average for
								repeating a customer?s name at the beginning of the conversation, asking questions about a
								caller?s preferences, and assuring callers that your dealership would have the perfect car.</p>
						</li>
						<li>
							<h3 class="pop-up-header">Request/Invite</h3>
							<p class="pop-up-sub">Are staff members using the recommended method when requesting an appointment?
								The staff <span class="request">request/invite</span> score is measured by the employee average for offering at least two
								different times for an appointment on calls that represent an appointment opportunity.
							</p>
						</li>
						<li>
							<h3 class="pop-up-header">Set</h3>
							<p class="pop-up-sub">Staff members should prepare callers for their set appointments.
								The staff <span class="set">set</span> score is calculated as the employee average for providing instructions
								to each caller about what to do upon arrival and informing the customer to call the
								agent directly if anything changes with the appointment.
							</p>
						</li>
						<li>
							<h3 class="pop-up-header">Pursue</h3>
							<p class="pop-up-sub">Staff members should take certain steps to prepare for follow-up outbound calls.
								The <span class="pursue">pursue</span> score is measured by each staff member?s average for setting the expectation of a
								follow-up call, asking permission to call customers back and confirming the best call-back number.</p>
						</li>

					</ul>
				</div>
				</div>
			</td></table>
		</div>
	</div>
	<li class="module-holder-full">
		<!---  MODULE 2  --->
		<div class="module left-module right-module">
			<h3 class="module-header">YOUR STAFF</h3>
			<div class="module-inner">
				<div class="category-buttons">
					<ul>
						<li class="lower-buttons"><div><a class="c2 active" href="" onclick="return false;">Connect</a></div>
						</li><li class="lower-buttons"><div><a class="ri2" href="" onclick="return false;">Request/Invite</a></div>
						</li><li class="lower-buttons"><div><a class="s2" href="" onclick="return false;">Set</a></div>
						</li><li class="lower-buttons"><div><a class="p2" href="" onclick="return false;">Pursue</a></div></li>
	 				</ul>
				</div>
				<div class="individual-data">
					<div class="individual-list">
						<h3>Staff Rankings</h3>
						<ul class="staff-list">
							<li class="staff-list-labels-row">
								<div class="list-block column-1 name" style="background-color: rgba(0,0,0,0);">
									<a class="list-label" href="" onclick="return false;">
										<p class="staff-label-1 rankings">Name</p><img src="../images/redux/performance-report-cw/list-label-arrow.png"/>
									</a>
								</div><div class="list-block column-2 sorted" style="background-color: rgba(0,0,0,0);">
									<a class="list-label" href="" onclick="return false;">
										<p class="staff-label-2 rankings">C</p><img class="sorted" src="../images/redux/performance-report-cw/list-label-arrow.png"/>
									</a>
								</div><div class="list-block column-3" style="background-color: rgba(0,0,0,0);">
									<a class="list-label" href="" onclick="return false;">
										<p class="staff-label-3 rankings">R/I</p><img src="../images/redux/performance-report-cw/list-label-arrow.png"/>
									</a>
								</div><div class="list-block column-4" style="background-color: rgba(0,0,0,0);">
									<a class="list-label" href="" onclick="return false;">
										<p class="staff-label-4 rankings">S</p><img src="../images/redux/performance-report-cw/list-label-arrow.png"/>
									</a>
								</div><div class="list-block column-5" style="background-color: rgba(0,0,0,0);">
									<a class="list-label" href="" onclick="return false;">
										<p class="staff-label-5 rankings">P</p><img src="../images/redux/performance-report-cw/list-label-arrow.png"/>
									</a>
								</div>
							</li><li class="staff-list-row"><a class="row-anchor" href="" onclick="return false;">
								<div class="list-block column-1"><img class="staff-avatar" src=""/><p class="staff-name">Name</p>
								</div><div class="list-block column-2 data-cell"><div class="num-holder"><div class="percent">95%</div><div class="numbers">120 / 136</div></div>
								</div><div class="list-block column-3 data-cell"><div class="num-holder"><div class="percent">93%</div><div class="numbers">120 / 136</div></div>
								</div><div class="list-block column-4 data-cell"><div class="num-holder"><div class="percent">93%</div><div class="numbers">120 / 136</div></div>
								 </div><div class="list-block column-5 data-cell"><div class="num-holder"><div class="percent">93%</div><div class="numbers">120 / 136</div></div>
								</div></a>
							</li>
						</ul>
						<div class="list-pagination">
							<a class="staff-list-prev-btn" href="" onclick="return false;"><img src="../images/redux/performance-report-cw/prev-arrow-2.png"/>
							</a><div class="staff-list-page">1 - 8 of 53</div><a class="staff-list-next-btn" href="" onclick="return false;"><img src="../images/redux/performance-report-cw/next-arrow-2.png"/></a>
						</div>
					</div><div class="individual-chart">
						<div class="scroll-list-bottom">
							<div class="left-arrowb">
								<a href="" onclick="return false;"><img src="../images/redux/arrow-leftb.png"></a>
							</div><div class="optionsb">
								<h3></h3>
							</div><div class="right-arrowb">
								<a href="" onclick="return false;"><img src="../images/redux/arrow-rightb.png"></a>
							</div>
						</div>
						<div class="line-chart-holder">
							<p class="4charts1" style="color:#007def; font-size:12px; padding-left:40px; margin-bottom:-6px;">Connect</p>
							<canvas id="line-chart-bottom" width="400" height="120"></canvas>
							<p class="4charts2" style="color:#f4ca57; font-size:12px; padding-left:40px; margin-bottom:-6px; padding-top:6px;">Request/Invite</p>
							<canvas id="line-chart-bottom2" width="400" height="120"></canvas>
							<p class="4charts3" style="color:#71ca6f; font-size:12px; padding-left:40px; margin-bottom:-6px; padding-top:6px;">Set</p>
							<canvas id="line-chart-bottom3" width="400" height="120"></canvas>
							<p class="4charts4" style="color:#e56d64; font-size:12px; padding-left:40px; margin-bottom:-6px; padding-top:6px;">Pursue</p>
							<canvas id="line-chart-bottom4" width="400" height="120"></canvas>
							<script>


								<cfoutput>
									#ToScript(five_sundays_staff_show, "five_sundays_staff_show")#
								</cfoutput>

								var stepWidth = 50;

								var lineData2 = {
									labels : five_sundays_staff_show,
									datasets : [
										{
											fillColor : "#007def",
											strokeColor : "#007def",
											pointColor : "#007def",
											pointStrokeColor : "#ffffff",
										}
									]
								}
								var lineData3 = {
									labels : five_sundays_staff_show,
									datasets : [
										{
											fillColor : "#007def",
											strokeColor : "#007def",
											pointColor : "#007def",
											pointStrokeColor : "#ffffff",
										}
									]
								}
								var lineData4 = {
									labels : five_sundays_staff_show,
									datasets : [
										{
											fillColor : "#007def",
											strokeColor : "#007def",
											pointColor : "#007def",
											pointStrokeColor : "#ffffff",
										}
									]
								}
								var lineData5 = {
									labels : five_sundays_staff_show,
									datasets : [
										{
											fillColor : "#007def",
											strokeColor : "#007def",
											pointColor : "#007def",
											pointStrokeColor : "#ffffff",
										}
									]
								}
								var lineOptions2 = {
									scaleOverlay : false,
									scaleOverride : true,
									scaleSteps : 2,
									scaleStepWidth : stepWidth,
									scaleLabel: "<%=value%>%",
									scaleStartValue : 0,
									scaleLineColor : "rgba(0,0,0,.1)",
									scaleLineWidth : 1,
									scaleShowLabels : true,
									scaleFontSize : 12,
									scaleFontColor : "#666",
									scaleShowGridLines : true,
									scaleGridLineColor : "rgba(0,0,0,.05)",
									scaleGridLineWidth : 1,
									bezierCurve : false,
									pointDot : true,
									pointDotRadius : 6,
									pointDotStrokeWidth : 3,
									datasetStroke : false,
									datasetStrokeWidth : 3,
									datasetFill : false,
									animation : false,
								}

							</script>
						</div>
					</div>
				</div>
			</div>
		</div>
	</li>
</ul>
</div>
<script>

<cfoutput>
	#ToScript(check_phonedamentals.participating, "check_phonedamentals")#
</cfoutput>

/* --------------------------------- */
/* --- CREATE INITIAL STAFF LIST --- */
/* --------------------------------- */
var pageItems = 10;
var staffListRow = $('.staff-list-row').html();
$('.staff-list-row').detach();
staffMasterList.forEach(function(e){
	var i = staffMasterList.indexOf(e);
	// --- create new staff row
	$('.staff-list').append("<li id='staff-row-"+i+"' class='staff-list-row'>"+staffListRow+"</li>");

	// --- populate row with data from staff master list
	$('#staff-row-'+i).find('.staff-name').html(staffMasterList[i].name);
	$('#staff-row-'+i).find('.staff-avatar').attr("src",staffMasterList[i].avatar);
	$('#staff-row-'+i).find('.column-2').find('.percent').html(staffMasterList[i].currentC[0]).siblings('.numbers').html(staffMasterList[i].currentC[1] + " / " + staffMasterList[i].currentC[2]);
	$('#staff-row-'+i).find('.column-3').find('.percent').html(staffMasterList[i].currentR[0]).siblings('.numbers').html(staffMasterList[i].currentR[1] + " / " + staffMasterList[i].currentR[2]);
	$('#staff-row-'+i).find('.column-4').find('.percent').html(staffMasterList[i].currentS[0]).siblings('.numbers').html(staffMasterList[i].currentS[1] + " / " + staffMasterList[i].currentS[2]);
	$('#staff-row-'+i).find('.column-5').find('.percent').html(staffMasterList[i].currentP[0]).siblings('.numbers').html(staffMasterList[i].currentP[1] + " / " + staffMasterList[i].currentP[2]);
});

// --- select the first row
$('#staff-row-0').addClass('selected-row').find('.column-2').addClass('sorted');

$(document).ready(function(){
	// --- draw initial graphs ---
	drawBottomGraph();
	drawTopGraph();
	// --- re-draw top and bottom graphs on resize ---
	var screenWidth = $(window).width();
	// --- resize ---
	$( window ).resize(function() {

		var newScreenWidth = $(window).width();
		var resizeWidth = 940;
		if(screenWidth != newScreenWidth){
			drawBottomGraph();
			drawTopGraph();
		}
	});


	if (check_phonedamentals == 'no') {
		document.getElementById('staff_section').style.display = 'none';
	}


	// --- replace table row headings on small screen ---
	if (screenWidth < 700) {
		$('.dealer-label-2').html("C");
		$('.dealer-label-3').html("R/I");
		$('.dealer-label-4').html("S");
		$('.dealer-label-5').html("P");
		$('.ri2').html("Req./Invite");
		$('.tw').html("Req./Invite");
	}
	else {

	}

	// --- Toggle for list view/chart view
	$('.list-view').click(function() {
		if($(this).hasClass('active')) {

		}
		else {
			$(this).siblings('a').removeClass('active');
			$(this).addClass('active');
			$('.inner-inner-two').css("display","none");
			$('.inner-inner').css("display","block 
			    	$('.inner-inner').append("<img src='../images/redux/loading-gif.gif'>")
			    	
			        $.ajax({
			        	url: "../platform_a/pods/pod_components/crisp_leaderboards_list.cfm", 

						<cfoutput>
			        	data: {
			        		this_start:'#this_start#',
							this_end:'#this_end#',
							session_accountnumber_GIT:'#session_accountnumber_GIT#',
							c_r_s_or_p_score: 'connect_score'
			        	},
						</cfoutput>
			        	success: function(result){
			        		console.log('success')
			            	$('.inner-inner').empty();
			            	$('.inner-inner').append(result);
			        }});

		}
	});
	$('.chart-view').click(function() {
		if($(this).hasClass('active')) {

		}
		else {
			$(this).siblings('a').removeClass('active');
			$(this).addClass('active');
			$('.inner-inner-two').css("display","block");
			$('.inner-inner').css("display","none");
		}
	});

	// --- CRISP category buttons click function ---
	$('.category-buttons ul li a').click(function() {
		if($(this).hasClass('active')) {

		}
		else {
			$(this).parent('div').parent('li').siblings('li').children('div').children('a').removeClass('active');
			$(this).addClass('active');
		}

		if ($(this).hasClass('r/i')) {
			lineData.datasets.splice(1,1,{
				strokeColor : '#f4ca57',
				pointColor : '#f4ca57',
				pointStrokeColor : '#ffffff',
			});
			$('#key-color').css("background-color","#f4ca57");
			$('#line-chart-top').replaceWith("<canvas id='line-chart-top' width='680' height='300'></canvas>");
			ctx = $("#line-chart-top").get(0).getContext("2d");
			chart = new Chart(ctx).Line(lineData, lineOptions);
			drawTopGraph();
		}
		else if ($(this).hasClass('s')) {
			lineData.datasets.splice(1,1,{
					strokeColor : '#71ca6f',
					pointColor : '#71ca6f',
					pointStrokeColor : '#ffffff',
				});
			$('#key-color').css("background-color","#71ca6f");
			$('#line-chart-top').replaceWith("<canvas id='line-chart-top' width='680' height='300'></canvas>");
			ctx = $("#line-chart-top").get(0).getContext("2d");
			chart = new Chart(ctx).Line(lineData, lineOptions);
			drawTopGraph();
		}
		else if ($(this).hasClass('p')) {
			lineData.datasets.splice(1,1,{
					strokeColor : '#e56d64',
					pointColor : '#e56d64',
					pointStrokeColor : '#ffffff',
				});
			$('#key-color').css("background-color","#e56d64");
			$('#line-chart-top').replaceWith("<canvas id='line-chart-top' width='680' height='300'></canvas>");
			ctx = $("#line-chart-top").get(0).getContext("2d");
			chart = new Chart(ctx).Line(lineData, lineOptions);
			drawTopGraph();
		}
		else if ($(this).hasClass('c')) {
			lineData.datasets.splice(1,1,{
					strokeColor : '#007def',
					pointColor : '#007def',
					pointStrokeColor : '#ffffff',
				});
			$('#key-color').css("background-color","#007def");
			$('#line-chart-top').replaceWith("<canvas id='line-chart-top' width='680' height='300'></canvas>");
			ctx = $("#line-chart-top").get(0).getContext("2d");
			chart = new Chart(ctx).Line(lineData, lineOptions);
			drawTopGraph();
		}
	});

	// ---top dealerships scroll option ---
	var dealershipOptions = ["Top 5 Dealerships","Top Nissan Dealers","Top Mazda Dealers"];
	var optionsIndex = 0;
	$('.scroll-list div a').click(function() {
		if($(this).parent('div').hasClass("left-arrow")) {
			optionsIndex = (optionsIndex + dealershipOptions.length -1) % (dealershipOptions.length);
			$('.scroll-list div.options h3').text(dealershipOptions[optionsIndex]);
		}
		else if ($(this).parent('div').hasClass("right-arrow")) {
			optionsIndex = (optionsIndex + 1) % (dealershipOptions.length);
			$('.scroll-list div.options h3').text(dealershipOptions[optionsIndex]);
		}
	});
	$('.scroll-list div.options h3').text(dealershipOptions[0]);

	// ---modal crisp pop up/shadow div
	var crispState = 0;
	$(".crisp-popup a").click(function(){
		if (crispState==0){
			$(".shadow-div").fadeIn(200);
			menuState=1;
		}
		else if (menuState==1){
			$(".shadow-div").fadeOut(200);
			menuState=0;
		}
		$(".shadow-div").click(function(){
			if(menuState == 1){
				$(".shadow-div").fadeOut(200);
				 menuState = 0;
			}
			else {
			}
		});
	});
	$(".crisp-popup2 a").click(function(){
		if (crispState==0){
			$(".shadow-div2").fadeIn(200);
			menuState=1;
		}
		else if (menuState==1){
			$(".shadow-div2").fadeOut(200);
			menuState=0;
		}

		$(".shadow-div2").click(function(){
			if(menuState == 1){
				$(".shadow-div2").fadeOut(200);
				 menuState = 0;
			}
			else {
			}
		});
	});

	//-- scroll buttons bottom
	var category = $('.lower-buttons .active').text();
	var firstName = $('.selected-row').find('.staff-name').text();
	$('.scroll-list-bottom .optionsb h3').text(firstName);

	// ---click function for dealer-list-labels colors ---
	$('.dealer-list li div').click(function(){
		if(!$(this).hasClass('name')){
			var index = $(this).index() + 1;
			var color = crispColors[index - 2];
			$('.dealer-list li div.column-'+index).siblings('div').removeClass("sorted");
			$('.dealer-list li div.column-'+index).addClass("sorted");
			$('.dealership-single li div.column-'+index).siblings('div').removeClass("sorted");
			$('.dealership-single li div.column-'+index).addClass("sorted");
			$('.scroll-list .left-arrow, .scroll-list .options, .scroll-list .right-arrow').css('background-color',color);
		}
	});



	// ---link staff list to the category buttons
	$('.category-buttons ul li a').click(function() {
		if($(this).hasClass("c2")) {
			$('.staff-list li a div.column-2').siblings('div').removeClass("sorted");
			$('.staff-list li.selected-row a div.column-2').addClass("sorted");
			$('.staff-list-labels-row div.column-2').addClass("sorted");
			$('.staff-list-labels-row div.column-2').siblings('div').removeClass("sorted");
		}

		else if ($(this).hasClass("ri2")) {
			$('.staff-list li a div.column-3').siblings('div').removeClass("sorted");
			$('.staff-list li.selected-row a div.column-3').addClass("sorted");
			$('.staff-list-labels-row div.column-3').addClass("sorted");
			$('.staff-list-labels-row div.column-3').siblings('div').removeClass("sorted");
		}

		else if ($(this).hasClass("s2")) {
			$('.staff-list li a div.column-4').siblings('div').removeClass("sorted");
			$('.staff-list li.selected-row a div.column-4').addClass("sorted");
			$('.staff-list-labels-row div.column-4').addClass("sorted");
			$('.staff-list-labels-row div.column-4').siblings('div').removeClass("sorted");
		}
		else if ($(this).hasClass("p2")) {
			$('.staff-list li a div.column-5').siblings('div').removeClass("sorted");
			$('.staff-list li.selected-row a div.column-5').addClass("sorted");
			$('.staff-list-labels-row div.column-5').addClass("sorted");
			$('.staff-list-labels-row div.column-5').siblings('div').removeClass("sorted");
		}
		firstName = $('.selected-row').find('.staff-name').text();
		category = $(this).text();
		$('.scroll-list-bottom div.optionsb h3').text(firstName);

		var crispIndex = $(this).closest('.lower-buttons').index();
		var color = crispColors[crispIndex];

		drawBottomGraph();
	});


	$('.scroll-list-bottom div.left-arrowb').click(function() {
		var selected = $('.selected-row').index();
		var prev = selected - 1;

		if(selected > 1){
			if($('.staff-list-row:visible').first().hasClass('selected-row')){
				prevPage();
			}
			else {
				var sortedIndex = $('.selected-row').find('.sorted').index();
				var prevName = $('.selected-row').prev().find('.staff-name').text();
				$('.staff-list li:eq('+selected+')').removeClass('selected-row');
				$('.staff-list li:eq('+selected+')').find('div').removeClass('sorted');

				$('.staff-list li:eq('+prev+')').addClass('selected-row');
				$('.staff-list li:eq('+prev+')').find('a').children('div:eq('+sortedIndex+')').addClass('sorted');
				$('.scroll-list-bottom div.optionsb h3').text(prevName);

				drawBottomGraph();
			}
		}
	});

	$('.scroll-list-bottom div.right-arrowb').click(function() {
		var listLength = $('.staff-list').children('li').length - 1;
		var selected = $('.selected-row').index();
		if(selected < listLength){
			if($('.staff-list-row:visible').last().hasClass('selected-row')){
				nextPage();
			}
			else {
				var next = selected + 1;
				var sortedIndex = $('.selected-row').find('.sorted').index();
				var nextName = $('.selected-row').next().find('.staff-name').text();
				$('.staff-list li:eq('+selected+')').removeClass('selected-row');
				$('.staff-list li:eq('+selected+')').find('div').removeClass('sorted');

				$('.staff-list li:eq('+next+')').addClass('selected-row');
				$('.staff-list li:eq('+next+')').find('a').children('div:eq('+sortedIndex+')').addClass('sorted');
				$('.scroll-list-bottom div.optionsb h3').text(nextName);

				drawBottomGraph();
			}
		}
	});

	$('.staff-list-row').click(function(){
		var crispIndex = $('.staff-list').find('.list-block.sorted').index();
		$('.staff-list').find('.data-cell.sorted').removeClass('sorted');
		$(this).find('.list-block:eq('+crispIndex+')').addClass('sorted');
		$(this).siblings('.staff-list-row').removeClass('selected-row');
		$(this).addClass('selected-row');
		var staffName = $('.selected-row').find('.staff-name').text();
		$('.scroll-list-bottom div.optionsb h3').text(staffName);
		drawBottomGraph();
	});



	/* ---------------------------------- */
	/* --- PAGING AND SORTING - STAFF --- */
	/* ---------------------------------- */
	var toggle = [0,0,0,0,0,0];
	var totalItems = staffMasterList.length;
	var pageMin = 1;
	var pageMax = pageItems+1;
	var pageMaxLabel = pageMax - 1;
	$('.staff-list-prev-btn').css("visibility","hidden");


	// --- NEW STAFF SORTING ---
	$('.staff-list-labels-row').children('div').click(function(){
		if($(this).hasClass('name')){
			if(toggle[0] == 0){
				$(this).find(".list-label").children('img').rotate(180);
				staffMasterList.sort(function(a,b) {
					var aName = a.name.toLowerCase();
					var bName = b.name.toLowerCase();
					return ((aName < bName) ? -1 : ((aName > bName) ? 1 : 0));
				});
				toggle[0] = 1;
			}
			else if(toggle[0] == 1 ){
				$(this).find(".list-label").children('img').rotate(0);
				staffMasterList.sort(function(a,b) {
					var aName = a.name.toLowerCase();
					var bName = b.name.toLowerCase();
					return ((bName < aName) ? -1 : ((bName > aName) ? 1 : 0));
				});
				toggle[0] = 0;
			}
		}
		else {
			var sortingIndex = $(this).index()-1;
			var color = crispColors[sortingIndex];
			$('.lower-buttons a').removeClass('active');
			$('.lower-buttons:eq('+sortingIndex+') a').addClass('active');
			$(this).addClass('sorted').siblings().removeClass('sorted');
			$('.selected-row').find('.list-block').removeClass('sorted');
			$('.selected-row').find('.list-block:eq('+$(this).index()+')').addClass('sorted');

				staffMasterList.sort(function(a,b) {
					switch(sortingIndex){
						case 0:
							var aVal1 = a.currentC[0].toString(); var aVal2 = a.currentC[1].toString();
							var bVal1 = b.currentC[0].toString(); var bVal2 = b.currentC[1].toString();
							break;
						case 1:
							var aVal1 = a.currentR[0].toString(); var aVal2 = a.currentR[1].toString();
							var bVal1 = b.currentR[0].toString(); var bVal2 = b.currentR[1].toString();
							break;
						case 2:
							var aVal1 = a.currentS[0].toString(); var aVal2 = a.currentS[1].toString();
							var bVal1 = b.currentS[0].toString(); var bVal2 = b.currentS[1].toString();
							break;
						case 3:
							var aVal1 = a.currentP[0].toString(); var aVal2 = a.currentP[1].toString();
							var bVal1 = b.currentP[0].toString(); var bVal2 = b.currentP[1].toString();
							break;
					}

					aVal1 = aVal1.replace('%','');
					var aNumLength = aVal2.length;
					var aDecLength = 10 - aNumLength;
					var aZeroString = "";
					for(i=0;i<aDecLength;i++){
						aZeroString = "0" + aZeroString;
					}
					var aNewStaffValue = aVal1 + "." + aZeroString + aVal2;
					var aNewStaffValue = parseFloat(aNewStaffValue);

					bVal1 = bVal1.replace('%','');
					var bNumLength = bVal2.length;
					var bDecLength = 10 - bNumLength;
					var bZeroString = "";
					for(i=0;i<bDecLength;i++){
						bZeroString = "0" + bZeroString;
					}
					var bNewStaffValue = bVal1 + "." + bZeroString + bVal2;
					var bNewStaffValue = parseFloat(bNewStaffValue);

					return ((bNewStaffValue < aNewStaffValue) ? -1 : ((bNewStaffValue > aNewStaffValue) ? 1 : 0));
				});

				if(toggle[sortingIndex] == 0){
					$(this).find(".list-label").children('img').rotate(0);
					toggle[sortingIndex] = 1;
				}
				else if(toggle[sortingIndex] == 1 ){
					$(this).find(".list-label").children('img').rotate(180);
					staffMasterList.reverse();
					toggle[sortingIndex] = 0;
				}
		}
		//-- selected row
		var sortedIndex = $('.selected-row').find('.sorted').index();
		$('.staff-list li').removeClass('selected-row');
		$('.staff-list li').find('div.data-cell').removeClass('sorted');


		//-- reset paging
		pageMin = 1;
		pageMax = pageItems+1;
		pageMaxLabel = pageMax - 1;
		if(totalItems <= pageMax){
			$('.staff-list-next-btn').css("visibility","hidden");
			$('.staff-list-prev-btn').css("visibility","hidden");
		}
		else {
			$('.staff-list-next-btn').css("visibility","visible");
			$('.staff-list-prev-btn').css("visibility","hidden");
		}
		$('.staff-list-next-btn').css("visibility","visible");
		$('.staff-list-page').text("").text(pageMin + " - " + pageMaxLabel + " of " + totalItems);

		rebuildBottomList();

		$('.staff-list-row:visible').first().addClass('selected-row');
		$('.staff-list-row:visible').first().find('.list-block:eq('+sortedIndex+')').addClass('sorted');


		var staffName = $('.selected-row').find('.staff-name').text();
		$('.scroll-list-bottom div.optionsb h3').text(staffName);

		drawBottomGraph();
	});


	// --- PAGING ---
	$('.staff-list-row').css("display","none");
	$('.staff-list-row').each(function(i){
		var pageNumber = (i/pageItems +1);
		pageNumber = Math.floor(pageNumber);
		if(pageNumber <= 1){
			$(this).css("display","block");
		}
		i++;
	});
	if(totalItems < pageMax){
		pageMaxLabel = totalItems;
		$('.staff-list-next-btn').css("visibility","hidden");
		$('.staff-list-prev-btn').css("visibility","hidden");
	}
	$('.staff-list-page').text("").text(pageMin + " - " + pageMaxLabel + " of " + totalItems);

	// --- next page
	$('.staff-list-next-btn').click(function(){
		nextPage();
	});

	// --- prev page
	$('.staff-list-prev-btn').click(function(){
		prevPage();
	});


	function nextPage() {
		pageMin = pageMin + pageItems;
		pageMax = pageMax + pageItems;
		pageMaxLabel = pageMax - 1;
		$('.staff-list-row').css("display","none");
		$('.staff-list-row').each(function(){
			var index = $(this).index();
			if(index >= pageMin && index < pageMax){
				$(this).css("display","block");
			}
		});
		$('.staff-list-prev-btn').css("visibility","visible");
		if(pageMaxLabel <= totalItems){
			$('.staff-list-page').text("").text(pageMin + " - " + pageMaxLabel + " of " + totalItems);
			$('.staff-list-prev-btn').css("visibility","visible");
			if(pageMaxLabel == totalItems){
				$('.staff-list-next-btn').css("visibility","hidden");
			}
		}
		else {
			$('.staff-list-page').text("").text(pageMin + " - " + totalItems + " of " + totalItems);
			$('.staff-list-next-btn').css("visibility","hidden");
		}

		//-- selected row
		var sortedIndex = $('.selected-row').find('.sorted').index();
		$('.staff-list li').removeClass('selected-row');
		$('.staff-list li').find('div.data-cell').removeClass('sorted');
		$('.staff-list-row:visible').first().addClass('selected-row');
		$('.staff-list-row:visible').first().find('.list-block:eq('+sortedIndex+')').addClass('sorted');

		drawBottomGraph();
	}

	function prevPage() {
		pageMin = pageMin - pageItems;
		pageMax = pageMax - pageItems;
		pageMaxLabel = pageMax - 1;
		$('.staff-list-row').css("display","none");
		$('.staff-list-row').each(function(){
			var index = $(this).index();
			if(index >= pageMin && index < pageMax){
				$(this).css("display","block");
			}
		});
		$('.staff-list-next-btn').css("visibility","visible");
		if(pageMin > 1){
			$('.staff-list-page').text("").text(pageMin + " - " + pageMaxLabel + " of " + totalItems);
			$('.staff-list-next-btn').css("visibility","visible");
		}
		else {
			$('.staff-list-page').text("").text(pageMin + " - " + pageMaxLabel + " of " + totalItems);
			$('.staff-list-prev-btn').css("visibility","hidden");
		}

		//-- selected row
		var sortedIndex = $('.selected-row').find('.sorted').index();
		$('.staff-list li').removeClass('selected-row');
		$('.staff-list li').find('div.data-cell').removeClass('sorted');
		$('.staff-list-row:visible').last().addClass('selected-row');
		$('.staff-list-row:visible').last().find('.list-block:eq('+sortedIndex+')').addClass('sorted');

		drawBottomGraph();
	}


});

function rebuildBottomList(){
	$('.staff-list-row').each(function(){
		var n = $(this).index() - 1;
		$(this).find('.staff-name').html(staffMasterList[n].name);
		$(this).find('.staff-avatar').attr("src",staffMasterList[n].avatar);
		$(this).find('.column-2').find('.percent').html(staffMasterList[n].currentC[0]).siblings('.numbers').html(staffMasterList[n].currentC[1] + " / " + staffMasterList[n].currentC[2]);
		$(this).find('.column-3').find('.percent').html(staffMasterList[n].currentR[0]).siblings('.numbers').html(staffMasterList[n].currentR[1] + " / " + staffMasterList[n].currentR[2]);
		$(this).find('.column-4').find('.percent').html(staffMasterList[n].currentS[0]).siblings('.numbers').html(staffMasterList[n].currentS[1] + " / " + staffMasterList[n].currentS[2]);
		$(this).find('.column-5').find('.percent').html(staffMasterList[n].currentP[0]).siblings('.numbers').html(staffMasterList[n].currentP[1] + " / " + staffMasterList[n].currentP[2]);
		if(n < pageItems){
			$(this).css("display","block");
		}
		else {
			$(this).css("display","none");
		}
	});
}


function drawBottomGraph(){
	var rowIndex = $('.selected-row').index() - 1;
	var crispIndex = $('.selected-row').find('.sorted').index() - 1;
	lineData2.datasets[0].data = staffMasterList[rowIndex].trendC;
	lineData3.datasets[0].data = staffMasterList[rowIndex].trendR;
	lineData4.datasets[0].data = staffMasterList[rowIndex].trendS;
	lineData5.datasets[0].data = staffMasterList[rowIndex].trendP;
	lineData2.datasets[0].strokeColor = crispColors[0];
	lineData2.datasets[0].pointColor = crispColors[0];
	lineData3.datasets[0].strokeColor = crispColors[1];
	lineData3.datasets[0].pointColor = crispColors[1];
	lineData4.datasets[0].strokeColor = crispColors[2];
	lineData4.datasets[0].pointColor = crispColors[2];
	lineData5.datasets[0].strokeColor = crispColors[3];
	lineData5.datasets[0].pointColor = crispColors[3];
	//console.log(lineData2.datasets[0].data);

	var width = $('#line-chart-bottom').parent().width();
	$('#line-chart-bottom').replaceWith('<canvas id="line-chart-bottom" width="700" height="100"></canvas>');
	$('#line-chart-bottom').attr("width",width-30);
	var chart= document.getElementById("line-chart-bottom").getContext("2d");
	new Chart(chart).Line(lineData2, lineOptions2);

	var width = $('#line-chart-bottom2').parent().width();
	$('#line-chart-bottom2').replaceWith('<canvas id="line-chart-bottom2" width="700" height="100"></canvas>');
	$('#line-chart-bottom2').attr("width",width-30);
	var chart= document.getElementById("line-chart-bottom2").getContext("2d");
	new Chart(chart).Line(lineData3, lineOptions2);

	var width = $('#line-chart-bottom3').parent().width();
	$('#line-chart-bottom3').replaceWith('<canvas id="line-chart-bottom3" width="700" height="100"></canvas>');
	$('#line-chart-bottom3').attr("width",width-30);
	var chart= document.getElementById("line-chart-bottom3").getContext("2d");
	new Chart(chart).Line(lineData4, lineOptions2);

	var width = $('#line-chart-bottom4').parent().width();
	$('#line-chart-bottom4').replaceWith('<canvas id="line-chart-bottom4" width="700" height="100"></canvas>');
	$('#line-chart-bottom4').attr("width",width-30);
	var chart= document.getElementById("line-chart-bottom4").getContext("2d");
	new Chart(chart).Line(lineData5, lineOptions2);
};

function drawTopGraph() {
	var width = $('#line-chart-top').parent().width();
	var lineChartWidth = width - 30;
	$('#line-chart-top').replaceWith("<canvas id='line-chart-top' width='"+lineChartWidth+"' height='300'></canvas>");
	$('#line-chart-top').attr("width",lineChartWidth);
	ctx = $("#line-chart-top").get(0).getContext("2d");
	chart = new Chart(ctx).Line(lineData, lineOptions);

};

$(document).ready(function(){
    $(".ajax_line_btn").click(function(){
    	$('.line_chart_ajax').empty();
    	$('.line_chart_ajax').append("<img src='../images/redux/loading-gif.gif'>")
    	var order_by = $(this).attr("href")
    	
        $.ajax({
        	url: "../platform_a/pods/pod_components/crisp_leaderboards.cfm", 

			<cfoutput>
        	data: {
        		this_start:'#this_start#',
				this_end:'#this_end#',
				c_r_s_or_p_score: order_by,
				session_accountnumber_GIT:'#session_accountnumber_GIT#'
        	},
			</cfoutput>
        	success: function(result){
            	$('.line_chart_ajax').empty();
            	$('.line_chart_ajax').append(result);
            	drawBottomGraph();
        }});
    });
});


</script>






<cfcatch>
	<cfdump var="#cfcatch#">
</cfcatch>
</cftry>