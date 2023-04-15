const display = document.getElementById('clock');
const audio = new Audio('alarm.wav');
const inputTime = document.getElementById('alarm-time');
let alarmTime = null;
let alarmTimeout = null;

function setAlarm() {
  const alarmTimeInput = document.getElementById('alarm-time');
  const alarmTimeValue = alarmTimeInput.value.trim();

  if (!alarmTimeValue) {
    alert('Please set a valid alarm time');
    return;
  }

  alarmTime = new Date(alarmTimeValue);

  const now = new Date();
  const timeUntilAlarm = alarmTime.getTime() - now.getTime();

  if (timeUntilAlarm < 0) {
    alert('Please set an alarm time in the future');
    return;
  }

  alert(`Alarm set for ${alarmTime.toLocaleTimeString()}`);

  alarmTimeout = setTimeout(() => {
    audio.play();
    alert('Time is up!');
    alarmTime = null;
  }, timeUntilAlarm);
}

function setAlarmTime(value) {
  value = value.trim();
  if (value) {
    alarmTime = new Date(value);
    alert(`Alarm set for ${alarmTime.toLocaleTimeString()}`);
  }
}

function formatTime(time) {
  return time < 10 ? '0' + time : time;
}


function clearAlarm() {
  audio.pause();
  clearTimeout(alarmTimeout);
  alarmTime = null;
  alert('Alarm cleared');
}

function updateClock() {
  const now = new Date();
  const hours = now.getHours() % 12 || 12;
  const minutes = now.getMinutes().toString().padStart(2, '0');
  const seconds = now.getSeconds().toString().padStart(2, '0');
  const ampm = now.getHours() >= 12 ? 'PM' : 'AM';
  document.querySelector('#clock .hours').innerHTML = hours;
  document.querySelector('#clock .minutes').innerHTML = minutes;
  document.querySelector('#clock .seconds').innerHTML = seconds;
  document.querySelector('#clock .ampm').innerHTML = ampm;
}

setInterval(updateClock, 1000);






  