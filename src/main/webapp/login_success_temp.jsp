
<!DOCTYPE HTML><html lang='en' dir='ltr'><meta charset="utf-8" /><meta name="robots" content="noindex,nofollow" /><meta http-equiv="X-UA-Compatible" content="IE=Edge"><style>html{display: none;}</style><link rel="icon" href="favicon.ico" type="image/x-icon" /><link rel="shortcut icon" href="favicon.ico" type="image/x-icon" /><link rel="stylesheet" type="text/css" href="phpmyadmin.css.php?server=1&amp;token=741e57ba2ac3064a676f9629e78c1581&amp;nocache=5555975768ltr" /><link rel="stylesheet" type="text/css" href="./themes/pmahomme/jquery/jquery-ui-1.9.2.custom.css" /><title>localhost / localhost | phpMyAdmin 4.0.10deb1</title><script type='text/javascript' src='js/get_scripts.js.php?scripts[]=jquery/jquery-1.8.3.min.js&scripts[]=ajax.js&scripts[]=keyhandler.js&scripts[]=jquery/jquery-ui-1.9.2.custom.min.js&scripts[]=jquery/jquery.sprintf.js&scripts[]=jquery/jquery.cookie.js&scripts[]=jquery/jquery.mousewheel.js&scripts[]=jquery/jquery.event.drag-2.2.js&scripts[]=jquery/jquery-ui-timepicker-addon.js&scripts[]=jquery/jquery.ba-hashchange-1.3.js&scripts[]=jquery/jquery.debounce-1.0.5.js&scripts[]=jquery/jquery.menuResizer-1.0.js&scripts[]=cross_framing_protection.js&scripts[]=rte.js&scripts[]=functions.js&scripts[]=navigation.js&scripts[]=indexes.js&scripts[]=common.js&scripts[]=codemirror/lib/codemirror.js&scripts[]=codemirror/mode/mysql/mysql.js'></script><script type='text/javascript' src='js/messages.php?lang=en&amp;db=&amp;token=741e57ba2ac3064a676f9629e78c1581'></script><script type='text/javascript' src='js/get_image.js.php?theme=pmahomme'></script><script type="text/javascript">// <![CDATA[
PMA_commonParams.setAll({common_query:"token=741e57ba2ac3064a676f9629e78c1581",opendb_url:"db_structure.php",safari_browser:"0",querywindow_height:"400",querywindow_width:"600",collation_connection:"utf8_general_ci",lang:"en",server:"1",table:"",db:"",token:"741e57ba2ac3064a676f9629e78c1581",text_dir:"ltr",pma_absolute_uri:"http://localhost/phpmyadmin/",pma_text_default_tab:"Browse",pma_text_left_default_tab:"Structure",confirm:"1"});
AJAX.scriptHandler.add("jquery/jquery-1.8.3.min.js",0).add("ajax.js",0).add("keyhandler.js",1).add("jquery/jquery-ui-1.9.2.custom.min.js",0).add("jquery/jquery.sprintf.js",0).add("jquery/jquery.cookie.js",0).add("jquery/jquery.mousewheel.js",0).add("jquery/jquery.event.drag-2.2.js",0).add("jquery/jquery-ui-timepicker-addon.js",0).add("jquery/jquery.ba-hashchange-1.3.js",0).add("jquery/jquery.debounce-1.0.5.js",0).add("jquery/jquery.menuResizer-1.0.js",0).add("cross_framing_protection.js",0).add("rte.js",1).add("messages.php?lang=en&amp;db=&amp;token=741e57ba2ac3064a676f9629e78c1581",0).add("get_image.js.php?theme=pmahomme",0).add("functions.js",1).add("navigation.js",0).add("indexes.js",1).add("common.js",1).add("codemirror/lib/codemirror.js",0).add("codemirror/mode/mysql/mysql.js",0);
$(function() {AJAX.fireOnload("keyhandler.js");AJAX.fireOnload("rte.js");AJAX.fireOnload("functions.js");AJAX.fireOnload("indexes.js");AJAX.fireOnload("common.js");});
// ]]></script></head><body><div id="pma_navigation"><div id="pma_navigation_resizer"></div><div id="pma_navigation_collapser"></div><div id="pma_navigation_content"><div id="pma_navigation_header"><a class="hide navigation_url" href="navigation.php?ajax_request=1&amp;token=741e57ba2ac3064a676f9629e78c1581"></a><!-- LOGO START --><div id="pmalogo">    <a href="index.php?token=741e57ba2ac3064a676f9629e78c1581"><img src="./themes/pmahomme/img/logo_left.png" alt="phpMyAdmin" id="imgpmalogo" /></a></div><!-- LOGO END --><!-- LINKS START --><div id="leftframelinks"><a href="index.php?token=741e57ba2ac3064a676f9629e78c1581" title="Home"><img src="themes/dot.gif" title="Home" alt="Home" class="icon ic_b_home" /></a><a href="index.php?token=741e57ba2ac3064a676f9629e78c1581&amp;old_usr=root" class="disableAjax" title="Log out"><img src="themes/dot.gif" title="Log out" alt="Log out" class="icon ic_s_loggoff" /></a><a href="querywindow.php?token=741e57ba2ac3064a676f9629e78c1581&amp;no_js=true" id="pma_open_querywindow" class="disableAjax" title="Query window"><img src="themes/dot.gif" title="Query window" alt="Query window" class="icon ic_b_selboard" /></a><a href="./url.php?url=http%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Findex.html&amp;token=741e57ba2ac3064a676f9629e78c1581" target="documentation" title="phpMyAdmin documentation"><img src="themes/dot.gif" title="phpMyAdmin documentation" alt="phpMyAdmin documentation" class="icon ic_b_docs" /></a><a href="./url.php?url=http%3A%2F%2Fdev.mysql.com%2Fdoc%2Frefman%2F5.5%2Fen%2Findex.html&amp;token=741e57ba2ac3064a676f9629e78c1581" target="mysql_doc"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_sqlhelp" /></a><a href="#" id="pma_navigation_reload" title="Reload navigation frame"><img src="themes/dot.gif" title="Reload navigation frame" alt="Reload navigation frame" class="icon ic_s_reload" /></a></div><!-- LINKS ENDS --><!-- RECENT START --><div id="recentTableList"><form method="post" action="sql.php"><input type="hidden" name="db" value="" /><input type="hidden" name="table" value="" /><input type="hidden" name="server" value="1" /><input type="hidden" name="token" value="741e57ba2ac3064a676f9629e78c1581" /><select name="selected_recent_table" id="recentTable"><option value="">(Recent tables) ...</option><option value="">There are no recent tables</option></select></form></div><!-- RECENT END --><img src="./themes/pmahomme/img/ajax_clock_small.gif" title="Loading" alt="Loading" style="visibility: hidden;" class="throbber" /></div><div id="pma_navigation_tree" class="list_container highlight"><div id='pma_navigation_tree_content'><ul><li class='first database'><div class='block'><i class='first'></i><b></b><a class='expander' href='#'><span class='hide aPath'>cm9vdA==.aW5mb3JtYXRpb25fc2NoZW1h</span><span class='hide vPath'>cm9vdA==.aW5mb3JtYXRpb25fc2NoZW1h</span><span class='hide pos'>0</span><img src="themes/dot.gif" title="Expand/Collapse" alt="Expand/Collapse" class="icon ic_b_plus" /></a></div><div class='block'><a href='db_operations.php?server=1&amp;db=information_schema&amp;token=741e57ba2ac3064a676f9629e78c1581'><img src="themes/dot.gif" title="Database operations" alt="Database operations" class="icon ic_s_db" /></a></div><a href='db_structure.php?server=1&amp;db=information_schema&amp;token=741e57ba2ac3064a676f9629e78c1581'>information_schema</a></li><li class='database'><div class='block'><i></i><b></b><a class='expander' href='#'><span class='hide aPath'>cm9vdA==.bXlzcWw=</span><span class='hide vPath'>cm9vdA==.bXlzcWw=</span><span class='hide pos'>0</span><img src="themes/dot.gif" title="Expand/Collapse" alt="Expand/Collapse" class="icon ic_b_plus" /></a></div><div class='block'><a href='db_operations.php?server=1&amp;db=mysql&amp;token=741e57ba2ac3064a676f9629e78c1581'><img src="themes/dot.gif" title="Database operations" alt="Database operations" class="icon ic_s_db" /></a></div><a href='db_structure.php?server=1&amp;db=mysql&amp;token=741e57ba2ac3064a676f9629e78c1581'>mysql</a></li><li class='last database'><div class='block'><i></i><a class='expander' href='#'><span class='hide aPath'>cm9vdA==.cGVyZm9ybWFuY2Vfc2NoZW1h</span><span class='hide vPath'>cm9vdA==.cGVyZm9ybWFuY2Vfc2NoZW1h</span><span class='hide pos'>0</span><img src="themes/dot.gif" title="Expand/Collapse" alt="Expand/Collapse" class="icon ic_b_plus" /></a></div><div class='block'><a href='db_operations.php?server=1&amp;db=performance_schema&amp;token=741e57ba2ac3064a676f9629e78c1581'><img src="themes/dot.gif" title="Database operations" alt="Database operations" class="icon ic_s_db" /></a></div><a href='db_structure.php?server=1&amp;db=performance_schema&amp;token=741e57ba2ac3064a676f9629e78c1581'>performance_schema</a></li></ul></div></div></div></div><noscript><div class="error"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_error" /> Javascript must be enabled past this point</div></noscript><div id='floating_menubar'></div><div id='serverinfo'><img src="themes/dot.gif" title="" alt="" class="icon ic_s_host item" /><a href="index.php?token=741e57ba2ac3064a676f9629e78c1581" class="item">Server: localhost</a><div class="clearfloat"></div></div><div id="topmenucontainer" class="menucontainer"><ul id="topmenu"  class="resizable-menu"><li><a class="tab" href="server_databases.php?db=&amp;token=741e57ba2ac3064a676f9629e78c1581" ><img src="themes/dot.gif" title="Databases" alt="Databases" class="icon ic_s_db" /> Databases</a></li><li><a class="tab" href="server_sql.php?db=&amp;token=741e57ba2ac3064a676f9629e78c1581" ><img src="themes/dot.gif" title="SQL" alt="SQL" class="icon ic_b_sql" /> SQL</a></li><li><a class="tab" href="server_status.php?db=&amp;token=741e57ba2ac3064a676f9629e78c1581" ><img src="themes/dot.gif" title="Status" alt="Status" class="icon ic_s_status" /> Status</a></li><li><a class="tab" href="server_privileges.php?db=&amp;token=741e57ba2ac3064a676f9629e78c1581" ><img src="themes/dot.gif" title="Users" alt="Users" class="icon ic_s_rights" /> Users</a></li><li><a class="tab" href="server_export.php?db=&amp;token=741e57ba2ac3064a676f9629e78c1581" ><img src="themes/dot.gif" title="Export" alt="Export" class="icon ic_b_export" /> Export</a></li><li><a class="tab" href="server_import.php?db=&amp;token=741e57ba2ac3064a676f9629e78c1581" ><img src="themes/dot.gif" title="Import" alt="Import" class="icon ic_b_import" /> Import</a></li><li><a class="tab" href="prefs_manage.php?db=&amp;token=741e57ba2ac3064a676f9629e78c1581" ><img src="themes/dot.gif" title="Settings" alt="Settings" class="icon ic_b_tblops" /> Settings</a></li><li><a class="tab" href="server_replication.php?db=&amp;token=741e57ba2ac3064a676f9629e78c1581" ><img src="themes/dot.gif" title="Replication" alt="Replication" class="icon ic_s_replication" /> Replication</a></li><li><a class="tab" href="server_variables.php?db=&amp;token=741e57ba2ac3064a676f9629e78c1581" ><img src="themes/dot.gif" title="Variables" alt="Variables" class="icon ic_s_vars" /> Variables</a></li><li><a class="tab" href="server_collations.php?db=&amp;token=741e57ba2ac3064a676f9629e78c1581" ><img src="themes/dot.gif" title="Charsets" alt="Charsets" class="icon ic_s_asci" /> Charsets</a></li><li><a class="tab" href="server_engines.php?db=&amp;token=741e57ba2ac3064a676f9629e78c1581" ><img src="themes/dot.gif" title="Engines" alt="Engines" class="icon ic_b_engine" /> Engines</a></li></ul>
<div class="clearfloat"></div></div>
<a id="goto_pagetop" href="#" title="Click on the bar to scroll to top of page"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_top" /></a><div id="page_content"><div id="maincontainer">
<div id="main_pane_left"><div class="group"><h2>General Settings</h2><ul><li id="li_change_password" class="no_bullets"><a href="user_password.php?token=741e57ba2ac3064a676f9629e78c1581" id="change_password_anchor" class="ajax"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_passwd" /> Change password</a>
</li>    <li id="li_select_mysql_collation" class="no_bullets" >        <form method="post" action="index.php">
<input type="hidden" name="token" value="741e57ba2ac3064a676f9629e78c1581" />            <label for="select_collation_connection">
    <img src="themes/dot.gif" title="" alt="" class="icon ic_s_asci" /> Server connection collation
    <a href="./url.php?url=http%3A%2F%2Fdev.mysql.com%2Fdoc%2Frefman%2F5.5%2Fen%2Fcharset-connection.html&amp;token=741e57ba2ac3064a676f9629e78c1581" target="mysql_doc"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>:
