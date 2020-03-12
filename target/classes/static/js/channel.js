new Vue({
    el:'#app',
    data:{
        channel:[],array:[]
    },
    methods:{
        init(){
            $.get('/loadChannelType',data=>this.channel=data);
        },add(){
            $(".ui.modal").modal('setting',{
                duration:800,
                inverted:true,
                transition:'fade up',
                blurring:true
            }).modal('show');
        },del(){

        },addChannelType(){
            $.post('/addChannelType/'+$("[name=channelTypename]").val(),()=>location.reload());
        },delChannelType(){
            this.array = [];
            if($("tbody :checked").length==0) alert('请至少选中一个');
            $.each($("tbody :checked"),(i,e)=>{
                this.array.push(e.value);
            });
            $.ajax({
                url:'/delChannelType',
                type:'post',
                contentType:'application/json',
                data:JSON.stringify(this.array),
                success:()=>location.reload()
            });
        }
    },created(){
        this.init();
    },mounted(){
        setTimeout(()=>{
            $(".ui.checkbox").checkbox();
            $("#progress").progress();
        },30)
    }
});

$(document).on('change',$("tbody :checkbox"),function () {
    $("#allCheck").prop('checked',$("tbody :checkbox:checked").length==$("tbody :checkbox").length)
});

$("#allCheck").change(function(){
    $("tbody .ui.checkbox").toggleClass('checked');
    $("tbody :checkbox").prop('checked',$(this).prop('checked'))
});
