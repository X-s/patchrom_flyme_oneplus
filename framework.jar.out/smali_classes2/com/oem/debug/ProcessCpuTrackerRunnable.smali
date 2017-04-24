.class public Lcom/oem/debug/ProcessCpuTrackerRunnable;
.super Ljava/lang/Object;
.source "ProcessCpuTrackerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ProcessCpuTracker"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oem/debug/ProcessCpuTrackerRunnable;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 30
    sget-boolean v0, Lcom/oem/debug/ProcessCpuTrackerRunnable;->DEBUG:Z

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oem/debug/ProcessCpuTrackerRunnable$1;

    invoke-direct {v1, p0}, Lcom/oem/debug/ProcessCpuTrackerRunnable$1;-><init>(Lcom/oem/debug/ProcessCpuTrackerRunnable;)V

    const-string v2, "ProcessCpuTrackerThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
