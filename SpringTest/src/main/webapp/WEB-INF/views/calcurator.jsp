<div class="money-infor-wrap">
	<div class="money-infor">
		<!-- money-infor-inner -->
		<div class="money-infor-inner deposit">
			<p class="money-title">You Deposit <span>(Service charge included)</span></p>
			<p id="deposit_error_txt" class="input-error-text" style="display:inline-block; height:15"></p>
			<div class="input-inbox ns-en">
				<input type="text" id="deposit_amount" name="" value="">
				<div class="flag-btn">
					<a href="#">
						<span class="flag-large kr"></span><span id="deposit_curr" class="flag-btn-txt">KRW</span><i class="icon-arrow"></i>
					</a>
				</div>
			</div>
		</div><!--// money-infor-inner -->
		<!-- money-infor-inner -->
		<div class="money-infor-inner recipient">
			<p class="money-title">Recipient Gets</p>
			<p id="receive_error_txt" class="input-error-text" style="display:inline-block; height:15"></p>
			<div class="input-inbox ns-en">
				<input type="text" id="receive_amount" name="" value="">
				<div class="flag-btn recipient">
					<input id="selected_reci_country_code" type="hidden" value="ph">
					<a href="#">
						<span class="flag-large ph"></span><span id="receive_curr" class="flag-btn-txt">PHP</span>
						<i class="icon-arrow"></i>
					</a>
				</div>
				<!-- popup -->
				<div class="currencies-popup">
					<p class="currencies-title">Currencies</p>
					<ul>

					<li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="AZ"><span class="flag-small az"></span><span class="currencies-list-txt">USD</span><span class="right-text">Azerbaijan</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="BD"><span class="flag-small bd"></span><span class="currencies-list-txt">BDT</span><span class="right-text">Bangladesh</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="BY"><span class="flag-small by"></span><span class="currencies-list-txt">USD</span><span class="right-text">Belarus</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="CN"><span class="flag-small cn"></span><span class="currencies-list-txt">CNY</span><span class="right-text">China</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="EU"><span class="flag-small eu"></span><span class="currencies-list-txt">EUR</span><span class="right-text">EU</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="ID"><span class="flag-small id"></span><span class="currencies-list-txt">IDR</span><span class="right-text">Indonesia</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="JP"><span class="flag-small jp"></span><span class="currencies-list-txt">JPY</span><span class="right-text">Japan</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="KG"><span class="flag-small kg"></span><span class="currencies-list-txt">USD</span><span class="right-text">Kyrgyzstan</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="KH"><span class="flag-small kh"></span><span class="currencies-list-txt">USD</span><span class="right-text">Cambodia</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="KZ"><span class="flag-small kz"></span><span class="currencies-list-txt">USD</span><span class="right-text">Kazakhstan</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="LK"><span class="flag-small lk"></span><span class="currencies-list-txt">USD</span><span class="right-text">Sri Lanka</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="LK"><span class="flag-small lk"></span><span class="currencies-list-txt">LKR</span><span class="right-text">Sri Lanka</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="MD"><span class="flag-small md"></span><span class="currencies-list-txt">USD</span><span class="right-text">Moldova</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="MM"><span class="flag-small mm"></span><span class="currencies-list-txt">MMK</span><span class="right-text">Myanmar</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="MN"><span class="flag-small mn"></span><span class="currencies-list-txt">USD</span><span class="right-text">Mongolia</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="MN"><span class="flag-small mn"></span><span class="currencies-list-txt">MNT</span><span class="right-text">Mongolia</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="NP"><span class="flag-small np"></span><span class="currencies-list-txt">NPR</span><span class="right-text">Nepal</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="PH"><span class="flag-small ph"></span><span class="currencies-list-txt">PHP</span><span class="right-text">Philippines</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="PK"><span class="flag-small pk"></span><span class="currencies-list-txt">PKR</span><span class="right-text">Pakistan</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="RU"><span class="flag-small ru"></span><span class="currencies-list-txt">RUB</span><span class="right-text">Russia</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="RU"><span class="flag-small ru"></span><span class="currencies-list-txt">USD</span><span class="right-text">Russia</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="TJ"><span class="flag-small tj"></span><span class="currencies-list-txt">USD</span><span class="right-text">Tajikistan</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="UA"><span class="flag-small ua"></span><span class="currencies-list-txt">UAH</span><span class="right-text">Ukraine</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="US"><span class="flag-small us"></span><span class="currencies-list-txt">USD</span><span class="right-text">USA</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="UZ"><span class="flag-small uz"></span><span class="currencies-list-txt">USD</span><span class="right-text">Uzbekistan</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="UZ"><span class="flag-small uz"></span><span class="currencies-list-txt">UZS</span><span class="right-text">Uzbekistan</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="VN"><span class="flag-small vn"></span><span class="currencies-list-txt">VND</span><span class="right-text">Vietnam</span></a></li><li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="VN"><span class="flag-small vn"></span><span class="currencies-list-txt">USD</span><span class="right-text">Vietnam</span></a></li></ul>
				</div><!--// popup -->
			</div>
		</div><!--// money-infor-inner -->
	</div>
	<!-- option-wrap -->
	<div class="option-wrap">
		<div class="option-inner">
			<div class="option-title">Remittance Option<span>(Service charge may vary)</span></div>
			<div class="option-btn">
				<a href="#"><input id="selected_option" type="hidden" value="CASH_PICK_UP"><span class="currencies-list-txt">Cash Pickup</span> <i class="icon-arrow white"></i></a>
			</div>
			<!-- popup -->
			<div class="currencies-popup">
				<p class="currencies-title">Remittance Options</p>
				<ul>
					<li class="option"><a href="#" onclick="return false"><span class="currencies-list-txt"><input type="hidden" value="CASH_PICK_UP">Cash Pickup</span></a>
					</li>
					<li class="option"><a href="#" onclick="return false"><span class="currencies-list-txt"><input type="hidden" value="BANK_TRANSFER">Bank Transfer</span></a>
					</li>
				</ul>
			</div><!--// popup -->
		</div>
		<div id="currency_rate" class="rate-text">1KRW = 0.04264231PHP</div>
		<div class="service-wrap">
			<p class="left-text">Service Charge<span>(Hanpass + Remittance Option Fee)</span></p>
			<p id="service_charge" class="right-text">5000 KRW</p>
		</div>
	</div><!--// option-wrap -->
</div>