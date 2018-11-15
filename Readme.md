<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
<!-- default file list end -->
# ASPxComboBox with Large Data Source - How to show information when no results are found


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


