from django.db import models
from django.contrib.auth.models import User
from db.financialModels import BaseModel
# Create your models here.
class Product(BaseModel):
    name = models.CharField(verbose_name="基金名称", max_length=50)
    risk = models.IntegerField(verbose_name="风险", choices=(
        (0, "高风险"),
        (1, "中风险"),
        (2, "低风险"),
    ), default=0)
    startmoney = models.CharField(verbose_name="起投金额(元)",max_length=10)
    investment_date = models.CharField(verbose_name="投资期限(天)",max_length=10)
    annual_income = models.CharField(verbose_name="年化收益(%)", max_length=10)
    num=models.IntegerField(verbose_name="买过人数")
    latest_val = models.CharField(verbose_name="最新净值",max_length=10)
    drop_range = models.CharField(verbose_name="日涨跌幅(%)",max_length=10)
    money = models.CharField(verbose_name="购买金额(元)",max_length=10)

    def __str__(self):
        return self.name
    class Meta:
        verbose_name = '产品信息'
        verbose_name_plural = '产品信息'

class Selfproduct(BaseModel):
    u = models.ForeignKey(verbose_name="用户",to=User, on_delete=models.CASCADE)
    p = models.ForeignKey(verbose_name="产品",to=Product, on_delete=models.CASCADE)
    y_earning = models.CharField(verbose_name="昨日收益(元)",max_length=50)
    h_earning = models.CharField(verbose_name="持有收益(元)",max_length=50)
    dateLimit = models.IntegerField(verbose_name="到期期限", default=0)
    def __str__(self):
        return self.p.name
    class Meta:
        verbose_name = '持有产品'
        verbose_name_plural = '持有产品'
class Notice(BaseModel):
    title = models.CharField(verbose_name="公告标题", max_length=50)
    con = models.TextField(verbose_name="公告内容", max_length=2000)
    def __str__(self):
        return self.title
    class Meta:
        verbose_name = '平台公告'
        verbose_name_plural = '平台公告'
class Message(BaseModel):
    u = models.ForeignKey(verbose_name="用户",to=User, on_delete=models.CASCADE)
    title = models.CharField(verbose_name="消息标题", max_length=50)
    con = models.TextField(verbose_name="消息内容", max_length=2000)
    type = models.IntegerField(verbose_name="消息类型", choices=(
        (0, "金额方面"),
        (1, "产品方面"),
        (2, "其他"),
    ), default=0)
    def __str__(self):
        return self.title
    class Meta:
        verbose_name = '个人消息'
        verbose_name_plural = '个人消息'
class Rate(models.Model):
    year_choice=(
        (0,"2012"),
        (1,"2013"),
        (2,"2014"),
        (3,"2015"),
        (4,"2016"),
        (5,"2017"),
        (6,"2018"),
    )
    p = models.ForeignKey(verbose_name="产品", to=Product, on_delete=models.CASCADE)
    year = models.IntegerField(verbose_name="年份", choices=year_choice, default=0)
    rate= models.CharField(verbose_name="收益率(%)",max_length=5)
    def __str__(self):
        return self.p.name
    class Meta:
        verbose_name = '收益率'
        verbose_name_plural = '收益率'
class Info(BaseModel):
    title = models.CharField(max_length=30,verbose_name='标题')
    con = models.TextField(max_length=2000,verbose_name='资讯内容')
    img = models.ImageField(default='',verbose_name="图片",upload_to='financing/static/img/')
    author = models.CharField(max_length=10,verbose_name='作者')
    s_id = models.IntegerField(choices=(
        (0,'未发布'),(1,'发布')
    ),default=0,verbose_name="是否发布")

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = "资讯"
        verbose_name_plural = "资讯"
class Video(BaseModel):
    title = models.CharField(max_length=30, verbose_name='标题')
    author = models.CharField(max_length=10,verbose_name='作者')
    vid = models.FileField(verbose_name='视频地址',default='',upload_to='financing/static/video/')
    s_id = models.IntegerField(choices=(
        (0,'未发布'),(1,'发布')
    ),default=0,verbose_name="是否发布")

    def __str__(self):
        return self.title
    class Meta:
        verbose_name = "视频"
        verbose_name_plural = "视频"

class Pl(BaseModel):
    v = models.ForeignKey(to=Video,on_delete=models.CASCADE,verbose_name="视频")
    con = models.CharField(max_length=150,verbose_name="评论内容")
    u = models.ForeignKey(to=User, on_delete=models.CASCADE,verbose_name="用户")
    class Meta:
        verbose_name = "评论"
        verbose_name_plural = "评论"
class MyInfo(models.Model):
    user = models.OneToOneField(User,verbose_name="用户", on_delete=models.CASCADE)
    tel = models.CharField(verbose_name="电话",max_length=11)
    img = models.CharField(verbose_name="头像",max_length=100)
    z_money= models.CharField(verbose_name="总资产",max_length=20)
    d_money = models.CharField(verbose_name="待收收益",max_length=20)
    lj_money = models.CharField(verbose_name="累计收益",max_length=20)
    ky_money = models.CharField(verbose_name="可用余额",max_length=20)
    class Meta:
        verbose_name = "用户信息"
        verbose_name_plural = "用户信息"

class Ycard(models.Model):
    u=models.ForeignKey(verbose_name="用户",to=User,on_delete=models.CASCADE)
    bank = models.CharField(verbose_name="银行",max_length=10)
    card_lx=models.IntegerField(verbose_name="银行卡类型",choices=(
        (0,'储蓄卡'),
        (1,'信用卡'),
    ),default=0)
    card_number = models.CharField(verbose_name="卡号",max_length=16)
    class Meta:
        verbose_name = "银行卡"
        verbose_name_plural = "银行卡"

class Kcard(BaseModel):
    u = models.ForeignKey(verbose_name="用户", to=User, on_delete=models.CASCADE)
    outdate =models.IntegerField(verbose_name="是否过期",choices=(
        (0,'已过期'),
        (1, '未使用'),
        (2, '已使用'),
    ),default=0)
    type = models.IntegerField(verbose_name="卡片类型", choices=(
        (0, '折扣券'),
        (1, '加息券'),
    ), default=0)
    money = models.CharField(verbose_name="金额",max_length=10,default=998)
    use_person = models.IntegerField(verbose_name="使用分类",choices=(
        (0,'新手用户专享'),
        (1,'老用户专享'),
    ),default=0)
    tz_money = models.CharField(verbose_name="投资金额",max_length=10,default=10000)
    tz_date = models.CharField(verbose_name="投资期限",max_length = 4,default=30)
    yxq_date = models.IntegerField(verbose_name="有效年限", default=1)
    class Meta:
        verbose_name = "卡包"
        verbose_name_plural = "卡包"
class Con(BaseModel):
    u = models.ForeignKey(verbose_name="用户", to=User, on_delete=models.CASCADE)
    gt_con = models.CharField(verbose_name="沟通内容",max_length=200)
    talker = models.IntegerField(verbose_name="发言者",choices=(
        (0,'客户'),
        (1,'客服'),
    ),default=0)
    class Meta:
        verbose_name = "客服记录"
        verbose_name_plural = "客服记录"

