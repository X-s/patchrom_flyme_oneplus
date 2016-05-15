.class Lcom/android/internal/policy/impl/FingerprintUnlock$1;
.super Ljava/lang/Object;
.source "FingerprintUnlock.java"

# interfaces
.implements Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/FingerprintUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/FingerprintUnlock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/FingerprintUnlock;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock$1;->this$0:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(III)V
    .locals 6
    .param p1, "result"    # I
    .param p2, "id"    # I
    .param p3, "userData"    # I

    .prologue
    const/4 v2, 0x0

    .line 412
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock$1;->this$0:Lcom/android/internal/policy/impl/FingerprintUnlock;

    # getter for: Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->access$000(Lcom/android/internal/policy/impl/FingerprintUnlock;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResult, result ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", userData = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock$1;->this$0:Lcom/android/internal/policy/impl/FingerprintUnlock;

    # getter for: Lcom/android/internal/policy/impl/FingerprintUnlock;->mCallback:Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->access$100(Lcom/android/internal/policy/impl/FingerprintUnlock;)Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock$1;->this$0:Lcom/android/internal/policy/impl/FingerprintUnlock;

    # getter for: Lcom/android/internal/policy/impl/FingerprintUnlock;->mCallback:Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->access$100(Lcom/android/internal/policy/impl/FingerprintUnlock;)Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;

    move-result-object v0

    invoke-interface {v0, p2, v2, v2}, Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;->onIdentified(IZI)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    const/16 v0, 0x67

    if-ne p1, v0, :cond_0

    .line 421
    const/16 v0, 0x23

    if-gt p2, v0, :cond_2

    sget-boolean v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mScreenState:Z

    if-eqz v0, :cond_0

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock$1;->this$0:Lcom/android/internal/policy/impl/FingerprintUnlock;

    # operator++ for: Lcom/android/internal/policy/impl/FingerprintUnlock;->mAttempts:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->access$208(Lcom/android/internal/policy/impl/FingerprintUnlock;)I

    .line 423
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock$1;->this$0:Lcom/android/internal/policy/impl/FingerprintUnlock;

    # getter for: Lcom/android/internal/policy/impl/FingerprintUnlock;->mCallback:Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->access$100(Lcom/android/internal/policy/impl/FingerprintUnlock;)Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 424
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock$1;->this$0:Lcom/android/internal/policy/impl/FingerprintUnlock;

    # getter for: Lcom/android/internal/policy/impl/FingerprintUnlock;->mCallback:Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->access$100(Lcom/android/internal/policy/impl/FingerprintUnlock;)Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock$1;->this$0:Lcom/android/internal/policy/impl/FingerprintUnlock;

    # getter for: Lcom/android/internal/policy/impl/FingerprintUnlock;->mAttempts:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/FingerprintUnlock;->access$200(Lcom/android/internal/policy/impl/FingerprintUnlock;)I

    move-result v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;->onNomatch(IIIII)V

    goto :goto_0

    .line 427
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock$1;->this$0:Lcom/android/internal/policy/impl/FingerprintUnlock;

    # getter for: Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->access$000(Lcom/android/internal/policy/impl/FingerprintUnlock;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RESULT_NO_MATCH  NO callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStatus(II)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "userData"    # I

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock$1;->this$0:Lcom/android/internal/policy/impl/FingerprintUnlock;

    # getter for: Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->access$000(Lcom/android/internal/policy/impl/FingerprintUnlock;)Ljava/lang/String;

    move-result-object v0

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

    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock$1;->this$0:Lcom/android/internal/policy/impl/FingerprintUnlock;

    # getter for: Lcom/android/internal/policy/impl/FingerprintUnlock;->mCallback:Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->access$100(Lcom/android/internal/policy/impl/FingerprintUnlock;)Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;->onStatus(II)V

    .line 402
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock$1;->this$0:Lcom/android/internal/policy/impl/FingerprintUnlock;

    iget-object v0, v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock$1;->this$0:Lcom/android/internal/policy/impl/FingerprintUnlock;

    iget-object v0, v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 408
    :cond_0
    return-void
.end method
