<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <%@ include file="/content/base/head.jsp"%>
    <style type="text/css">
        * {
            padding: 0;
            margin: 0;
            border: none;
        }
        .column {
            position: relative;
            float: left;
            width: 16.66%;
        }
        .column > div {
            border: 1px solid gray;
            background-color: silver;
            min-height: 150px;
            margin: 5px;
            padding: 5px;
        }
        .header, .footer {
            padding: 20px;
            border: 1px solid red;
        }
        .clearfix {
            clear: both;
        }
    </style>
    <body>
        <div class="top-section">
            <div class="header">
                <h1>Super grid test</h1>
            </div>
        </div>
        <div class="content">
            <h1>Some text</h1>
            <div class="scroll-menu">
                <div class="column">
                    <div>1</div>
                    <div>2</div>
                    <div>3</div>
                    <div>4</div>
                    <div>5</div>
                    <div>6</div>
                    <div>7</div>
                    <div>8</div>
                    <div>9</div>
                    <div>10</div>
                </div>
                <div class="column">
                    <div>1</div>
                    <div>2</div>
                    <div>3</div>
                    <div>4</div>
                </div>
                <div class="column">
                    <div>1</div>
                    <div>2</div>
                </div>
                <div class="column">
                    <div>1</div>
                    <div>2</div>
                    <div>3</div>
                    <div>4</div>
                    <div>5</div>
                </div>
                <div class="column">
                    <div>1</div>
                    <div>2</div>
                    <div>3</div>
                    <div>4</div>
                    <div>5</div>
                    <div>6</div>
                    <div>7</div>
                    <div>8</div>
                    <div>9</div>
                    <div>10</div>
                    <div>11</div>
                    <div>12</div>
                    <div>13</div>
                    <div>14</div>
                </div>
                <div class="column">
                    <div>1</div>
                    <div>2</div>
                    <div>3</div>
                    <div>4</div>
                    <div>5</div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="bottom-section">
            <div class="footer">
                <h1>All rights reserved</h1>
                <h1>Ruslan inc.</h1>
            </div>
        </div>
        <script type="text/javascript" src="/js/main/HM.js"></script>
        <script type="text/javascript" src="/js/components/scroll-menu.js"></script>
    </body>
</html>
