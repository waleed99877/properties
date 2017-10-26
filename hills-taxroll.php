<?php

$url = "https://hillsborough.county-taxes.com/tcb/app/public/reports/real_estate/download";
$referer = "https://hillsborough.county-taxes.com/public/reports/real_estate";
$info = array("base_url" => 'public/reports/real_estate',
			"parent_request_id" => "76952569",
			"report_search" => "tax_year	current+tax+year	status	/|/	custom_flag	/|/	exemption	/|/	litigation	/|/	property_class	/|/	installment_status	/|/	",
			"filetype" => "csv",
			"session_id" => "322317564345132860617775712310407941056",
			"delimiter" => "comma",
			"quoting" => "1",
			"selected_report" => "1465",
			"displayed_columns" => "account_number|tax_year|status|total_assessed_value|balance_amount|certificate_number|custom_flag|exemption|land_total_class_value|land_total_just_value|litigation|market_value|parent_account_number|property_class|standard_exemption_value|standard_taxable_value|total_exemption_value|actual_tax_balance|total_taxable_value|escrow_company_code|escrow_company|installment_status|balance_paid_date",
			"report_name" => "Public-Current+Tax+Roll",
			"backend" => "mysql",
			"download_now" => "browser"
			);
			
$info = "base_url=public%2Freports%2Freal_estate&parent_request_id=76953200&report_search=installment_status%09%2F%7C%2F%09exemption%09%2F%7C%2F%09property_class%09%2F%7C%2F%09litigation%09%2F%7C%2F%09tax_year%09current+tax+year%09status%09%2F%7C%2F%09custom_flag%09%2F%7C%2F%09&report_search_current_user_inputs=&session_id=207721578570471617291953766345243189124&filetype=csv&delimiter=comma&quoting=1&pdf_report_title=Public-Current+Tax+Roll+Report+(Account+Search)&pdf_report_description=&page_orientation=portrait&paper_size=letter&page_break=auto&break_selector=account_number&shade_alternate_rows=1&selected_report=1465&displayed_columns=account_number%7Ctax_year%7Cstatus%7Ctotal_assessed_value%7Cbalance_amount%7Ccertificate_number%7Ccustom_flag%7Cexemption%7Cland_total_class_value%7Cland_total_just_value%7Clitigation%7Cmarket_value%7Cparent_account_number%7Cproperty_class%7Cstandard_exemption_value%7Cstandard_taxable_value%7Ctotal_exemption_value%7Cactual_tax_balance%7Ctotal_taxable_value%7Cescrow_company_code%7Cescrow_company%7Cinstallment_status%7Cbalance_paid_date&hide_results=&sort_by_displayed=&hide_public=&display_name=&current_view=accounts&current_display=data&report_name=Public-Current+Tax+Roll&select_view=accounts&report_page=1&backend=mysql&last_sort_col=2&sbgb_boundary=3&search_order_column1=account_number&search_order_column2=tax_year&search_order_column3=&select_display=data&search_order_direction1=asc&search_order_direction2=asc&report_search_dummy=&report_search_dummy=current+tax+year&report_search_dummy=%2F%7C%2F&report_search_dummy=&report_search_dummy=&report_search_dummy=&report_search_dummy=%2F%7C%2F&report_search_dummy=%2F%7C%2F&report_search_dummy=&report_search_dummy=&report_search_dummy=%2F%7C%2F&report_search_dummy=&report_search_dummy=&report_search_dummy=%2F%7C%2F&report_search_dummy=&report_search_dummy=&report_search_dummy=&report_search_dummy=&report_search_dummy=&report_search_dummy=&report_search_dummy=&report_search_dummy=%2F%7C%2F&report_search_dummy=&rows_per_page=50&print_cover_page=0&download_now=browser&ajax_request=0.8849145810516021&cookie_id=333208019";




$cu = curl_init();
curl_setopt($cu, CURLOPT_URL, $url);
curl_setopt($cu, CURLOPT_POST, 1);
curl_setopt($cu, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0");
curl_setopt($cu, CURLOPT_HTTPHEADER, Array("Content-Type:application/x-www-form-urlencoded"));
curl_setopt($cu, CURLOPT_REFERER, $referer);
curl_setopt($cu, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($cu, CURLOPT_RETURNTRANSFER, true);
curl_setopt($cu, CURLOPT_COOKIEFILE, 'cookies.txt');
curl_setopt($cu, CURLOPT_COOKIEJAR, 'cookies.txt');
curl_setopt($cu, CURLOPT_FOLLOWLOCATION, true);
curl_setopt($cu, CURLOPT_CONNECTTIMEOUT, 8);
curl_setopt($cu, CURLOPT_TIMEOUT, 5);
//curl_setopt($cu, CURLOPT_POSTFIELDS, http_build_query($info));
curl_setopt($cu, CURLOPT_POSTFIELDS, $info);



$info_response = curl_exec($cu);
curl_close($cu);
echo $info_response;

?>