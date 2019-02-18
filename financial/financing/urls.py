from django.urls import path
from . import views
from django.contrib import admin

app_name = "financing"
# 平台首页
urlpatterns = [
    path('index/', views.index, name='index'),
    path('market/', views.market, name='market'),
    path('xiangqing/<pid>/', views.xiangqing, name='xiangqing'),
    path('rate/<pid>/', views.rate, name='rate'),
    path('buy/<pid>/', views.buy, name='buy'),
    path('paysuccess/', views.paysuccess, name='paysuccess'),
    path('message/', views.message, name='message'),
    path('login/', views.login, name="login"),
    path('', views.shanping, name="shanping"),
    path('zhuce/', views.zhuce, name="zhuce"),
    path('zhusuccess/', views.zhusuccess, name="zhusuccess"),
    path('comment/<id>',views.comment,name='comment'),
    path('comment/compl/<id>',views.compl,name='compl'),
    path('comment/compl/commit/',views.commit,name='commit'),
    path('zixun/',views.zixun,name='zixun'),
    path('myindex',views.myindex,name="myindex"),#平台首页
    path('add/',views.add,name="add"),
    path('cate/',views.cate,name="cate"),
    path('person/',views.person,name="person"),
    path('addcate/',views.addcate,name="addcate"),
    path('list_cate/',views.list_cate,name = "list_cate"),
    path('loginout/',views.loginout,name = "loginout"),
]