</label>
<select lang="en" dir="ltr" name="collation_connection" id="select_collation_connection" class="autosubmit">
<option value="">Collation</option>
<option value=""></option>
<optgroup label="armscii8" title="ARMSCII-8 Armenian">
    <option value="armscii8_bin" title="Armenian, Binary">armscii8_bin</option>
    <option value="armscii8_general_ci" title="Armenian, case-insensitive">armscii8_general_ci</option>
</optgroup>
<optgroup label="ascii" title="US ASCII">
    <option value="ascii_bin" title="West European (multilingual), Binary">ascii_bin</option>
    <option value="ascii_general_ci" title="West European (multilingual), case-insensitive">ascii_general_ci</option>
</optgroup>
<optgroup label="big5" title="Big5 Traditional Chinese">
    <option value="big5_bin" title="Traditional Chinese, Binary">big5_bin</option>
    <option value="big5_chinese_ci" title="Traditional Chinese, case-insensitive">big5_chinese_ci</option>
</optgroup>
<optgroup label="binary" title="Binary pseudo charset">
    <option value="binary" title="Binary">binary</option>
</optgroup>
<optgroup label="cp1250" title="Windows Central European">
    <option value="cp1250_bin" title="Central European (multilingual), Binary">cp1250_bin</option>
    <option value="cp1250_croatian_ci" title="Croatian, case-insensitive">cp1250_croatian_ci</option>
    <option value="cp1250_czech_cs" title="Czech, case-sensitive">cp1250_czech_cs</option>
    <option value="cp1250_general_ci" title="Central European (multilingual), case-insensitive">cp1250_general_ci</option>
    <option value="cp1250_polish_ci" title="Polish, case-insensitive">cp1250_polish_ci</option>
