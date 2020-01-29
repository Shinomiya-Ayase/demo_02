new Vue({
    el:'#app',
    data:{pm:{},ps:{},p:{}},
    methods:{
        init(){
            $.get('/showAllRoles',data=>this.pm=data);
            $.get('/showAllPermissions',data=>this.ps=data);
        },edit(p){
            this.p = p;
            $('.ui.modal').modal({
                onHidden(){
                    $(".ui.dropdown").dropdown('restore defaults');
                },onShow(){
                    this.p = p;
                    $(".ui.dropdown").dropdown('set selected',this.p.ids.split(','));
                }
            }).modal('setting',{
                duration:800,
                inverted:true,
                transition:'fade up',
                blurring:true
            }).modal('show');
        }
    },created(){
        this.init();
    },mounted(){
        setTimeout(()=>{
            $(".ui.checkbox").checkbox();
        },100)
    }
});