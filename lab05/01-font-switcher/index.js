let currFont = 1.4;
const makeBigger = () => {
   //alert('make bigger!');
   currFont += 0.2;
   setFont();
};

const makeSmaller = () => {
   //alert('make smaller!');
   currFont -= 0.2;
   setFont();
   
};

const setFont = () => {
   document.querySelector('.content').style.fontSize = `${currFont}em`
}

document.querySelector("#a1").addEventListener('click', makeBigger);
document.querySelector("#a2").addEventListener('click', makeSmaller);
