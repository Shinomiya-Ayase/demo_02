new Vue({
    el:'#app',
    data:{
        gender:'男',dict:[]
    },
    methods:{
        init(){
            $.get('/findDict',data=>this.dict=data);
        },
        show(){
            $(".ui.modal").modal('setting',{
                    duration:800,
                    inverted:true,
                    transition:'fade up',
                    blurring:true
                }).modal('show');
        },get(e){
            this.gender = $(e).parent().hasClass('checked')?'女':'男';
        }
    },created(){
        this.init();
    },mounted(){
        $(".ui.checkbox").checkbox();
    }
});
