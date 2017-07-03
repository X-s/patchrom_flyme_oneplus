.class final Lcom/oneplus/base/ThreadMonitor$ThreadMonitorHandle;
.super Lcom/oneplus/base/Handle;
.source "ThreadMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/ThreadMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadMonitorHandle"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "Thread Monitor Handle"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 83
    # invokes: Lcom/oneplus/base/ThreadMonitor;->stopMonitorCurrentThread(Lcom/oneplus/base/ThreadMonitor$ThreadMonitorHandle;)V
    invoke-static {p0}, Lcom/oneplus/base/ThreadMonitor;->access$1(Lcom/oneplus/base/ThreadMonitor$ThreadMonitorHandle;)V

    .line 84
    return-void
.end method