</optgroup>
<optgroup label="cp1251" title="Windows Cyrillic">
    <option value="cp1251_bin" title="Cyrillic (multilingual), Binary">cp1251_bin</option>
    <option value="cp1251_bulgarian_ci" title="Bulgarian, case-insensitive">cp1251_bulgarian_ci</option>
    <option value="cp1251_general_ci" title="Cyrillic (multilingual), case-insensitive">cp1251_general_ci</option>
    <option value="cp1251_general_cs" title="Cyrillic (multilingual), case-sensitive">cp1251_general_cs</option>
    <option value="cp1251_ukrainian_ci" title="Ukrainian, case-insensitive">cp1251_ukrainian_ci</option>
</optgroup>
<optgroup label="cp1256" title="Windows Arabic">
    <option value="cp1256_bin" title="Arabic, Binary">cp1256_bin</option>
    <option value="cp1256_general_ci" title="Arabic, case-insensitive">cp1256_general_ci</option>
</optgroup>
<optgroup label="cp1257" title="Windows Baltic">
    <option value="cp1257_bin" title="Baltic (multilingual), Binary">cp1257_bin</option>
    <option value="cp1257_general_ci" title="Baltic (multilingual), case-insensitive">cp1257_general_ci</option>
    <option value="cp1257_lithuanian_ci" title="Lithuanian, case-insensitive">cp1257_lithuanian_ci</option>
</optgroup>
<optgroup label="cp850" title="DOS West European">
    <option value="cp850_bin" title="West European (multilingual), Binary">cp850_bin</option>
    <option value="cp850_general_ci" title="West European (multilingual), case-insensitive">cp850_general_ci</option>
</optgroup>
<optgroup label="cp852" title="DOS Central European">
    <option value="cp852_bin" title="Central European (multilingual), Binary">cp852_bin</option>
    <option value="cp852_general_ci" title="Central European (multilingual), case-insensitive">cp852_general_ci</option>
</optgroup>
<optgroup label="cp866" title="DOS Russian">
    <option value="cp866_bin" title="Russian, Binary">cp866_bin</option>
    <option value="cp866_general_ci" title="Russian, case-insensitive">cp866_general_ci</option>
</optgroup>
<optgroup label="cp932" title="SJIS for Windows Japanese">
    <option value="cp932_bin" title="Japanese, Binary">cp932_bin</option>
    <option value="cp932_japanese_ci" title="Japanese, case-insensitive">cp932_japanese_ci</option>
</optgroup>
<optgroup label="dec8" title="DEC West European">
    <option value="dec8_bin" title="West European (multilingual), Binary">dec8_bin</option>
    <option value="dec8_swedish_ci" title="Swedish, case-insensitive">dec8_swedish_ci</option>
</optgroup>
<optgroup label="eucjpms" title="UJIS for Windows Japanese">
    <option value="eucjpms_bin" title="Japanese, Binary">eucjpms_bin</option>
    <option value="eucjpms_japanese_ci" title="Japanese, case-insensitive">eucjpms_japanese_ci</option>
