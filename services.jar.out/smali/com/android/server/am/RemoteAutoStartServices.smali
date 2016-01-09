.class public Lcom/android/server/am/RemoteAutoStartServices;
.super Landroid/app/Service;
.source "RemoteAutoStartServices.java"


# instance fields
.field private final mBinder:Lcom/android/server/am/IAutoStartService$Stub;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/RemoteAutoStartServices;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Lcom/android/server/am/RemoteAutoStartServices$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/RemoteAutoStartServices$1;-><init>(Lcom/android/server/am/RemoteAutoStartServices;)V

    iput-object v0, p0, Lcom/android/server/am/RemoteAutoStartServices;->mBinder:Lcom/android/server/am/IAutoStartService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/RemoteAutoStartServices;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/RemoteAutoStartServices;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/server/am/RemoteAutoStartServices;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/server/am/RemoteAutoStartServices;->mBinder:Lcom/android/server/am/IAutoStartService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/server/am/RemoteAutoStartServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/RemoteAutoStartServices;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method
