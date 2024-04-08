function toggleShape(shape) {
    var balokCheckbox = document.getElementById("balokCheckbox");
    var kubusCheckbox = document.getElementById("kubusCheckbox");
    var balokInputs = document.getElementById("balokInputs");
    var kubusInputs = document.getElementById("kubusInputs");
  
    if (shape === 'balok') {
      if (balokCheckbox.checked) {
        balokInputs.style.display = "block";
        kubusInputs.style.display = "none";
        kubusCheckbox.checked = false;
      } else {
        balokInputs.style.display = "none";
      }
    } else if (shape === 'kubus') {
      if (kubusCheckbox.checked) {
        kubusInputs.style.display = "block";
        balokInputs.style.display = "none";
        balokCheckbox.checked = false;
      } else {
        kubusInputs.style.display = "none";
      }
    }
  }
  
  function hitungVolume() {
    var balokCheckbox = document.getElementById("balokCheckbox");
    var kubusCheckbox = document.getElementById("kubusCheckbox");
    var resultDiv = document.getElementById("result");
    var volume;
  
    if (balokCheckbox.checked) {
      var length = parseFloat(document.getElementById("length").value);
      var width = parseFloat(document.getElementById("width").value);
      var height = parseFloat(document.getElementById("height").value);
      volume = length * width * height;
    } else if (kubusCheckbox.checked) {
      var side = parseFloat(document.getElementById("side").value);
      volume = Math.pow(side, 3);
    } else {
      resultDiv.innerHTML = "Pilih salah satu bentuk untuk menghitung.";
      return;
    }
  
    resultDiv.innerHTML = "Volume: " + volume;
  }