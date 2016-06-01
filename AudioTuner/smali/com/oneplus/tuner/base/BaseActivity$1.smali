.class Lcom/oneplus/tuner/base/BaseActivity$1;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/base/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/base/BaseActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v5, 0x7f02018e

    const/4 v4, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 105
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 107
    :pswitch_0
    const-string v2, "shuqi"

    const-string v3, "MSG_LOGIN_SUCCESS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 109
    .local v1, "mobile":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v2, v2, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iget-object v2, v2, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v2, v2, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iget-object v2, v2, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mUserIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-virtual {v3}, Lcom/oneplus/tuner/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v2, v2, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iget-object v2, v2, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mUserLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_0

    .line 115
    .end local v1    # "mobile":Ljava/lang/String;
    :pswitch_1
    const-string v2, "shuqi"

    const-string v3, "MSG_LOGIN_FAIL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-boolean v2, v2, Lcom/oneplus/tuner/base/BaseActivity;->mIsNetworkAvailable:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getAccountLoginStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-boolean v2, v2, Lcom/oneplus/tuner/base/BaseActivity;->mIsSlideMenuEnable:Z

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v2, v2, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iget-object v2, v2, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mUserName:Landroid/widget/TextView;

    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getAccountInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v2, v2, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iget-object v2, v2, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mUserIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-virtual {v3}, Lcom/oneplus/tuner/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v2, v2, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iget-object v2, v2, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mUserLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-boolean v2, v2, Lcom/oneplus/tuner/base/BaseActivity;->mIsSlideMenuEnable:Z

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v2, v2, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iget-object v2, v2, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mUserName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-virtual {v3}, Lcom/oneplus/tuner/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c06e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v2, v2, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iget-object v2, v2, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mUserIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-virtual {v3}, Lcom/oneplus/tuner/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020191

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v2, v2, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iget-object v2, v2, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mUserLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto/16 :goto_0

    .line 133
    :pswitch_2
    const-string v2, ""

    invoke-static {v2}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setAccountInfo(Ljava/lang/String;)V

    .line 134
    invoke-static {v4}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setAccountLoginStatus(Z)V

    .line 135
    const-string v2, ""

    invoke-static {v2}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setLoginToken(Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getLoginToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oneplus/tuner/base/BaseActivity;->mToken:Ljava/lang/String;

    .line 137
    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getAccountInfo()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oneplus/tuner/base/BaseActivity;->mAccountName:Ljava/lang/String;

    .line 139
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity$1;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-virtual {v2}, Lcom/oneplus/tuner/base/BaseActivity;->authToken()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
