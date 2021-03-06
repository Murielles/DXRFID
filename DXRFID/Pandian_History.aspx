﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Pandian_History.aspx.cs" Inherits="DXRFID.Pandian_History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="assets/My97DatePicker/WdatePicker.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="tpl-portlet-components" style="position: absolute; width: auto; height:auto">
        <div class="tpl-content-page-title">
            OFT RFID 管理系统--盘点历史资料查询
        </div>

        <div>
            <ol class="am-breadcrumb">
                <li><a href="Default.aspx" class="am-icon-home">首页</a></li>
                <li class="am-active">盘点历史资料查询</li>
            </ol>
        </div>
        <br />

        <div class="tpl-portlet-components" style="height:100%;width:100%">
            <div class="tpl-block">
                <div class="am-g" style="width:1400px">
                    <div class="am-u-sm-12 am-u-md-6">
                        <div class="am-btn-group am-btn-group-xs">
                            <button type="button" id="download" class="am-btn am-btn-default am-btn-warning" runat="server" onserverclick="Download_ServerClick"><span class="am-icon-archive"></span>下载</button>

                        </div>
                        <div class="am-btn-group am-btn-group-xs">
                            <button type="button" class="am-btn am-btn-default am-btn-danger" runat="server" onserverclick="Refrash_ServerClick"><span class="am-icon-trash-o"></span>刷新</button>
                        </div>
                    </div>
                    <div class="am-u-sm-12 am-u-md-3">
                       <div class="am-input-group am-input-group-sm">
                             <input type="text"  id="key_values_datetime" placeholder="选择查询日期" runat="server" onclick="WdatePicker({ skin: 'whyGreen', dateFmt: 'yyyy-MM-dd' });" />
                            <span class="am-input-group-btn">
                                <button class="am-btn  am-btn-default am-btn-success tpl-am-btn-success am-icon-search" type="button" runat="server" onserverclick="Key_ServerClick"></button>
                            </span>
                        </div>
                    </div>
                </div>
                <br />

                 <div class="am-g">
                    <div class="am-u-sm-12">
                        <asp:Label ID="tishi" runat="server" Width="100%" Style="text-align: center; color: #FF0000"></asp:Label>
                    </div>
                </div>

                <div class="am-g">
                    <div class="am-u-sm-12">
                        
                        <dx:ASPxGridView ID="ASPxGridView_show" runat="server" AutoGenerateColumns="False" Font-Names="微软雅黑" Theme="iOS" Width="100%" DataSourceID="SqlDataSource_show" OnHtmlRowPrepared="ASPxGridView_show_HtmlRowPrepared">
                            <SettingsAdaptivity>
                                <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
                            </SettingsAdaptivity>


                            <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />

                            <EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
                            <Columns>
                                <dx:GridViewDataTextColumn FieldName="资产编码" Name="资产编码" VisibleIndex="1">
                                    <HeaderStyle ForeColor="#999999" />
                                    <CellStyle ForeColor="#999999">
                                    </CellStyle>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="RFID" Name="RFID" VisibleIndex="2">
                                    <HeaderStyle ForeColor="#999999" />
                                    <CellStyle ForeColor="#999999">
                                    </CellStyle>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="名称" Name="名称" VisibleIndex="3">
                                    <HeaderStyle ForeColor="#999999" />
                                    <CellStyle ForeColor="#999999">
                                    </CellStyle>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="规格" Name="规格" VisibleIndex="4">
                                    <HeaderStyle ForeColor="#999999" />
                                    <CellStyle ForeColor="#999999">
                                    </CellStyle>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="品牌" Name="品牌" VisibleIndex="5">
                                    <HeaderStyle ForeColor="#999999" />
                                    <CellStyle ForeColor="#999999">
                                    </CellStyle>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="数量" Name="数量" VisibleIndex="6">
                                    <HeaderStyle ForeColor="#999999" />
                                    <CellStyle ForeColor="#999999">
                                    </CellStyle>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="保管人" Name="保管人" VisibleIndex="7">
                                    <HeaderStyle ForeColor="#999999" />
                                    <CellStyle ForeColor="#999999">
                                    </CellStyle>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="系统存放地点" Name="系统存放地点" VisibleIndex="8">
                                    <HeaderStyle ForeColor="#999999" />
                                    <CellStyle ForeColor="#999999">
                                    </CellStyle>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="盘点存放地点" Name="盘点存放地点" VisibleIndex="9">
                                    <HeaderStyle ForeColor="#999999" />
                                    <CellStyle ForeColor="#999999">
                                    </CellStyle>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="盘点人" Name="盘点人" VisibleIndex="10">
                                    <HeaderStyle ForeColor="#999999" />
                                    <CellStyle ForeColor="#999999">
                                    </CellStyle>
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <Styles>
                                <Header Border-BorderStyle="None">
                                </Header>
                            </Styles>
                        </dx:ASPxGridView>
                        <asp:SqlDataSource ID="SqlDataSource_show" runat="server" ConnectionString="<%$ ConnectionStrings:RFIDConnectionString %>" ></asp:SqlDataSource>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
