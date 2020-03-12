new Vue({
    el:'#app',
    data:{
        menus:[]
    },
    methods:{
        init(){
            $.get('/loadMenu',(data)=>{
                $.each(data,(i,e)=>{
                    this.menus.push({
                        key:$.parseJSON(i),value:e
                    })
                });
            });
        },hover(){
            $('.ui.dropdown').dropdown({
                transition:'scale',
                on:'hover'
            });
        }
    },created(){
        this.init();
    }
});

$(document).on('click',".ui.dropdown.item",function () {
    $("#menu").html($(this).find('.menu').html());
});

$(document).on('click','#menu a',function () {
    $(this).addClass('active').siblings().removeClass('active');
});
