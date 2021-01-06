function submitSum() {
  const first = document.querySelector('input#first').value;
  const second = document.querySelector('input#second').value;
  fetch('/sum', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json', Accept: 'application/json' },
    body: JSON.stringify({ first, second }),
  }).then(async (res) => {
    const resultEl = document.querySelector('#result');
    const parsed = await res.json();
    if(parsed.error === 'Error!') return;
    resultEl.innerHTML = parsed.sum;
  });
}
