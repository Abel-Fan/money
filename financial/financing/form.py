from django.forms import ModelForm, Form, PasswordInput, CharField
from django.forms.widgets import PasswordInput, TextInput, Textarea, CheckboxInput, RadioSelect, Select
from captcha.fields import CaptchaField
from django.contrib.auth import authenticate
from django.core.exceptions import ValidationError
from django.contrib.auth.models import User

# ValidationError错误提醒的包
class Login(Form):
    name = CharField(label='用户名')
    password = CharField(widget=PasswordInput(), label='密码')
    # 自定义验证
    def clean(self):
        data = super().clean()  # super()提取所有数据
        name = data.get('name', None)
        password = data.get('password', None)
        if name and password:
            user = authenticate(username=name, password=password)
            if not user:
                raise ValidationError("登录失败，用户名或密码错误")
            else:
                self.user = user

class Zhuce(ModelForm):
    captcha = CaptchaField()
    class Meta:
        model = User
        fields = ['username', 'password']
        widgets = {
            'password': PasswordInput(),
        }