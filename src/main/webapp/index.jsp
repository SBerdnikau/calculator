<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
</head>
<body>

<p><%= request.getAttribute("error") %></p>

<form method="post" action="index">

    <label for="principal-amount">Сумма:</label>
    <input type="number" id="principal-amount" name="principalAmount"><br>

    <label for="interest">Процентная ставка:</label>
    <input type="number" id="interest" name="interest" min="1" max="100"><br>

    <label for="years">Количество лет:</label>
    <input type="number" id="years" name="years" min="1"><br>

    <label for="compounding-period">Период начисления:</label>
    <input type="number" id="compounding-period" name="compoundingPeriod" min="1" max="12"><br>

    <input type="submit" value="Calculate">

    <p>Результата: <%= request.getAttribute("result") %></p>

</form>



</body>
</html>