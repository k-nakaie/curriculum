document.querySelector('#createBtn').addEventListener('click',function(){
    let item = document.createElement('li');
    item.textContent = 'test';

    let ul = document.querySelector('ul');
    ul.appendChild(item);
});