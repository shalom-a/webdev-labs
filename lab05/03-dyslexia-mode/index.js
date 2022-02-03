/* 
  See Smashing Magazine Tutorial:
  https://www.smashingmagazine.com/2021/11/dyslexia-friendly-mode-website/
*/

const initPage = () => {
  // toggle dyslexia support
  const isPressed = window.localStorage.getItem('dyslexic') === 'true';
  if(isPressed) {
      document.body.classList.add('dyslexia-mode');
  }
  // set the button to pressed if appropriate
  const toggle = document.querySelector('#dyslexia-toggle');
  if(isPressed) {
      toggle.setAttribute('aria-pressed', 'true');
  }

  toggle.addEventListener('click', toggleEventhandler);
}


const toggleEventhandler = ev => {
  let pressed = ev.currentTarget.getAttribute('aria-pressed') === 'true';

  ev.currentTarget.setAttribute('aria-pressed', String(!pressed)) ;
  document.body.classList.toggle("dyslexia-mode");

  window.localStorage.setItem("dyslexic", String(!pressed));
}

initPage();