</optgroup>
<optgroup label="euckr" title="EUC-KR Korean">
    <option value="euckr_bin" title="Korean, Binary">euckr_bin</option>
    <option value="euckr_korean_ci" title="Korean, case-insensitive">euckr_korean_ci</option>
</optgroup>
<optgroup label="gb2312" title="GB2312 Simplified Chinese">
    <option value="gb2312_bin" title="Simplified Chinese, Binary">gb2312_bin</option>
    <option value="gb2312_chinese_ci" title="Simplified Chinese, case-insensitive">gb2312_chinese_ci</option>
</optgroup>
<optgroup label="gbk" title="GBK Simplified Chinese">
    <option value="gbk_bin" title="Simplified Chinese, Binary">gbk_bin</option>
    <option value="gbk_chinese_ci" title="Simplified Chinese, case-insensitive">gbk_chinese_ci</option>
</optgroup>
<optgroup label="geostd8" title="GEOSTD8 Georgian">
    <option value="geostd8_bin" title="Georgian, Binary">geostd8_bin</option>
    <option value="geostd8_general_ci" title="Georgian, case-insensitive">geostd8_general_ci</option>
</optgroup>
<optgroup label="greek" title="ISO 8859-7 Greek">
    <option value="greek_bin" title="Greek, Binary">greek_bin</option>
    <option value="greek_general_ci" title="Greek, case-insensitive">greek_general_ci</option>
</optgroup>
<optgroup label="hebrew" title="ISO 8859-8 Hebrew">
    <option value="hebrew_bin" title="Hebrew, Binary">hebrew_bin</option>
    <option value="hebrew_general_ci" title="Hebrew, case-insensitive">hebrew_general_ci</option>
</optgroup>
<optgroup label="hp8" title="HP West European">
    <option value="hp8_bin" title="West European (multilingual), Binary">hp8_bin</option>
    <option value="hp8_english_ci" title="English, case-insensitive">hp8_english_ci</option>
</optgroup>
<optgroup label="keybcs2" title="DOS Kamenicky Czech-Slovak">
    <option value="keybcs2_bin" title="Czech-Slovak, Binary">keybcs2_bin</option>
    <option value="keybcs2_general_ci" title="Czech-Slovak, case-insensitive">keybcs2_general_ci</option>
</optgroup>
<optgroup label="koi8r" title="KOI8-R Relcom Russian">
    <option value="koi8r_bin" title="Russian, Binary">koi8r_bin</option>
    <option value="koi8r_general_ci" title="Russian, case-insensitive">koi8r_general_ci</option>
</optgroup>
<optgroup label="koi8u" title="KOI8-U Ukrainian">
    <option value="koi8u_bin" title="Ukrainian, Binary">koi8u_bin</option>
    <option value="koi8u_general_ci" title="Ukrainian, case-insensitive">koi8u_general_ci</option>
</optgroup>
<optgroup label="latin1" title="cp1252 West European">
    <option value="latin1_bin" title="West European (multilingual), Binary">latin1_bin</option>
    <option value="latin1_danish_ci" title="Danish, case-insensitive">latin1_danish_ci</option>
    <option value="latin1_general_ci" title="West European (multilingual), case-insensitive">latin1_general_ci</option>
    <option value="latin1_general_cs" title="West European (multilingual), case-sensitive">latin1_general_cs</option>
    <option value="latin1_german1_ci" title="German (dictionary), case-insensitive">latin1_german1_ci</option>
    <option value="latin1_german2_ci" title="German (phone book), case-insensitive">latin1_german2_ci</option>
    <option value="latin1_spanish_ci" title="Spanish, case-insensitive">latin1_spanish_ci</option>
    <option value="latin1_swedish_ci" title="Swedish, case-insensitive">latin1_swedish_ci</option>
</optgroup>
<optgroup label="latin2" title="ISO 8859-2 Central European">
    <option value="latin2_bin" title="Central European (multilingual), Binary">latin2_bin</option>
    <option value="latin2_croatian_ci" title="Croatian, case-insensitive">latin2_croatian_ci</option>
    <option value="latin2_czech_cs" title="Czech, case-sensitive">latin2_czech_cs</option>
    <option value="latin2_general_ci" title="Central European (multilingual), case-insensitive">latin2_general_ci</option>
    <option value="latin2_hungarian_ci" title="Hungarian, case-insensitive">latin2_hungarian_ci</option>
</optgroup>
<optgroup label="latin5" title="ISO 8859-9 Turkish">
    <option value="latin5_bin" title="Turkish, Binary">latin5_bin</option>
    <option value="latin5_turkish_ci" title="Turkish, case-insensitive">latin5_turkish_ci</option>
</optgroup>
<optgroup label="latin7" title="ISO 8859-13 Baltic">
    <option value="latin7_bin" title="Baltic (multilingual), Binary">latin7_bin</option>
    <option value="latin7_estonian_cs" title="Estonian, case-sensitive">latin7_estonian_cs</option>
    <option value="latin7_general_ci" title="Baltic (multilingual), case-insensitive">latin7_general_ci</option>
    <option value="latin7_general_cs" title="Baltic (multilingual), case-sensitive">latin7_general_cs</option>
</optgroup>
<optgroup label="macce" title="Mac Central European">
    <option value="macce_bin" title="Central European (multilingual), Binary">macce_bin</option>
    <option value="macce_general_ci" title="Central European (multilingual), case-insensitive">macce_general_ci</option>
</optgroup>
<optgroup label="macroman" title="Mac West European">
    <option value="macroman_bin" title="West European (multilingual), Binary">macroman_bin</option>
    <option value="macroman_general_ci" title="West European (multilingual), case-insensitive">macroman_general_ci</option>
</optgroup>
<optgroup label="sjis" title="Shift-JIS Japanese">
    <option value="sjis_bin" title="Japanese, Binary">sjis_bin</option>
    <option value="sjis_japanese_ci" title="Japanese, case-insensitive">sjis_japanese_ci</option>
</optgroup>
<optgroup label="swe7" title="7bit Swedish">
    <option value="swe7_bin" title="Swedish, Binary">swe7_bin</option>
    <option value="swe7_swedish_ci" title="Swedish, case-insensitive">swe7_swedish_ci</option>
