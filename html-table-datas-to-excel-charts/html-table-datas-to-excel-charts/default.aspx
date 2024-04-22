﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="html_table_datas_to_excel_charts._default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        #chartsContainer{
            display:flex;
            flex-wrap:wrap;
        }
        .chart-container {
            margin: 20px;
            border: 1px solid #ddd;
            padding: 10px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="dataTable" runat="server">
                <tr>
                    <th>Sütun1</th>
                    <th>Sütun2</th>
                    <th>Sütun3</th>
                    <th>Sütun4</th>
                    <th>Sütun5</th>
                </tr>
                <tr>
                    <td>Veri1</td>
                    <td>Veri2</td>
                    <td>Veri2</td>
                    <td>Veri4</td>
                    <td>Veri5</td>
                </tr>
                <tr>
                    <td>Veri3</td>
                    <td>Veri3</td>
                    <td>Veri4</td>
                    <td>Veri3</td>
                    <td>Veri4</td>
                </tr>
                <tr>
                    <td>Veri4</td>
                    <td>Veri4</td>
                    <td>Veri4</td>
                    <td>Veri2</td>
                    <td>Veri3</td>
                </tr>
                <tr>
                    <td>Veri3</td>
                    <td>Veri5</td>
                    <td>Veri4</td>
                    <td>Veri2</td>
                    <td>Veri3</td>
                </tr>
            </table>
            <br />

            <asp:Button ID="btnCreateCharts" runat="server" Text="Grafikleri Oluştur" OnClick="btnCreateCharts_Click" />
            <br />
            <div id="chartsContainer" runat="server"></div>
        </div>
    </form>
</body>
</html>
