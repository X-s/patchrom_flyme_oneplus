.class public Lcom/android/server/SystemEventCollector;
.super Ljava/lang/Object;
.source "SystemEventCollector.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mModuleName:Ljava/lang/String;

.field private mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemEventCollector;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemEventCollector;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemEventCollector;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemEventCollector;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/server/SystemEventCollector;->mContext:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lcom/android/server/SystemEventCollector;->mModuleName:Ljava/lang/String;

    .line 15
    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    invoke-direct {v0, p1}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemEventCollector;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 12
    return-void
.end method


# virtual methods
.method public submit(Lcom/android/server/SystemEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/server/SystemEvent;

    .prologue
    .line 19
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/SystemEventCollector$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/SystemEventCollector$1;-><init>(Lcom/android/server/SystemEventCollector;Lcom/android/server/SystemEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    return-void
.end method