</optgroup>
<optgroup label="tis620" title="TIS620 Thai">
    <option value="tis620_bin" title="Thai, Binary">tis620_bin</option>
    <option value="tis620_thai_ci" title="Thai, case-insensitive">tis620_thai_ci</option>
</optgroup>
<optgroup label="ucs2" title="UCS-2 Unicode">
    <option value="ucs2_bin" title="Unicode (multilingual), Binary">ucs2_bin</option>
    <option value="ucs2_czech_ci" title="Czech, case-insensitive">ucs2_czech_ci</option>
    <option value="ucs2_danish_ci" title="Danish, case-insensitive">ucs2_danish_ci</option>
    <option value="ucs2_esperanto_ci" title="Esperanto, case-insensitive">ucs2_esperanto_ci</option>
    <option value="ucs2_estonian_ci" title="Estonian, case-insensitive">ucs2_estonian_ci</option>
    <option value="ucs2_general_ci" title="Unicode (multilingual), case-insensitive">ucs2_general_ci</option>
    <option value="ucs2_general_mysql500_ci" title="Unicode (multilingual)">ucs2_general_mysql500_ci</option>
    <option value="ucs2_hungarian_ci" title="Hungarian, case-insensitive">ucs2_hungarian_ci</option>
    <option value="ucs2_icelandic_ci" title="Icelandic, case-insensitive">ucs2_icelandic_ci</option>
    <option value="ucs2_latvian_ci" title="Latvian, case-insensitive">ucs2_latvian_ci</option>
    <option value="ucs2_lithuanian_ci" title="Lithuanian, case-insensitive">ucs2_lithuanian_ci</option>
    <option value="ucs2_persian_ci" title="Persian, case-insensitive">ucs2_persian_ci</option>
    <option value="ucs2_polish_ci" title="Polish, case-insensitive">ucs2_polish_ci</option>
    <option value="ucs2_roman_ci" title="West European, case-insensitive">ucs2_roman_ci</option>
    <option value="ucs2_romanian_ci" title="Romanian, case-insensitive">ucs2_romanian_ci</option>
    <option value="ucs2_sinhala_ci" title="unknown, case-insensitive">ucs2_sinhala_ci</option>
    <option value="ucs2_slovak_ci" title="Slovak, case-insensitive">ucs2_slovak_ci</option>
    <option value="ucs2_slovenian_ci" title="Slovenian, case-insensitive">ucs2_slovenian_ci</option>
    <option value="ucs2_spanish2_ci" title="Traditional Spanish, case-insensitive">ucs2_spanish2_ci</option>
    <option value="ucs2_spanish_ci" title="Spanish, case-insensitive">ucs2_spanish_ci</option>
    <option value="ucs2_swedish_ci" title="Swedish, case-insensitive">ucs2_swedish_ci</option>
    <option value="ucs2_turkish_ci" title="Turkish, case-insensitive">ucs2_turkish_ci</option>
    <option value="ucs2_unicode_ci" title="Unicode (multilingual), case-insensitive">ucs2_unicode_ci</option>
</optgroup>
<optgroup label="ujis" title="EUC-JP Japanese">
    <option value="ujis_bin" title="Japanese, Binary">ujis_bin</option>
    <option value="ujis_japanese_ci" title="Japanese, case-insensitive">ujis_japanese_ci</option>
</optgroup>
<optgroup label="utf16" title="UTF-16 Unicode">
    <option value="utf16_bin" title="unknown, Binary">utf16_bin</option>
    <option value="utf16_czech_ci" title="Czech, case-insensitive">utf16_czech_ci</option>
    <option value="utf16_danish_ci" title="Danish, case-insensitive">utf16_danish_ci</option>
    <option value="utf16_esperanto_ci" title="Esperanto, case-insensitive">utf16_esperanto_ci</option>
    <option value="utf16_estonian_ci" title="Estonian, case-insensitive">utf16_estonian_ci</option>
    <option value="utf16_general_ci" title="unknown, case-insensitive">utf16_general_ci</option>
    <option value="utf16_hungarian_ci" title="Hungarian, case-insensitive">utf16_hungarian_ci</option>
    <option value="utf16_icelandic_ci" title="Icelandic, case-insensitive">utf16_icelandic_ci</option>
    <option value="utf16_latvian_ci" title="Latvian, case-insensitive">utf16_latvian_ci</option>
    <option value="utf16_lithuanian_ci" title="Lithuanian, case-insensitive">utf16_lithuanian_ci</option>
    <option value="utf16_persian_ci" title="Persian, case-insensitive">utf16_persian_ci</option>
    <option value="utf16_polish_ci" title="Polish, case-insensitive">utf16_polish_ci</option>
    <option value="utf16_roman_ci" title="West European, case-insensitive">utf16_roman_ci</option>
    <option value="utf16_romanian_ci" title="Romanian, case-insensitive">utf16_romanian_ci</option>
    <option value="utf16_sinhala_ci" title="unknown, case-insensitive">utf16_sinhala_ci</option>
    <option value="utf16_slovak_ci" title="Slovak, case-insensitive">utf16_slovak_ci</option>
    <option value="utf16_slovenian_ci" title="Slovenian, case-insensitive">utf16_slovenian_ci</option>
    <option value="utf16_spanish2_ci" title="Traditional Spanish, case-insensitive">utf16_spanish2_ci</option>
    <option value="utf16_spanish_ci" title="Spanish, case-insensitive">utf16_spanish_ci</option>
    <option value="utf16_swedish_ci" title="Swedish, case-insensitive">utf16_swedish_ci</option>
    <option value="utf16_turkish_ci" title="Turkish, case-insensitive">utf16_turkish_ci</option>
    <option value="utf16_unicode_ci" title="Unicode (multilingual), case-insensitive">utf16_unicode_ci</option>
