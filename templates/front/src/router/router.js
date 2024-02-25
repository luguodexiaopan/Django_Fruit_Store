import VueRouter from 'vue-router'

//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import Storeup from '../pages/storeup/list'
import AddrList from '../pages/shop-address/list'
import AddrAdd from '../pages/shop-address/addOrUpdate'
import Order from '../pages/shop-order/list'
import OrderConfirm from '../pages/shop-order/confirm'
import Cart from '../pages/shop-cart/list'
import News from '../pages/news/news-list'
import NewsDetail from '../pages/news/news-detail'
import yonghuList from '../pages/yonghu/list'
import yonghuDetail from '../pages/yonghu/detail'
import yonghuAdd from '../pages/yonghu/add'
import shuiguofenleiList from '../pages/shuiguofenlei/list'
import shuiguofenleiDetail from '../pages/shuiguofenlei/detail'
import shuiguofenleiAdd from '../pages/shuiguofenlei/add'
import shuiguoxinxiList from '../pages/shuiguoxinxi/list'
import shuiguoxinxiDetail from '../pages/shuiguoxinxi/detail'
import shuiguoxinxiAdd from '../pages/shuiguoxinxi/add'
import chathelperList from '../pages/chathelper/list'
import chathelperDetail from '../pages/chathelper/detail'
import chathelperAdd from '../pages/chathelper/add'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(err => err)
}

//配置路由
export default new VueRouter({
	routes:[
		{
      path: '/',
      redirect: '/index/home'
    },
		{
			path: '/index',
			component: Index,
			children:[
				{
					path: 'home',
					component: Home
				},
				{
					path: 'center',
					component: Center,
				},
				{
					path: 'storeup',
					component: Storeup
				},
                {
                    path: 'shop-address/list',
                    component: AddrList
                },
                {
                    path: 'shop-address/addOrUpdate',
                    component: AddrAdd
                },
				{
					path: 'shop-order/order',
					component: Order
				},
				{
					path: 'cart',
					component: Cart
				},
				{
					path: 'shop-order/orderConfirm',
					component: OrderConfirm
				},
				{
					path: 'news',
					component: News
				},
				{
					path: 'newsDetail',
					component: NewsDetail
				},
				{
					path: 'yonghu',
					component: yonghuList
				},
				{
					path: 'yonghuDetail',
					component: yonghuDetail
				},
				{
					path: 'yonghuAdd',
					component: yonghuAdd
				},
				{
					path: 'shuiguofenlei',
					component: shuiguofenleiList
				},
				{
					path: 'shuiguofenleiDetail',
					component: shuiguofenleiDetail
				},
				{
					path: 'shuiguofenleiAdd',
					component: shuiguofenleiAdd
				},
				{
					path: 'shuiguoxinxi',
					component: shuiguoxinxiList
				},
				{
					path: 'shuiguoxinxiDetail',
					component: shuiguoxinxiDetail
				},
				{
					path: 'shuiguoxinxiAdd',
					component: shuiguoxinxiAdd
				},
				{
					path: 'chathelper',
					component: chathelperList
				},
				{
					path: 'chathelperDetail',
					component: chathelperDetail
				},
				{
					path: 'chathelperAdd',
					component: chathelperAdd
				},
			]
		},
		{
			path: '/login',
			component: Login
		},
		{
			path: '/register',
			component: Register
		},
	]
})
