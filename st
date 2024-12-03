<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Mortgage Calculator</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    @font-face {
      font-family: 'PlusJakartaSans-Italic-VariableFont_wght';
      src: url(assets/fonts/PlusJakartaSans-Italic-VariableFont_wght.ttf);
    }

    @font-face {
      font-family: 'PlusJakartaSans-VariableFont_wght';
      src: url(assets/fonts/PlusJakartaSans-VariableFont_wght.ttf);
    }

    @font-face {
      font-family: 'PlusJakartaSans-Bold';
      src: url(assets/fonts/static/PlusJakartaSans-Bold.ttf);
    }

    @font-face {
      font-family: 'PlusJakartaSans-Medium';
      src: url(assets/fonts/static/PlusJakartaSans-Medium.ttf);
    }

    body {
      background-color: #6297cd;
      padding: 20px;
      font-family: 'PlusJakartaSans-Medium', sans-serif;
    }

    .calculator {
      max-width: 800px;
      margin: auto;
      background-color: #ffffff;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      overflow: hidden;
    }

    .mortgage-div {
      display: flex;
      justify-content: space-between;
      align-items: center;
      height: 65px;
    }

    .mortgage-div h5 {
      margin: 0;
      font-family: 'PlusJakartaSans-Bold', sans-serif;
      font-size: 18px;
    }

    .clear {
      text-align: right;
      color: grey;
      font-size: 0.85rem;
      cursor: pointer;
    }

    .clear:hover {
      text-decoration: underline;
    }

    .results {
      background-color: rgb(60, 62, 94);
      color: #fff;
      border-radius: 0 10px 10px 10px;
      padding: 20px;
    }

    .results h5 {
      font-family: 'PlusJakartaSans-Bold', sans-serif;
      font-size: 18px;
    }

    .results p {
      font-size: 0.95rem;
      margin-bottom: 0.5rem;
    }

    .results .value {
      font-size: 1.8rem;
      font-weight: bold;
    }

    .btn-yellow {
      background-color: #ffc107;
      color: black;
      font-weight: bold;
    }

    .btn-yellow:hover {
      background-color: #e0a800;
    }

    .form-label {
      font-weight: bold;
    }

    .inline-group {
      display: flex;
      gap: 10px;
    }

    .mortgage-type {
      display: flex;
      gap: 10px;
    }

    .mortgage-type .input-group {
      flex: 1;
    }

    .mortgage-type .form-check-input {
      display: none;
    }

    .mortgage-type .form-check-input:checked + .form-control {
      background-color: #ffc107;
      border-color: #ffc107;
      color: black;
      font-weight: bold;
    }

    .mortgage-type .form-control {
      text-align: center;
      font-weight: bold;
      color: #333;
    }

    .mortgage-type .input-group-text {
      border: none;
    }
  </style>
</head>

<body>

  <div class="calculator row">
    <div class="col-md-6 p-4">
      <!-- Header con "Clear All" -->
      <div class="row mortgage-div">
        <h5 class="col-8">Mortgage Calculator</h5>
        <a class="clear col-4">Clear All</a>
      </div>

      <!-- Formulario -->
      <form>
        <div class="mb-3">
          <label for="mortgageAmount" class="form-label">Mortgage Amount</label>
          <div class="input-group">
            <span class="input-group-text">£</span>
            <input type="number" class="form-control" id="mortgageAmount" placeholder="300,000">
          </div>
        </div>
        <!-- Mortgage Term e Interest Rate en la misma línea -->
        <div class="mb-3 inline-group">
          <div>
            <label for="mortgageTerm" class="form-label">Mortgage Term</label>
            <div class="input-group">
              <input type="number" class="form-control" id="mortgageTerm" placeholder="25">
              <span class="input-group-text">years</span>
            </div>
          </div>
          <div>
            <label for="interestRate" class="form-label">Interest Rate</label>
            <div class="input-group">
              <input type="number" class="form-control" id="interestRate" placeholder="5.25">
              <span class="input-group-text">%</span>
            </div>
          </div>
        </div>
        <!-- Mortgage Type -->
        <div class="mb-4">
          <label class="form-label">Mortgage Type</label>
          <div class="mortgage-type">
            <div class="input-group">
              <input class="form-check-input" type="radio" name="mortgageType" id="repayment" value="repayment">
              <input type="text" class="form-control" value="Repayment" disabled>
            </div>
            <div class="input-group">
              <input class="form-check-input" type="radio" name="mortgageType" id="interestOnly" value="interestOnly">
              <input type="text" class="form-control" value="Interest Only" disabled>
            </div>
          </div>
        </div>
        <!-- Botón -->
        <button type="button" class="btn btn-yellow w-100">🖩 Calculate Repayments</button>
      </form>
    </div>

    <!-- Resultados -->
    <div class="results col-md-6">
      <h5>Your results</h5>
      <p>Your results are shown below based on the information you provided. To adjust the results, edit the form and
        click "calculate repayments" again.</p>
      <p>Your monthly repayments:</p>
      <p class="value">£1,797.74</p>
      <p>Total you'll repay over the term:</p>
      <p class="value">£539,322.94</p>
    </div>
  </div>

</body>

</html>