</optgroup>
<optgroup label="utf32" title="UTF-32 Unicode">
    <option value="utf32_bin" title="unknown, Binary">utf32_bin</option>
    <option value="utf32_czech_ci" title="Czech, case-insensitive">utf32_czech_ci</option>
    <option value="utf32_danish_ci" title="Danish, case-insensitive">utf32_danish_ci</option>
    <option value="utf32_esperanto_ci" title="Esperanto, case-insensitive">utf32_esperanto_ci</option>
    <option value="utf32_estonian_ci" title="Estonian, case-insensitive">utf32_estonian_ci</option>
    <option value="utf32_general_ci" title="unknown, case-insensitive">utf32_general_ci</option>
    <option value="utf32_hungarian_ci" title="Hungarian, case-insensitive">utf32_hungarian_ci</option>
    <option value="utf32_icelandic_ci" title="Icelandic, case-insensitive">utf32_icelandic_ci</option>
    <option value="utf32_latvian_ci" title="Latvian, case-insensitive">utf32_latvian_ci</option>
    <option value="utf32_lithuanian_ci" title="Lithuanian, case-insensitive">utf32_lithuanian_ci</option>
    <option value="utf32_persian_ci" title="Persian, case-insensitive">utf32_persian_ci</option>
    <option value="utf32_polish_ci" title="Polish, case-insensitive">utf32_polish_ci</option>
    <option value="utf32_roman_ci" title="West European, case-insensitive">utf32_roman_ci</option>
    <option value="utf32_romanian_ci" title="Romanian, case-insensitive">utf32_romanian_ci</option>
    <option value="utf32_sinhala_ci" title="unknown, case-insensitive">utf32_sinhala_ci</option>
    <option value="utf32_slovak_ci" title="Slovak, case-insensitive">utf32_slovak_ci</option>
    <option value="utf32_slovenian_ci" title="Slovenian, case-insensitive">utf32_slovenian_ci</option>
    <option value="utf32_spanish2_ci" title="Traditional Spanish, case-insensitive">utf32_spanish2_ci</option>
    <option value="utf32_spanish_ci" title="Spanish, case-insensitive">utf32_spanish_ci</option>
    <option value="utf32_swedish_ci" title="Swedish, case-insensitive">utf32_swedish_ci</option>
    <option value="utf32_turkish_ci" title="Turkish, case-insensitive">utf32_turkish_ci</option>
    <option value="utf32_unicode_ci" title="Unicode (multilingual), case-insensitive">utf32_unicode_ci</option>
</optgroup>
<optgroup label="utf8" title="UTF-8 Unicode">
    <option value="utf8_bin" title="Unicode (multilingual), Binary">utf8_bin</option>
    <option value="utf8_czech_ci" title="Czech, case-insensitive">utf8_czech_ci</option>
    <option value="utf8_danish_ci" title="Danish, case-insensitive">utf8_danish_ci</option>
    <option value="utf8_esperanto_ci" title="Esperanto, case-insensitive">utf8_esperanto_ci</option>
    <option value="utf8_estonian_ci" title="Estonian, case-insensitive">utf8_estonian_ci</option>
    <option value="utf8_general_ci" title="Unicode (multilingual), case-insensitive" selected="selected">utf8_general_ci</option>
    <option value="utf8_general_mysql500_ci" title="Unicode (multilingual)">utf8_general_mysql500_ci</option>
    <option value="utf8_hungarian_ci" title="Hungarian, case-insensitive">utf8_hungarian_ci</option>
    <option value="utf8_icelandic_ci" title="Icelandic, case-insensitive">utf8_icelandic_ci</option>
    <option value="utf8_latvian_ci" title="Latvian, case-insensitive">utf8_latvian_ci</option>
    <option value="utf8_lithuanian_ci" title="Lithuanian, case-insensitive">utf8_lithuanian_ci</option>
    <option value="utf8_persian_ci" title="Persian, case-insensitive">utf8_persian_ci</option>
    <option value="utf8_polish_ci" title="Polish, case-insensitive">utf8_polish_ci</option>
    <option value="utf8_roman_ci" title="West European, case-insensitive">utf8_roman_ci</option>
    <option value="utf8_romanian_ci" title="Romanian, case-insensitive">utf8_romanian_ci</option>
    <option value="utf8_sinhala_ci" title="unknown, case-insensitive">utf8_sinhala_ci</option>
    <option value="utf8_slovak_ci" title="Slovak, case-insensitive">utf8_slovak_ci</option>
    <option value="utf8_slovenian_ci" title="Slovenian, case-insensitive">utf8_slovenian_ci</option>
    <option value="utf8_spanish2_ci" title="Traditional Spanish, case-insensitive">utf8_spanish2_ci</option>
    <option value="utf8_spanish_ci" title="Spanish, case-insensitive">utf8_spanish_ci</option>
    <option value="utf8_swedish_ci" title="Swedish, case-insensitive">utf8_swedish_ci</option>
    <option value="utf8_turkish_ci" title="Turkish, case-insensitive">utf8_turkish_ci</option>
    <option value="utf8_unicode_ci" title="Unicode (multilingual), case-insensitive">utf8_unicode_ci</option>
