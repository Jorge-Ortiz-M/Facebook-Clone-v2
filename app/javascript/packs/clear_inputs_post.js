
function ClearInputPost(){
    const inputTitlePost = document.querySelector('.input-title-post');
    const inputBodyPost = document.querySelector('.input-body-post');
    inputTitlePost.value = '';
    inputBodyPost.value= '';
}

export default ClearInputPost;