<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>
<div>
    <h2 class="text-4xl front-semibold-b border-b mx-6">Калькулятор процентов</h2>
    <p><%= request.getAttribute("error") != null ? request.getAttribute("error") : ""  %></p>
    <div class="bg-white mx-auto text-center w-1/2 py-5 shadow-xl rounded-3xl my-96 max-w-2xl">
        <form method="post" action="index">
            <div class="grid grid-cols-2 gap-4 my-5 mx-8">
                <label for="principal-amount" class="text-xl flex items-center">Сумма:</label>
                <input type="number" id="principal-amount" name="principalAmount" class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 appearance-none focus:outline-none rounded-lg focus:ring-2">

                <label for="interest" class="text-xl flex items-center">Процентная ставка:</label>
                <input type="number" id="interest" name="interest" min="1" max="100" class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 appearance-none focus:outline-none rounded-lg focus:ring-2">

                <label for="years" class="text-xl flex items-center">Количество лет:</label>
                <input type="number" id="years" name="years" min="1" class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 appearance-none focus:outline-none rounded-lg focus:ring-2">

                <label for="compounding-period" class="text-xl flex items-center">Период начисления:</label>
                <input type="number" id="compounding-period" name="compoundingPeriod" min="1" max="12" class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 appearance-none focus:outline-none rounded-lg focus:ring-2">

                <input type="submit" value="Расчитать" class="bg-blue-300 text-xl font-semibold px-4 py-1 rounded-lg hover:bg-blue-800  hover:text-white">

                <p class="text-3xl font-mono  text-green-600">Результ: <%=  request.getAttribute("result") != null ?  request.getAttribute("result")  : 0    %></p>
            </div>
        </form>
    </div>
</div>



</body>
</html>