</optgroup>
<optgroup label="utf8mb4" title="UTF-8 Unicode">
    <option value="utf8mb4_bin" title="unknown, Binary">utf8mb4_bin</option>
    <option value="utf8mb4_czech_ci" title="Czech, case-insensitive">utf8mb4_czech_ci</option>
    <option value="utf8mb4_danish_ci" title="Danish, case-insensitive">utf8mb4_danish_ci</option>
    <option value="utf8mb4_esperanto_ci" title="Esperanto, case-insensitive">utf8mb4_esperanto_ci</option>
    <option value="utf8mb4_estonian_ci" title="Estonian, case-insensitive">utf8mb4_estonian_ci</option>
    <option value="utf8mb4_general_ci" title="unknown, case-insensitive">utf8mb4_general_ci</option>
    <option value="utf8mb4_hungarian_ci" title="Hungarian, case-insensitive">utf8mb4_hungarian_ci</option>
    <option value="utf8mb4_icelandic_ci" title="Icelandic, case-insensitive">utf8mb4_icelandic_ci</option>
    <option value="utf8mb4_latvian_ci" title="Latvian, case-insensitive">utf8mb4_latvian_ci</option>
    <option value="utf8mb4_lithuanian_ci" title="Lithuanian, case-insensitive">utf8mb4_lithuanian_ci</option>
    <option value="utf8mb4_persian_ci" title="Persian, case-insensitive">utf8mb4_persian_ci</option>
    <option value="utf8mb4_polish_ci" title="Polish, case-insensitive">utf8mb4_polish_ci</option>
    <option value="utf8mb4_roman_ci" title="West European, case-insensitive">utf8mb4_roman_ci</option>
    <option value="utf8mb4_romanian_ci" title="Romanian, case-insensitive">utf8mb4_romanian_ci</option>
    <option value="utf8mb4_sinhala_ci" title="unknown, case-insensitive">utf8mb4_sinhala_ci</option>
    <option value="utf8mb4_slovak_ci" title="Slovak, case-insensitive">utf8mb4_slovak_ci</option>
    <option value="utf8mb4_slovenian_ci" title="Slovenian, case-insensitive">utf8mb4_slovenian_ci</option>
    <option value="utf8mb4_spanish2_ci" title="Traditional Spanish, case-insensitive">utf8mb4_spanish2_ci</option>
    <option value="utf8mb4_spanish_ci" title="Spanish, case-insensitive">utf8mb4_spanish_ci</option>
    <option value="utf8mb4_swedish_ci" title="Swedish, case-insensitive">utf8mb4_swedish_ci</option>
    <option value="utf8mb4_turkish_ci" title="Turkish, case-insensitive">utf8mb4_turkish_ci</option>
    <option value="utf8mb4_unicode_ci" title="Unicode (multilingual), case-insensitive">utf8mb4_unicode_ci</option>
</optgroup>
</select>
</form>
</li>
</ul></div><div class="group"><h2>Appearance Settings</h2>  <ul><li id="li_select_lang" class="no_bullets"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_lang" /> <form method="get" action="index.php" class="disableAjax"><input type="hidden" name="db" value="" /><input type="hidden" name="table" value="" /><input type="hidden" name="token" value="741e57ba2ac3064a676f9629e78c1581" /><bdo lang="en" dir="ltr"><label for="sel-lang">Language<a href="./url.php?url=http%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Ffaq.html%23faq7-2&amp;token=741e57ba2ac3064a676f9629e78c1581" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>: </label></bdo><select name="lang" class="autosubmit" lang="en" dir="ltr" id="sel-lang"><option value="ar">&#1575;&#1604;&#1593;&#1585;&#1576;&#1610;&#1577; - Arabic</option><option value="bg">&#1041;&#1098;&#1083;&#1075;&#1072;&#1088;&#1089;&#1082;&#1080; - Bulgarian</option><option value="bn">বাংলা - Bangla</option><option value="ca">Catal&agrave; - Catalan</option><option value="cs">Čeština - Czech</option><option value="da">Dansk - Danish</option><option value="de">Deutsch - German</option><option value="el">&Epsilon;&lambda;&lambda;&eta;&nu;&iota;&kappa;&#940; - Greek</option><option value="en" selected="selected">English</option><option value="en_GB">English (United Kingdom)</option><option value="es">Espa&ntilde;ol - Spanish</option><option value="et">Eesti - Estonian</option><option value="fi">Suomi - Finnish</option><option value="fr">Fran&ccedil;ais - French</option><option value="gl">Galego - Galician</option><option value="hi">&#2361;&#2367;&#2344;&#2381;&#2342;&#2368; - Hindi</option><option value="hr">Hrvatski - Croatian</option><option value="hu">Magyar - Hungarian</option><option value="id">Bahasa Indonesia - Indonesian</option><option value="it">Italiano - Italian</option><option value="ja">&#26085;&#26412;&#35486; - Japanese</option><option value="ko">&#54620;&#44397;&#50612; - Korean</option><option value="lt">Lietuvi&#371; - Lithuanian</option><option value="nb">Norsk - Norwegian</option><option value="nl">Nederlands - Dutch</option><option value="pl">Polski - Polish</option><option value="pt">Portugu&ecirc;s - Portuguese</option><option value="pt_BR">Portugu&ecirc;s - Brazilian portuguese</option><option value="ro">Rom&acirc;n&#259; - Romanian</option><option value="ru">&#1056;&#1091;&#1089;&#1089;&#1082;&#1080;&#1081; - Russian</option><option value="si">&#3523;&#3538;&#3458;&#3524;&#3517; - Sinhala</option><option value="sk">Sloven&#269;ina - Slovak</option><option value="sl">Sloven&scaron;&#269;ina - Slovenian</option><option value="sr@latin">Srpski - Serbian latin</option><option value="sv">Svenska - Swedish</option><option value="th">&#3616;&#3634;&#3625;&#3634;&#3652;&#3607;&#3618; - Thai</option><option value="tr">T&uuml;rk&ccedil;e - Turkish</option><option value="uk">&#1059;&#1082;&#1088;&#1072;&#1111;&#1085;&#1089;&#1100;&#1082;&#1072; - Ukrainian</option><option value="uz">&#1038;&#1079;&#1073;&#1077;&#1082;&#1095;&#1072; - Uzbek-cyrillic</option><option value="uz@latin">O&lsquo;zbekcha - Uzbek-latin</option><option value="zh_CN">&#20013;&#25991; - Chinese simplified</option><option value="zh_TW">&#20013;&#25991; - Chinese traditional</option></select></form></li><li id="li_select_theme" class="no_bullets"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_theme" /> <form name="setTheme" method="get" action="index.php" class="disableAjax"><input type="hidden" name="token" value="741e57ba2ac3064a676f9629e78c1581" /><a href="./themes.php" target="themes" class="themeselect">Theme</a>:
    <select name="set_theme" lang="en" dir="ltr" class="autosubmit"><option value="original">Original</option><option value="pmahomme" selected="selected">pmahomme</option></select></form></li><li id="li_select_fontsize"><form name="form_fontsize_selection" id="form_fontsize_selection" method="get" action="index.php" class="disableAjax">
    <input type="hidden" name="token" value="741e57ba2ac3064a676f9629e78c1581" />
    <label for="select_fontsize">Font size:</label>
    <select name="set_fontsize" id="select_fontsize" class="autosubmit">
        <option value="32%">32%</option>
        <option value="42%">42%</option>
        <option value="52%">52%</option>
        <option value="62%">62%</option>
        <option value="72%">72%</option>
        <option value="77%">77%</option>
        <option value="78%">78%</option>
        <option value="79%">79%</option>
        <option value="80%">80%</option>
        <option value="81%">81%</option>
        <option value="82%" selected="selected">82%</option>
        <option value="83%">83%</option>
        <option value="84%">84%</option>
        <option value="85%">85%</option>
        <option value="86%">86%</option>
        <option value="87%">87%</option>
        <option value="92%">92%</option>
        <option value="102%">102%</option>
        <option value="112%">112%</option>
        <option value="122%">122%</option>
        <option value="132%">132%</option>
    </select>
