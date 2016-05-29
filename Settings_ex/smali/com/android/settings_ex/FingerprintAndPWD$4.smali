.class Lcom/android/settings_ex/FingerprintAndPWD$4;
.super Ljava/lang/Object;
.source "FingerprintAndPWD.java"

# interfaces
.implements Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/FingerprintAndPWD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FingerprintAndPWD;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FingerprintAndPWD;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/settings_ex/FingerprintAndPWD$4;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(III)V
    .locals 5
    .param p1, "result"    # I
    .param p2, "id"    # I
    .param p3, "userData"    # I

    .prologue
    .line 445
    const-string v0, "FingerprintAndPWD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult, result ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/16 v0, 0x64

    if-ne p1, v0, :cond_4

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD$4;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # getter for: Lcom/android/settings_ex/FingerprintAndPWD;->mLastIdentifiedTime:J
    invoke-static {v2}, Lcom/android/settings_ex/FingerprintAndPWD;->access$700(Lcom/android/settings_ex/FingerprintAndPWD;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$4;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/FingerprintAndPWD;->onIdentified(I)V

    .line 451
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$4;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/settings_ex/FingerprintAndPWD;->mLastIdentifiedTime:J
    invoke-static {v0, v2, v3}, Lcom/android/settings_ex/FingerprintAndPWD;->access$702(Lcom/android/settings_ex/FingerprintAndPWD;J)J

    .line 453
    :cond_0
    # setter for: Lcom/android/settings_ex/FingerprintAndPWD;->mLastFingerId:I
    invoke-static {p2}, Lcom/android/settings_ex/FingerprintAndPWD;->access$802(I)I

    .line 454
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$4;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    invoke-virtual {v0}, Lcom/android/settings_ex/FingerprintAndPWD;->retry()V

    .line 459
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$4;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # getter for: Lcom/android/settings_ex/FingerprintAndPWD;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/settings_ex/FingerprintAndPWD;->access$900(Lcom/android/settings_ex/FingerprintAndPWD;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$4;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # getter for: Lcom/android/settings_ex/FingerprintAndPWD;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/settings_ex/FingerprintAndPWD;->access$900(Lcom/android/settings_ex/FingerprintAndPWD;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$4;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # getter for: Lcom/android/settings_ex/FingerprintAndPWD;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/settings_ex/FingerprintAndPWD;->access$900(Lcom/android/settings_ex/FingerprintAndPWD;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_3

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$4;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # invokes: Lcom/android/settings_ex/FingerprintAndPWD;->acquireWakeLock()V
    invoke-static {v0}, Lcom/android/settings_ex/FingerprintAndPWD;->access$1000(Lcom/android/settings_ex/FingerprintAndPWD;)V

    .line 462
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$4;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # getter for: Lcom/android/settings_ex/FingerprintAndPWD;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/FingerprintAndPWD;->access$300(Lcom/android/settings_ex/FingerprintAndPWD;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD$4;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # getter for: Lcom/android/settings_ex/FingerprintAndPWD;->mWakeLockUseRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings_ex/FingerprintAndPWD;->access$1100(Lcom/android/settings_ex/FingerprintAndPWD;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 463
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$4;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # getter for: Lcom/android/settings_ex/FingerprintAndPWD;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/FingerprintAndPWD;->access$300(Lcom/android/settings_ex/FingerprintAndPWD;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD$4;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # getter for: Lcom/android/settings_ex/FingerprintAndPWD;->mWakeLockUseRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings_ex/FingerprintAndPWD;->access$1100(Lcom/android/settings_ex/FingerprintAndPWD;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD$4;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    invoke-virtual {v2}, Lcom/android/settings_ex/FingerprintAndPWD;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 466
    return-void

    .line 455
    :cond_4
    const/16 v0, 0x67

    if-ne p1, v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$4;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    invoke-virtual {v0}, Lcom/android/settings_ex/FingerprintAndPWD;->onNoMatch()V

    .line 457
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$4;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    invoke-virtual {v0}, Lcom/android/settings_ex/FingerprintAndPWD;->retry()V

    goto :goto_0
.end method

.method public onStatus(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "userData"    # I

    .prologue
    .line 439
    const-string v0, "FingerprintAndPWD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatus, status =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void
.end method
