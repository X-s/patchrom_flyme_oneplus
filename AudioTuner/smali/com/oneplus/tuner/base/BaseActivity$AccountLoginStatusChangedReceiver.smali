.class Lcom/oneplus/tuner/base/BaseActivity$AccountLoginStatusChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/base/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountLoginStatusChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/base/BaseActivity;


# direct methods
.method private constructor <init>(Lcom/oneplus/tuner/base/BaseActivity;)V
    .locals 0

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/oneplus/tuner/base/BaseActivity$AccountLoginStatusChangedReceiver;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/tuner/base/BaseActivity;Lcom/oneplus/tuner/base/BaseActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/tuner/base/BaseActivity;
    .param p2, "x1"    # Lcom/oneplus/tuner/base/BaseActivity$1;

    .prologue
    .line 1004
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/base/BaseActivity$AccountLoginStatusChangedReceiver;-><init>(Lcom/oneplus/tuner/base/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1008
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oneplus.tuner.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity$AccountLoginStatusChangedReceiver;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/base/BaseActivity;->doRefreshOrGetToken(Z)V

    .line 1012
    :cond_0
    return-void
.end method
