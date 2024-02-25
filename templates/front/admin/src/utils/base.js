const base = {
    get() {
        return {
            url : "http://127.0.0.1:8080/djangoqrs54/",
            name: "djangoqrs54",
            // 退出到首页链接
            indexUrl: 'http://127.0.0.1:8080/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "基于Django的智能水果销售系统设计"
        } 
    }
}
export default base
