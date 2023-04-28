const base = {
    get() {
        return {
            url : "http://localhost:8080/springbootsq5o5/",
            name: "springbootsq5o5",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootsq5o5/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "网约车系统"
        } 
    }
}
export default base
