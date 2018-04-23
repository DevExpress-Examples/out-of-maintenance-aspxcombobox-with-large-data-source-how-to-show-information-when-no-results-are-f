'INSTANT VB NOTE: This code snippet uses implicit typing. You will need to set 'Option Infer On' in the VB file or set 'Option Infer' at the project level:

<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>

	<script type="text/javascript">
		function OnEndCallback(s, e) {
			if (s.GetItemCount() == 0) {
				popup.Show();
			}
		}
	</script>

</head>
<body>
	<form id="form1" runat="server">    
	<dx:ASPxComboBox ID="cbCars" runat="server" ClientInstanceName="cbCars" ValueField="Value"
		TextField="Text" ValueType="System.Int32" EnableCallbackMode="true" CallbackPageSize="10"
		IncrementalFilteringMode="Contains" OnItemRequestedByValue="cbCars_ItemRequestedByValue"
		OnItemsRequestedByFilterCondition="cbCars_ItemsRequestedByFilterCondition" >
		 <ClientSideEvents EndCallback="OnEndCallback" />
	</dx:ASPxComboBox>
			<dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" ShowHeader="false" Width='170'
			PopupElementID="cbCars" PopupAction="None" PopupHorizontalAlign="RightSides" PopupVerticalAlign="Below"
			ClientInstanceName="popup">
			<ContentStyle HorizontalAlign="Center">
			</ContentStyle>
			<ContentCollection>
				<dx:PopupControlContentControl ID="PopupControlContentControl1" runat="server" SupportsDisabledAttribute="True">
					No results
				</dx:PopupControlContentControl>
			</ContentCollection>
		</dx:ASPxPopupControl>
	</form>
</body>
</html>