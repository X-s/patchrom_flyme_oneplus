.class final Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
.super Ljava/lang/Thread;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpProbes(Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProbeThread"
.end annotation


# static fields
.field public static final SEND_HTTP:I = 0x1

.field public static final SEND_HTTPS:I = 0x0

.field public static final SEND_HTTP_CN:I = 0x2


# instance fields
.field private final mIsChinaProbe:Z

.field private final mIsHttps:Z

.field private volatile mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;

.field final synthetic val$httpChinaUrl:Ljava/net/URL;

.field final synthetic val$httpUrl:Ljava/net/URL;

.field final synthetic val$httpsUrl:Ljava/net/URL;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;ILjava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "type"    # I
    .param p3, "val$httpsUrl"    # Ljava/net/URL;
    .param p4, "val$httpChinaUrl"    # Ljava/net/URL;
    .param p5, "val$httpUrl"    # Ljava/net/URL;
    .param p6, "val$latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 907
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpsUrl:Ljava/net/URL;

    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpChinaUrl:Ljava/net/URL;

    iput-object p5, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpUrl:Ljava/net/URL;

    iput-object p6, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 901
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    .line 908
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    .line 909
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsChinaProbe:Z

    .line 907
    return-void

    :cond_0
    move v0, v2

    .line 908
    goto :goto_0

    :cond_1
    move v1, v2

    .line 909
    goto :goto_1
.end method


# virtual methods
.method public result()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 918
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    if-eqz v0, :cond_4

    .line 919
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpsUrl:Ljava/net/URL;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    .line 925
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_2

    .line 926
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    .line 925
    if-nez v0, :cond_2

    .line 927
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsChinaProbe:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    .line 925
    if-eqz v0, :cond_7

    .line 929
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap0(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsChinaProbe:Z

    if-eqz v0, :cond_6

    .line 932
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 933
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 920
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsChinaProbe:Z

    if-eqz v0, :cond_5

    .line 921
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpChinaUrl:Ljava/net/URL;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    goto :goto_0

    .line 923
    :cond_5
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpUrl:Ljava/net/URL;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    goto :goto_0

    .line 938
    :cond_6
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " china SIM, waiting for probe result"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap6(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V

    .line 942
    :cond_7
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 917
    return-void
.end method
