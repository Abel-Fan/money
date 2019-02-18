from django.shortcuts import render,HttpResponse,reverse,redirect
from .models import Product,Selfproduct,Message,Notice,Rate,User,Info,Video,Pl,MyInfo,Ycard,Con,Kcard
from django.views.decorators.csrf import csrf_exempt
from .form import Login,Zhuce
from django.contrib.auth import login as login1
import time,os,csv,json,datetime
from django.contrib.auth import logout
# Create your views here.
def shanping(request):
    return render(request, "shanping1.html")

def login(request):
    if request.method == "GET":
        form = Login()
        return render(request, "login1.html", {'form': form})
    else:
        form = Login(request.POST)
        if form.is_valid():
            login1(request, form.user)
            if request.user.is_staff == 1:
                return render(request, "login1.html", {'form': form})
            else:
                return redirect(reverse("financing:index"))  # 响应
        else:
            # 重新登录
            return render(request, "login1.html", {'form': form})

def zhuce(request):
    if request.method == 'POST':
        form = Zhuce(request.POST)
        if form.is_valid():
            date = form.cleaned_data
            User.objects.create_user(username=date['username'], password=date['password'])
            return redirect(reverse("financing:zhusuccess"))
        else:
            return render(request, "zhuce.html", {'form': form})
    else:
        form = Zhuce()
        return render(request, "zhuce.html", {'form': form})
def zhusuccess(request):
    return render(request, "zhusuccess.html")
def index(request):
    uid = request.user.id
    product = Product.objects.latest("annual_income")
    uM = Selfproduct.objects.filter(u_id=uid,p_id=product.id)
    if not uM.exists():
        M = 1
    else:
        M = 2
    message = Message.objects.filter(u_id=uid)
    notice = Notice.objects.all()
    num = 0
    if message.exists():
        for item in message:
            num += 1
    if notice.exists():
        for item in notice:
            num += 1
    if num == 0:
        num = ""
    return render(request, "zindex.html",{'num':num,'product':product,'M':M})


# 产品
def market(request):
    uid = request.user.id
    products = Product.objects.all()
    selfProducts = Selfproduct.objects.filter(u_id=uid)
    message = Message.objects.filter(u_id=uid)
    notice = Notice.objects.all()
    # 当前时间
    currentTime = int(time.strftime('%j', time.localtime(time.time())))
    # 更新期限
    for item in selfProducts:
        Selfproduct.objects.filter(id=item.id).update(dateLimit=int(item.c_time.strftime('%j'))+int(item.p.investment_date)-currentTime)
    num = 0
    if message.exists():
        for item in message:
            num += 1
    if notice.exists():
        for item in notice:
            num += 1
    if num == 0:
        num = ""
    return render(request, 'market.html', {'products': products, 'selfProducts': selfProducts,'num':num})

# 产品详情
def xiangqing(request, pid):
    message = Product.objects.filter(id=pid).first()
    uid = request.user.id
    uM = Selfproduct.objects.filter(u_id=uid,p_id=pid)
    if not uM.exists():
        M = 1
    else:
        M = 2
    return render(request, 'xiangqing.html', {'pid': pid, 'message': message, 'M': M})
@csrf_exempt
def rate(request,pid):
    message = {}
    if request.method == "POST":
        r = Rate.objects.filter(p_id=pid)
        rates = []
        years=[]
        for item in r:
            rates.append(item.rate)
            years.append(item.get_year_display())
        message['rate']=rates
        message['year'] = years
    return HttpResponse(json.dumps(message, ensure_ascii=False))
# 购买
def buy(request, pid):
    money=Product.objects.filter(id=pid).first().money
    uid=request.user.id
    if uid:
        wf = Ycard.objects.filter(u_id=uid).all()
        arr1 = []
        arr2 = []
        for item in wf:
            if item.bank == "建设银行":
                mystr = str(item.card_number)
                mystr2 = mystr[-4:]
                arr1.append(mystr2)
            elif item.bank == "交通银行":
                mystr1 = str(item.card_number)
                mystr3 = mystr1[-4:]
                arr2.append(mystr3)
    else:
        wf=arr1=arr2=""
    return render(request, 'buy.html',{'pid':pid,'money':money,'wf': wf, 'arr1': arr1, 'arr2': arr2})

