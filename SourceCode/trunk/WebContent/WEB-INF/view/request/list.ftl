<#compress>
<#escape x as x?html>
<div id="request-list-page" class="page">
	<#if info??>
		<div id="info_last_view_request">
			<span>${info}</span>
		</div>
	</#if>	
    <div id="search-form">
        <form id="search-relation-request-form">
            <div id="status_search_form">
                <label class="label_search">ステータス検索</label>
                <select id="status_select_option" class="combobox_status_search">
                    <option value=""></option>
                 <#list listStatus as status>
                    <option value="${status.status_type}">${status.description}</option>
                 </#list>
                </select>
            </div>
            <div class="free_text_search_form">
                <label class="label_search">フリーワード検索</label>
                <input type="text" id="input_text_search" placeholder="企業ID、企業名、担当者名、E-Mail、媒体名、依頼ID、HRS担当で検索"/>
                <input type="submit" id="button_search" class="button orange" value="検索"/>
            </div>
        </form>
    </div>
    <table id="request-ajax-table" cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th class="column_status">ステータス</th>
                <th class="column_registered_time">登録日時</th>
                <th class="column_company">(企業ID) 企業名</th>
                <th class="column_tantoshaname">担当者名</th>
                <th class="column_email">E-Mail</th>
                <th class="column_media_name">媒体名</th>
                <th class="column_request_id">依頼ID</th>
                <th class="column_hrs_tantosha"> HRS担当</th>
            </tr>
        </thead>
    </table>
</div>
<dapps-locale-text>ERR001</dapps-locale-text>
<script type="text/javascript">
    me.dapps.global['url.request_list'] = '${formatter.url("/request/ajax_list/?ajax")}';
    me.dapps.global['data_binding'] = ['status', 'created_at',,,,,,,];
    me.dapps.global['url.request_redirect'] = '${formatter.url("/request/view_request/{request_id}/")}';
    me.dapps.global['url.ajax_call'] = '${formatter.url("/request/redirect/")}';
</script>
</#escape>
</#compress>