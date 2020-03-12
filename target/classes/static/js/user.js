const vue = new Vue({
    el:'#app',
    data:{users:[],index:1,user:{},roles:[],deps:[],defR:1,defD:1,uid:0},
    methods:{
        init(){
            $.post('/showAllUser/'+this.index,data=>this.users=data);
            $.get('/showRoles',data=>this.roles=data);
            $.get('/showDeps',data=>this.deps=data);
        },page(index){
            this.index = index;
            this.init();
        },addUser(){
            f('.add');
        },delUser(){

        },update(u){
            this.user = u;
            this.defR = this.roles[u.role_id-1].roleId;
            this.defD = this.deps[u.department_id-1].departmentId;
            f('.update');
        }
    },created(){
        this.init();
    }
});

function f(name) {
    $(name).modal('setting',{
        duration:800,
        inverted:true,
        transition:'fade up',
        blurring:true
    }).modal('show');
}