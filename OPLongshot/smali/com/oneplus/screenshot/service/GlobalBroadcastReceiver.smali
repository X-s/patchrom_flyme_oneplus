.class public Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GlobalBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;
    }
.end annotation


# static fields
.field private static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mListener:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;

    .line 24
    iput-object v1, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 30
    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mListener:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;

    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 33
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mListener:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mListener:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;

    invoke-interface {v2}, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;->onCloseSystemDialogs()V

    .line 49
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    return-void
.end method
