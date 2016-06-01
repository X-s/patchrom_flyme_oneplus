.class public Lcom/oppo/tribune/usercenter/login/LoginActivity;
.super Lcom/oppo/tribune/BaseActivity;
.source "LoginActivity.java"


# instance fields
.field private final mBackButtonListener:Landroid/view/View$OnClickListener;

.field private mLoginController:Lcom/oppo/tribune/usercenter/login/LoginController;

.field private mLoginListener:Lcom/oppo/tribune/util/NetCheckService$LoginListener;

.field private mRomUnLoginController:Lcom/oppo/tribune/usercenter/login/RomUnLoginController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/oppo/tribune/BaseActivity;-><init>()V

    .line 123
    new-instance v0, Lcom/oppo/tribune/usercenter/login/LoginActivity$2;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/usercenter/login/LoginActivity$2;-><init>(Lcom/oppo/tribune/usercenter/login/LoginActivity;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity;->mLoginListener:Lcom/oppo/tribune/util/NetCheckService$LoginListener;

    .line 136
    new-instance v0, Lcom/oppo/tribune/usercenter/login/LoginActivity$3;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/usercenter/login/LoginActivity$3;-><init>(Lcom/oppo/tribune/usercenter/login/LoginActivity;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity;->mBackButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/usercenter/login/LoginActivity;)Lcom/oppo/tribune/usercenter/login/LoginController;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity;->mLoginController:Lcom/oppo/tribune/usercenter/login/LoginController;

    return-object v0
.end method

.method private getLoginSuccCallBack()Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/oppo/tribune/usercenter/login/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/usercenter/login/LoginActivity$1;-><init>(Lcom/oppo/tribune/usercenter/login/LoginActivity;)V

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 47
    const v4, 0x7f0b0134

    invoke-virtual {p0, v4}, Lcom/oppo/tribune/usercenter/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/ui/CommunityHeadView;

    .line 48
    .local v0, "headView":Lcom/oppo/tribune/ui/CommunityHeadView;
    const v4, 0x7f0c0077

    const v5, 0x7f0201e0

    invoke-virtual {v0, v4, v5}, Lcom/oppo/tribune/ui/CommunityHeadView;->setLeftDetail(II)V

    .line 49
    const v4, 0x7f0c0078

    invoke-virtual {v0, v4}, Lcom/oppo/tribune/ui/CommunityHeadView;->setCenterResource(I)V

    .line 50
    iget-object v4, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity;->mBackButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/oppo/tribune/ui/CommunityHeadView;->setLeftClkLsn(Landroid/view/View$OnClickListener;)V

    .line 51
    const v4, 0x7f0b0135

    invoke-static {p0, v4}, Lcom/oppo/tribune/util/Views;->findViewById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/tribune/usercenter/login/LoginView;

    .line 52
    .local v2, "loginView":Lcom/oppo/tribune/usercenter/login/LoginView;
    const v4, 0x7f0b0136

    invoke-static {p0, v4}, Lcom/oppo/tribune/util/Views;->findViewById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oppo/tribune/usercenter/login/RomUnLoginView;

    .line 54
    .local v3, "romUnLoginView":Lcom/oppo/tribune/usercenter/login/RomUnLoginView;
    invoke-static {}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->isRomLoginType(Landroid/content/Context;)Z

    move-result v1

    .line 56
    .local v1, "isRomLogin":Z
    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v2, v7}, Lcom/oppo/tribune/usercenter/login/LoginView;->setVisibility(I)V

    .line 58
    invoke-virtual {v3, v6}, Lcom/oppo/tribune/usercenter/login/RomUnLoginView;->setVisibility(I)V

    .line 59
    new-instance v4, Lcom/oppo/tribune/usercenter/login/RomUnLoginController;

    invoke-direct {v4, p0, v3}, Lcom/oppo/tribune/usercenter/login/RomUnLoginController;-><init>(Landroid/content/Context;Lcom/oppo/tribune/usercenter/login/RomUnLoginView;)V

    iput-object v4, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity;->mRomUnLoginController:Lcom/oppo/tribune/usercenter/login/RomUnLoginController;

    .line 61
    iget-object v4, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity;->mRomUnLoginController:Lcom/oppo/tribune/usercenter/login/RomUnLoginController;

    invoke-direct {p0}, Lcom/oppo/tribune/usercenter/login/LoginActivity;->getLoginSuccCallBack()Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oppo/tribune/usercenter/login/RomUnLoginController;->setLoginSuccessCallBack(Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;)V

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {v2, v6}, Lcom/oppo/tribune/usercenter/login/LoginView;->setVisibility(I)V

    .line 65
    invoke-virtual {v3, v7}, Lcom/oppo/tribune/usercenter/login/RomUnLoginView;->setVisibility(I)V

    .line 66
    new-instance v4, Lcom/oppo/tribune/usercenter/login/LoginController;

    invoke-direct {v4, p0, v2}, Lcom/oppo/tribune/usercenter/login/LoginController;-><init>(Landroid/content/Context;Lcom/oppo/tribune/usercenter/login/LoginView;)V

    iput-object v4, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity;->mLoginController:Lcom/oppo/tribune/usercenter/login/LoginController;

    .line 67
    iget-object v4, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity;->mLoginController:Lcom/oppo/tribune/usercenter/login/LoginController;

    invoke-direct {p0}, Lcom/oppo/tribune/usercenter/login/LoginActivity;->getLoginSuccCallBack()Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oppo/tribune/usercenter/login/LoginController;->setLoginSuccessCallBack(Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/oppo/tribune/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/usercenter/login/LoginActivity;->setContentView(I)V

    .line 38
    invoke-direct {p0}, Lcom/oppo/tribune/usercenter/login/LoginActivity;->init()V

    .line 39
    const v0, 0x5f61365

    invoke-static {p0, v0}, Lcom/oppo/tribune/util/Utils;->record(Landroid/content/Context;I)V

    .line 40
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity;->mLoginListener:Lcom/oppo/tribune/util/NetCheckService$LoginListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oppo/tribune/util/NetCheckService;->addLoginListener(Lcom/oppo/tribune/util/NetCheckService$LoginListener;Z)V

    .line 41
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/oppo/tribune/BaseActivity;->onDestroy()V

    .line 86
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity;->mLoginListener:Lcom/oppo/tribune/util/NetCheckService$LoginListener;

    invoke-static {v0}, Lcom/oppo/tribune/util/NetCheckService;->removeLoginListener(Lcom/oppo/tribune/util/NetCheckService$LoginListener;)V

    .line 88
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity;->mLoginController:Lcom/oppo/tribune/usercenter/login/LoginController;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity;->mLoginController:Lcom/oppo/tribune/usercenter/login/LoginController;

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/LoginController;->dismissAccountPw()V

    .line 90
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity;->mLoginController:Lcom/oppo/tribune/usercenter/login/LoginController;

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/LoginController;->hideLoginPrcsDlg()V

    .line 92
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity;->mLoginController:Lcom/oppo/tribune/usercenter/login/LoginController;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity;->mLoginController:Lcom/oppo/tribune/usercenter/login/LoginController;

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/LoginController;->dismissAccountPw()V

    .line 120
    :cond_0
    invoke-super {p0}, Lcom/oppo/tribune/BaseActivity;->onPause()V

    .line 121
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 96
    invoke-super {p0}, Lcom/oppo/tribune/BaseActivity;->onResume()V

    .line 98
    invoke-virtual {p0}, Lcom/oppo/tribune/usercenter/login/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "username"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "username":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oppo/tribune/usercenter/login/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "password"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "password":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 106
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity;->mLoginController:Lcom/oppo/tribune/usercenter/login/LoginController;

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity;->mLoginController:Lcom/oppo/tribune/usercenter/login/LoginController;

    invoke-virtual {v2, v1, v0}, Lcom/oppo/tribune/usercenter/login/LoginController;->loginAfterRegisterSucc(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method
