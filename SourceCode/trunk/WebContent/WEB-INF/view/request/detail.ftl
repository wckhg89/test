<#compress>
<#escape x as x?html>
<div class="page">
	<div id="request-form-top" class="form">
		<div class="form-line">
			<div class="form-col-right">
				<label>依頼ID: ${request.relation_request_id}</label>
			</div>
		</div>
	
		<div class="form-line">
			<div class="form-col-right">
				<label>現在のステータス: ${request.status_description}</label>
			</div>
		</div>
		
		<select name="new_status" id="new-status">
			<#list listStatus as status>
				<#if status?? && status.status_type == request.status>
					<option value="${status.status_type}" selected="selected">${status.description}</option>
				<#else>
					<option value="${status.status_type}">${status.description}</option>
				</#if>	
			</#list>
		</select>
		<a href="#" class="button-link" onclick="confirmChange(${request.relation_request_id}); return false;">変更する</a>
		
		<div class="form-line">
			<div class="form-col-right">
				<input type="text" id="assign-user-name" name="assign_user_name" maxlength="50" 
					<#if request?? && request.assign_user_name??>value= "${request.assign_user_name}"</#if> />
				</input>
			</div>
			<div class="form-col-left">
				<label for="assign_user_name">HRS担当者</label>
			</div>	
		</div>
	</div>
	<#-- ------------------------------------------------->
	<div id="request-form-center" class="form">
		<div class="form-line">
			<div class="form-col-right">
				<label>${request.company_id!""}</label>
			</div>
			<div class="form-col-left">
				<label for="company_id">御社ID</label>
			</div>	
		</div>
		
		<div class="form-line">
			<div class="form-col-right">
				<label>${request.company_name!""}</label>
			</div>
			<div class="form-col-left">
				<label for="company_name">御社名</label>
			</div>	
		</div>
		
		<div class="form-line">
			<div class="form-col-right">
				<label>${request.requester_name!""}</label>
			</div>
			<div class="form-col-left">
				<label for="request_name">ご担当者名</label>
			</div>	
		</div>
		
		<div class="form-line">
			<div class="form-col-right">
				<label>${request.requester_mail!""}</label>
			</div>
			<div class="form-col-left">
				<label for="request_mail">ご連絡先メールアドレス</label>
			</div>	
		</div>
		
		<div class="form-line">
			<div class="form-col-right">
				<label>${request.requester_phone!""}</label>
			</div>
			<div class="form-col-left">
				<label for="request_phone">ご連絡先電話番号</label>
			</div>	
		</div>
		
	</div>
	
	<#-- ------------------------------------------------->
	<div id="request-form-bottom" class="form">
		<div class="form-line">
			<div class="form-col-right">
				<label>${request.media_name!""}</label>
			</div>
			<div class="form-col-left">
				<label for="media_name">媒体</label>
			</div>	
		</div>
		
		<div class="form-line">
			<div class="form-col-right">
				<label>${request.url!""}</label>
			</div>
			<div class="form-col-left">
				<label for="url">管理画面URL</label>
			</div>	
		</div>
		
		<div class="form-line">
			<div class="form-col-right">
				<label>${request.login_id_1!""}</label>
			</div>
			<div class="form-col-left">
				<label for="login_id_1">ログインID1</label>
			</div>	
		</div>
		
		<div class="form-line">
			<div class="form-col-right">
				<label>${request.login_id_2!""}</label>
			</div>
			<div class="form-col-left">
				<label for="login_id_2">ログインID2</label>
			</div>	
		</div>
		
		<div class="form-line">
			<div class="form-col-right">
				<label>${request.login_password_1!""}</label>
			</div>
			<div class="form-col-left">
				<label for="login_password_1">パスワード1</label>
			</div>	
		</div>
		
	</div>
	
</div>

<script type="text/javascript">
	me.dapps.global['url.context'] = '${formatter.url("")}';
	me.dapps.global['url.confirm_change'] = '${formatter.url("/request/confirm_change/?ajax")}';
</script>				
</#escape>
</#compress>
