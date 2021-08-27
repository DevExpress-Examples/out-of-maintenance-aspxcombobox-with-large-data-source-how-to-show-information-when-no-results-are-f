<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128532702/13.2.6%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E5094)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# ASPxComboBox with Large Data Source - How to show information when no results are found
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e5094/)**
<!-- run online end -->


<p>The <a href="https://demos.devexpress.com/ASPxEditorsDemos/ASPxComboBox/LargeDataSource.aspx"><u>Combo Box - Filtering a Large Data Source</u></a> demo illustrates how to filter ASPxComboBox that contains a lot of records. However, when no result is found, ASPxComboBox does not show any information about it. You can change this behavior by showing an additional popup when no results are found. For this, handle the ASPxComboBox' client-side EndCallback event and show ASPxPopupControl when the combo box has no records:

```js

function OnEndCallback(s, e) {
	...
	if (s.GetItemCount() == 0) {
		popup.Show();
	}
} 

```

 </p>

<br/>


