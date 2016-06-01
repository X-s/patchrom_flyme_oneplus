.class public Lcom/oppo/tribune/SignInPrepareActivity;
.super Lcom/oppo/tribune/BaseActivity;
.source "SignInPrepareActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBackListener:Landroid/view/View$OnClickListener;

.field private mFinishListener:Lcom/oppo/tribune/usercenter/login/QuickLoginController$ActivityFinishListener;

.field private mLoginListener:Lcom/oppo/tribune/util/NetCheckService$LoginListener;

.field private mLoginSuccCallBack:Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

.field private mQuickLoginController:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

.field private mQuickLoginView:Lcom/oppo/tribune/usercenter/login/QuickLoginView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/oppo/tribune/SignInPrepareActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/SignInPrepareActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/oppo/tribune/BaseActivity;-><init>()V

    .line 95
    new-instance v0, Lcom/oppo/tribune/SignInPrepareActivity$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/SignInPrepareActivity$1;-><init>(Lcom/oppo/tribune/SignInPrepareActivity;)V

    iput-object v0, p0, Lcom/oppo/tribune/SignInPrepareActivity;->mFinishListener:Lcom/oppo/tribune/usercenter/login/QuickLoginController$ActivityFinishListener;

    .line 103
    new-instance v0, Lcom/oppo/tribune/SignInPrepareActivity$2;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/SignInPrepareActivity$2;-><init>(Lcom/oppo/tribune/SignInPrepareActivity;)V

    iput-object v0, p0, Lcom/oppo/tribune/SignInPrepareActivity;->mLoginSuccCallBack:Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

    .line 114
    new-instance v0, Lcom/oppo/tribune/SignInPrepareActivity$3;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/SignInPrepareActivity$3;-><init>(Lcom/oppo/tribune/SignInPrepareActivity;)V

    iput-object v0, p0, Lcom/oppo/tribune/SignInPrepareActivity;->mBackListener:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Lcom/oppo/tribune/SignInPrepareActivity$4;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/SignInPrepareActivity$4;-><init>(Lcom/oppo/tribune/SignInPrepareActivity;)V

    iput-object v0, p0, Lcom/oppo/tribune/SignInPrepareActivity;->mLoginListener:Lcom/oppo/tribune/util/NetCheckService$LoginListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/SignInPrepareActivity;)Lcom/oppo/tribune/usercenter/login/QuickLoginView;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/SignInPrepareActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oppo/tribune/SignInPrepareActivity;->mQuickLoginView:Lcom/oppo/tribune/usercenter/login/QuickLoginView;

    return-object v0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 83
    const v1, 0x7f0b01dd

    invoke-static {p0, v1}, Lcom/oppo/tribune/util/Views;->findViewById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/ui/CommunityHeadView;

    .line 84
    .local v0, "headView":Lcom/oppo/tribune/ui/CommunityHeadView;
    const v1, 0x7f0c0053

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/CommunityHeadView;->setCenterResource(I)V

    .line 85
    const v1, 0x7f0c0077

    const v2, 0x7f0201e0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/ui/CommunityHeadView;->setLeftDetail(II)V

    .line 86
    iget-object v1, p0, Lcom/oppo/tribune/SignInPrepareActivity;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v3, v3}, Lcom/oppo/tribune/ui/CommunityHeadView;->setResourceClkLsn(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 88
    const v1, 0x7f0b01dc

    invoke-static {p0, v1}, Lcom/oppo/tribune/util/Views;->findViewById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/usercenter/login/QuickLoginView;

    iput-object v1, p0, Lcom/oppo/tribune/SignInPrepareActivity;->mQuickLoginView:Lcom/oppo/tribune/usercenter/login/QuickLoginView;

    .line 89
    new-instance v1, Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    iget-object v2, p0, Lcom/oppo/tribune/SignInPrepareActivity;->mQuickLoginView:Lcom/oppo/tribune/usercenter/login/QuickLoginView;

    invoke-direct {v1, p0, v2}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;-><init>(Landroid/app/Activity;Lcom/oppo/tribune/usercenter/login/QuickLoginView;)V

    iput-object v1, p0, Lcom/oppo/tribune/SignInPrepareActivity;->mQuickLoginController:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    .line 90
    iget-object v1, p0, Lcom/oppo/tribune/SignInPrepareActivity;->mQuickLoginController:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    iget-object v2, p0, Lcom/oppo/tribune/SignInPrepareActivity;->mLoginSuccCallBack:Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->setLoginSuccessCallBack(Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;)V

    .line 91
    iget-object v1, p0, Lcom/oppo/tribune/SignInPrepareActivity;->mQuickLoginController:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    iget-object v2, p0, Lcom/oppo/tribune/SignInPrepareActivity;->mFinishListener:Lcom/oppo/tribune/usercenter/login/QuickLoginController$ActivityFinishListener;

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->setActivityFinishListener(Lcom/oppo/tribune/usercenter/login/QuickLoginController$ActivityFinishListener;)V

    .line 93
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/oppo/tribune/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {p0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->hasTokenUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const v0, 0x7f0c0059

    invoke-static {p0, v0, v1}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    invoke-virtual {p0}, Lcom/oppo/tribune/SignInPrepareActivity;->finish()V

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    const v0, 0x7f030068

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/SignInPrepareActivity;->setContentView(I)V

    .line 54
    invoke-direct {p0, p0}, Lcom/oppo/tribune/SignInPrepareActivity;->initialize(Landroid/content/Context;)V

    .line 55
    iget-object v0, p0, Lcom/oppo/tribune/SignInPrepareActivity;->mLoginListener:Lcom/oppo/tribune/util/NetCheckService$LoginListener;

    invoke-static {v0, v1}, Lcom/oppo/tribune/util/NetCheckService;->addLoginListener(Lcom/oppo/tribune/util/NetCheckService$LoginListener;Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/tribune/SignInPrepareActivity;->mLoginListener:Lcom/oppo/tribune/util/NetCheckService$LoginListener;

    invoke-static {v0}, Lcom/oppo/tribune/util/NetCheckService;->removeLoginListener(Lcom/oppo/tribune/util/NetCheckService$LoginListener;)V

    .line 79
    invoke-super {p0}, Lcom/oppo/tribune/BaseActivity;->onDestroy()V

    .line 80
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/oppo/tribune/BaseActivity;->onResume()V

    .line 65
    invoke-static {p0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->hasTokenUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const v0, 0x7f0c0059

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    invoke-virtual {p0}, Lcom/oppo/tribune/SignInPrepareActivity;->finish()V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/SignInPrepareActivity;->mQuickLoginController:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->loadSignedUserName()V

    goto :goto_0
.end method
