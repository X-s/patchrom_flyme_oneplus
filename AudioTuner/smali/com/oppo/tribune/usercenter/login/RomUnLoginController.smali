.class public Lcom/oppo/tribune/usercenter/login/RomUnLoginController;
.super Ljava/lang/Object;
.source "RomUnLoginController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mRomLoginUtils:Lcom/oppo/tribune/RomLoginUtils;

.field private mRomUnLoginView:Lcom/oppo/tribune/usercenter/login/RomUnLoginView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/oppo/tribune/usercenter/login/RomUnLoginController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/usercenter/login/RomUnLoginController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/tribune/usercenter/login/RomUnLoginView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "unLoginView"    # Lcom/oppo/tribune/usercenter/login/RomUnLoginView;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/oppo/tribune/usercenter/login/RomUnLoginController$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/usercenter/login/RomUnLoginController$1;-><init>(Lcom/oppo/tribune/usercenter/login/RomUnLoginController;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/RomUnLoginController;->mClickListener:Landroid/view/View$OnClickListener;

    .line 22
    iput-object p2, p0, Lcom/oppo/tribune/usercenter/login/RomUnLoginController;->mRomUnLoginView:Lcom/oppo/tribune/usercenter/login/RomUnLoginView;

    .line 23
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/RomUnLoginController;->mRomUnLoginView:Lcom/oppo/tribune/usercenter/login/RomUnLoginView;

    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/RomUnLoginController;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/RomUnLoginView;->setLoginClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    new-instance v0, Lcom/oppo/tribune/RomLoginUtils;

    invoke-direct {v0, p1}, Lcom/oppo/tribune/RomLoginUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/RomUnLoginController;->mRomLoginUtils:Lcom/oppo/tribune/RomLoginUtils;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/usercenter/login/RomUnLoginController;)Lcom/oppo/tribune/RomLoginUtils;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/RomUnLoginController;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/RomUnLoginController;->mRomLoginUtils:Lcom/oppo/tribune/RomLoginUtils;

    return-object v0
.end method


# virtual methods
.method public setLoginBtnText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/RomUnLoginController;->mRomUnLoginView:Lcom/oppo/tribune/usercenter/login/RomUnLoginView;

    invoke-virtual {v0, p1}, Lcom/oppo/tribune/usercenter/login/RomUnLoginView;->setLoginBtnText(I)V

    .line 43
    return-void
.end method

.method public setLoginSuccessCallBack(Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;)V
    .locals 1
    .param p1, "callback"    # Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/RomUnLoginController;->mRomLoginUtils:Lcom/oppo/tribune/RomLoginUtils;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/RomUnLoginController;->mRomLoginUtils:Lcom/oppo/tribune/RomLoginUtils;

    invoke-virtual {v0, p1}, Lcom/oppo/tribune/RomLoginUtils;->setLoginSuccCallBack(Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;)V

    .line 39
    :cond_0
    return-void
.end method
