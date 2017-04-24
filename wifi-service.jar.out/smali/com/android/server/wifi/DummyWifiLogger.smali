.class Lcom/android/server/wifi/DummyWifiLogger;
.super Ljava/lang/Object;
.source "DummyWifiLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized captureAlertData(I[B)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "alertData"    # [B

    .prologue
    .line 23
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized captureBugReportData(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 21
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    const-string v0, "*** firmware logging disabled, no debug data ****"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    const-string v0, "set config_wifi_enable_wifi_firmware_debugging to enable"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startLogging(Z)V
    .locals 0
    .param p1, "verboseEnabled"    # Z

    .prologue
    .line 13
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized startPacketLog()V
    .locals 0

    .prologue
    .line 15
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stopLogging()V
    .locals 0

    .prologue
    .line 19
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stopPacketLog()V
    .locals 0

    .prologue
    .line 17
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
