from django.contrib import admin
from .models import Product,Selfproduct,User,Message,Notice,Rate,Info,Video,Pl,MyInfo,Ycard,Con,Kcard
from django.utils.html import mark_safe
# Register your models here.
admin.AdminSite.site_header="理财派后台界面"
admin.AdminSite.site_title="理财派"
admin.AdminSite.index_title="理财派"
@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    list_display = [
        'name','risk','startmoney','investment_date','annual_income','num','latest_val','drop_range','money'
    ]    #列表页显示字段
    search_fields = [
        'name','risk','startmoney','investment_date','annual_income','num','latest_val','drop_range','money'
    ]
@admin.register(Selfproduct)
class SelfproductAdmin(admin.ModelAdmin):
    list_display = [
        'u','p','y_earning','h_earning'
    ]    #列表页显示字段
    search_fields = [
        'y_earning', 'h_earning'
    ]
@admin.register(Notice)
class NoticeAdmin(admin.ModelAdmin):
    list_display = [
        'title','con','c_time'
    ]    #列表页显示字段
    search_fields = [
        'title','con'
    ]
@admin.register(Message)
class MessageAdmin(admin.ModelAdmin):
    list_display = [
        'u','title','con','type','c_time'
    ]    #列表页显示字段
    search_fields = [
        'title','con','type'
    ]
@admin.register(Rate)
class RateAdmin(admin.ModelAdmin):
    fields = [
        'p', 'year', 'rate'
    ]
    list_display = [
        'p','year','rate'
    ]    #列表页显示字段
    search_fields = [
        'p','year','rate'
    ]
@admin.register(Info)
class InfoAdmin(admin.ModelAdmin):
    list_display = [ #呈现为列表
        'title','author','s_id'
    ]

# 视频
@admin.register(Video)
class VideoAdmin(admin.ModelAdmin):
    list_display = [
        'title','author','s_id','vid'
    ]

# 评论
@admin.register(Pl)
class VideoAdmin(admin.ModelAdmin):
    list_display = [
        'v','con','u','c_time'
    ]
@admin.register(MyInfo)
class InfoAdmin(admin.ModelAdmin):
    fields = [
        'user', 'tel', 'z_money', 'd_money', 'lj_money','ky_money'
    ]
    list_display = [
        'user', 'tel', 'z_money', 'd_money','lj_money','ky_money','img'
    ]
@admin.register(Ycard)
class YcardAdmin(admin.ModelAdmin):
    list_display=[
        'u','bank','card_lx','card_number'
    ]
@admin.register(Kcard)
class KcardAdmin(admin.ModelAdmin):
    list_display=[
        'u','type','money','use_person','tz_money','tz_date','yxq_date'
    ]
@admin.register(Con)
class ConAdmin(admin.ModelAdmin):
    list_display=[
        'u','gt_con','talker'
    ]



