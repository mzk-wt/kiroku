# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# JSONPの使い方
# http://techblog.yahoo.co.jp/javascript/jsonpjavascript/

$ ->
  $("#searchBtn").click ->
    base = "https://app.rakuten.co.jp/services/api/BooksBook/Search/"
    version = "20130522"
    applicationId = "applicationId=1015329897212975299"
    title = getQuery("title", true)
    isbn = getQuery("isbn", false)

    query = title + isbn
    url = base + version + "?" + applicationId + query

    # API呼び出し
    $.ajax({
      type: 'GET',
      url: url,
      dataType: 'jsonp',
      success: (json) ->
        alert(json.Items[0].Item.title)
    })

    return false

#---------------------------
# 検索条件を取得
getQuery = (key, enc) ->
  if $("#s_itemSel").val() is key
    val = $("#q_search").val()
    val = encodeURIComponent(val) if enc
    return "&" + key + "=" + val
  else
    return ""