</form></li></ul><ul><li id="li_user_preferences" class="no_bullets"><a href="prefs_manage.php?token=741e57ba2ac3064a676f9629e78c1581"><img src="themes/dot.gif" title="" alt="" class="icon ic_b_tblops" /> More settings</a>
</li></ul></div></div><div id="main_pane_right"><div class="group"><h2>Database server</h2><ul>
    <li id="li_server_info">Server: Localhost via UNIX socket</li><li id="li_server_type">Server type: MySQL</li><li id="li_server_version">Server version: 5.5.38-0ubuntu0.14.04.1 - (Ubuntu)</li><li id="li_mysql_proto">Protocol version: 10</li><li id="li_user_info">User: root@localhost</li>    <li id="li_select_mysql_charset">        Server charset:         <span lang="en" dir="ltr">           UTF-8 Unicode
           (utf8)
        </span>
</li>
</ul> </div><div class="group"><h2>Web server</h2><ul><li id="li_web_server_software">Apache/2.4.7 (Ubuntu)</li><li id="li_mysql_client_version">Database client version: libmysql - 5.5.38</li><li id="li_used_php_extension">PHP extension: mysqli <a href="./url.php?url=http%3A%2F%2Fphp.net%2Fmanual%2Fen%2Fbook.mysqli.php&amp;token=741e57ba2ac3064a676f9629e78c1581" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a></li>  </ul> </div><div class="group pmagroup"><h2>phpMyAdmin</h2><ul><li id="li_pma_version">Version information: 4.0.10deb1</li><li id="li_pma_docs"><a href="./url.php?url=http%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Findex.html&amp;token=741e57ba2ac3064a676f9629e78c1581" target="_blank">Documentation</a>
</li><li id="li_pma_wiki"><a href="./url.php?url=http%3A%2F%2Fwiki.phpmyadmin.net%2F&amp;token=741e57ba2ac3064a676f9629e78c1581" target="_blank">Wiki</a>
</li><li id="li_pma_homepage"><a href="./url.php?url=http%3A%2F%2Fwww.phpMyAdmin.net%2F&amp;token=741e57ba2ac3064a676f9629e78c1581" target="_blank">Official Homepage</a>
</li><li id="li_pma_contribute"><a href="./url.php?url=http%3A%2F%2Fwww.phpmyadmin.net%2Fhome_page%2Fimprove.php&amp;token=741e57ba2ac3064a676f9629e78c1581" target="_blank">Contribute</a>
</li><li id="li_pma_support"><a href="./url.php?url=http%3A%2F%2Fwww.phpmyadmin.net%2Fhome_page%2Fsupport.php&amp;token=741e57ba2ac3064a676f9629e78c1581" target="_blank">Get support</a>
</li><li id="li_pma_changes"><a href="changelog.php" target="_blank">List of changes</a>
</li>    </ul>
</div>

</div>

</div>

<div class="error"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_error" /> The phpMyAdmin configuration storage is not completely configured, some extended features have been deactivated. To find out why click <a href="http://localhost/phpmyadmin/chk_rel.php?token=741e57ba2ac3064a676f9629e78c1581">here</a>.</div></div><div id="selflink" class="print_ignore"><a href="index.php?db=&amp;table=&amp;server=1&amp;target=&amp;token=741e57ba2ac3064a676f9629e78c1581" title="Open new phpMyAdmin window" target="_blank"><img src="themes/dot.gif" title="Open new phpMyAdmin window" alt="Open new phpMyAdmin window" class="icon ic_window-new" /></a></div><div class="clearfloat" id="pma_errors"><div class="error"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_error" /> Connection for controluser as defined in your configuration failed.</div><div class="error"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_error" /> The <a href="./url.php?url=http%3A%2F%2Fphp.net%2Fmanual%2Fen%2Fbook.mcrypt.php&amp;token=741e57ba2ac3064a676f9629e78c1581" target="Documentation"><em>mcrypt</em></a> extension is missing. Please check your PHP configuration.</div></div><script type="text/javascript">// <![CDATA[
AJAX.cache.primer = { url: "index.php?db=&table=&server=1&target=&token=741e57ba2ac3064a676f9629e78c1581", scripts: [{"name":"jquery\/jquery-1.8.3.min.js","fire":0},{"name":"ajax.js","fire":0},{"name":"keyhandler.js","fire":1},{"name":"jquery\/jquery-ui-1.9.2.custom.min.js","fire":0},{"name":"jquery\/jquery.sprintf.js","fire":0},{"name":"jquery\/jquery.cookie.js","fire":0},{"name":"jquery\/jquery.mousewheel.js","fire":0},{"name":"jquery\/jquery.event.drag-2.2.js","fire":0},{"name":"jquery\/jquery-ui-timepicker-addon.js","fire":0},{"name":"jquery\/jquery.ba-hashchange-1.3.js","fire":0},{"name":"jquery\/jquery.debounce-1.0.5.js","fire":0},{"name":"jquery\/jquery.menuResizer-1.0.js","fire":0},{"name":"cross_framing_protection.js","fire":0},{"name":"rte.js","fire":1},{"name":"functions.js","fire":1},{"name":"navigation.js","fire":0},{"name":"indexes.js","fire":1},{"name":"common.js","fire":1},{"name":"codemirror\/lib\/codemirror.js","fire":0},{"name":"codemirror\/mode\/mysql\/mysql.js","fire":0}], menuHash: "c9444791"};
AJAX.scriptHandler;
$(function() {});
// ]]></script></body></html>