def paysuccess(request):
    return render(request, "paysuccess.html")

def message(request):
    uid = request.user.id
    message=Message.objects.filter(u_id=uid).order_by("-id")
    notice = Notice.objects.all()
    num=0
    if not message.exists():
        message="no"
    else:
        for item in message:
            num+=1
    if not notice.exists():
        notice="no"
    else:
        for item in notice:
            num += 1
    if num==0:
        num=""
    return render(request, "message.html",{'message':message,'notice':notice,'num':num})

def zixun(request):
    uid=request.user.id
    message = Message.objects.filter(u_id=uid)
    notice = Notice.objects.all()
    num = 0
    if message.exists():
        for item in message:
            num += 1
    if notice.exists():
        for item in notice:
            num += 1
    if num == 0:
        num = ""
    res = Info.objects.all()
    for item in res:
        item.c_time = (item.c_time + datetime.timedelta(hours=8)).strftime("%H:%M")
        img = str(item.img).split("financing/")[-1]
        item.img = img
    videos = Video.objects.all()
    for item in videos:
        item.c_time=(item.c_time+datetime.timedelta(hours=8)).strftime("%H:%M")
        vid = str(item.vid).split("financing/")[-1]
        item.vid = vid
        pnums=Pl.objects.filter(v_id=item.id)
        pnum = 0
        for i in pnums:
            pnum+=1
        item.num=pnum
    return render(request,"zindex_zx.html",{'res':res,'videos':videos,'num':num})
# 评论
def comment(request,id):
    if request.method == 'GET':
        nr = Video.objects.filter(id=id).first()
        cons = Pl.objects.filter(v_id=id)
        nr.vid=str(nr.vid).split("financing/")[-1]
        nr.c_time = (nr.c_time + datetime.timedelta(hours=8)).strftime("%H:%M")
        num=0
        for item in cons:
            num+=1
            item.c_time =(item.c_time + datetime.timedelta(hours=8)).strftime("%m-%d %H:%M")
            item.u_id = User.objects.filter(id=item.u_id).first()
        return render(request,"zindex_sp.html",{'nr':nr,'cons':cons,'num':num})
def compl(request,id):
    if request.method == 'GET':
        return render(request, "zindex_pl.html", {'v_id': id})
@csrf_exempt
def commit(request):
    if request.method == 'POST':
        u_id = request.user.id
        con = request.POST.get('pl', None)
        v_id = request.POST.get('v_id', None)
        Pl.objects.create(con=con, u_id=u_id, v_id=v_id)
        return HttpResponse(json.dumps({"message":"ok",'v_id':v_id}))
#个人中心
def myindex(request):
    uid=request.user.id
    we = MyInfo.objects.filter(user_id=uid).first()
    if we:
        mystr5 = str(we.tel)
        mystr6 = mystr5[0:3]
        mystr7 = mystr5[-2:]
    else:
        we=mystr6=mystr7=""
    message = Message.objects.filter(u_id=uid)
    notice = Notice.objects.all()
    num = 0
    if message.exists():
        for item in message:
            num += 1
    if notice.exists():
        for item in notice:
            num += 1
    if num == 0:
        num = ""
    pids=Selfproduct.objects.filter(u_id=uid)
    products=[]
    for item in pids:
        p=Product.objects.filter(id=item.p_id).first()
        pro=[p.name,p.money,item.y_earning,item.h_earning]
        products.append(pro)
    return render(request,"indexjds5.html",{'we':we,'mystr6':mystr6,'mystr7':mystr7,'num':num,'products':products})
def add(request):
    return render(request,"indexjds1.html")
