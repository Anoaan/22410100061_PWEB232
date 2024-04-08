<!DOCTYPE html>
<html lang="en">
<head>
<title>Hitung Volume</title>
</head>
<body>

<h2>Hitung Volume Balok atau Kubus</h2>

<div>
  <input type="checkbox" id="balokCheckbox" onchange="toggleShape('balok')">
  <label for="balokCheckbox">Balok</label>
  <input type="checkbox" id="kubusCheckbox" onchange="toggleShape('kubus')">
  <label for="kubusCheckbox">Kubus</label><br>
</div>

<div id="inputFields">
  <div id="balokInputs" style="display: none;">
    <label for="length">Panjang:</label>
    <input type="number" id="length"><br>
    <label for="width">Lebar:</label>
    <input type="number" id="width"><br>
    <label for="height">Tinggi:</label>
    <input type="number" id="height"><br>
  </div>
  <div id="kubusInputs" style="display: none;">
    <label for="side">Sisi:</label>
    <input type="number" id="side"><br>
  </div>
</div>

<button onclick="hitungVolume()">Hitung</button>

<div id="result"></div>

<script src="http://localhost/PWEB232/Tugasjs3.js"></script>

</body>
</html>