def cate(request):
    uid = request.user.id
    if uid:
        wf = Ycard.objects.filter(u_id=uid).all()
        arr1 = []
        arr2 = []
        for item in wf:
            if item.bank == "建设银行":
                mystr = str(item.card_number)
                mystr2 = mystr[-4:]
                # print(mystr2)
                arr1.append(mystr2)
            elif item.bank == "交通银行":
                mystr1 = str(item.card_number)
                mystr3 = mystr1[-4:]
                # print(mystr3)
                arr2.append(mystr3)
        return render(request,"indexjds2.html",{'wf':wf,'arr1':arr1,'arr2':arr2})
    else:
        return render(request, "indexjds2.html", {'wf': "", 'arr1': "", 'arr2': ""})

def person(request):
    uid = request.user.id
    if uid:
        kcard = Kcard.objects.filter(u_id=uid)
        kcard_a = User.objects.filter(id=uid).first()
        x = datetime.datetime.now()#当前时间
        delta = datetime.timedelta(days=30)
        n_days = kcard_a.date_joined + delta#用户创建大于30天的时间
        d1 = x.strftime('%Y-%m-%d %H:%M:%S')
        d2 = n_days.strftime('%Y-%m-%d %H:%M:%S')
        d3 = datetime.datetime.strptime(d1, '%Y-%m-%d %H:%M:%S')   #当前时间
        d4 = datetime.datetime.strptime(d2, '%Y-%m-%d %H:%M:%S')   #30后时间
        now_x=0
        if d3>=d4:
            now_x = 1
        else:
            now_x = 2
        arr1 = []
        arr2 = []
        for item in kcard:
            xx = item.yxq_date
            delta_b = datetime.timedelta(days=365 * xx)
            arr1.append(xx)    #有效年限
            arr2.append(delta_b)   #365天
        arr3 = []
        for i in kcard:
            yy = i.c_time
            arr3.append(yy)    #卡片创建时间
        arr4=[]
        for i1,i2 in zip(arr2,arr3):
            zz = i1+i2
            arr4.append(zz)      #卡片到期时间
        arr5=[]
        for i3 in arr4:
            i5 = i3.strftime('%Y.%m.%d')
            arr5.append(i5)     #卡片到期时间转格式
        arr7=[]
        for i6,i7 in zip(arr1,arr5):
            arr6 = []
            arr6.append(i6)
            arr6.append(i7)
            arr7.append(arr6)      #有效年限和卡片到时期间
        arr8 = []
        for i9 in arr4:
            i10 = i9.strftime('%Y-%m-%d %H:%M:%S')
            arr8.append(i10)   #卡片到期时间转换
        arr9=[]
        for i10 in arr8:
            i11 = datetime.datetime.strptime(i10, '%Y-%m-%d %H:%M:%S')
            arr9.append(i11)    #卡片到期时间转换
        arr10 = []
        for i11 in arr9:
            if i11 > d3:
                arr10.append(1)
            else:
                arr10.append(0)    #每张是否到期，1没有到期，0到期
        arr11 = []
        for i12,i13 in zip(arr1,arr10):
            arr12 = []
            arr12.append(i12)
            arr12.append(i13)
            arr11.append(arr12)      #每张卡片的有效年限和是否到期
        return render(request,"indexjds3.html",{'kcard':kcard,'now_x':now_x,'arr1':arr1,'arr5':arr5,'arr7':arr7,'arr11':arr11})
    else:
        return render(request,"indexjds3.html",{'kcard':"",'now_x':"",'arr1':"",'arr5':"",'arr7':"",'arr11':""})
from django.views.decorators.csrf import csrf_exempt
@csrf_exempt
def addcate(request):
    uid = request.user.id
    if uid:
        wi = Con.objects.filter(u_id=uid).all()
    else:
        wi=""
    return render(request,"indexjds4.html",{'wi':wi})
@csrf_exempt
def list_cate(request):
    uid = request.user.id
    #     # print(len(wi))
    if request.method == "POST":
        user_con = request.POST.get("gt_con", None)
        print(user_con)
        #     k_id = 3
        Con.objects.create(gt_con=user_con, talker=3, u_id=uid)


    return redirect(reverse("financing:addcate"))

def loginout(request):
    logout(request)
    return redirect(reverse("financing:index"))
