.class Lcom/android/settings_ex/FingerprintAndPWD$3;
.super Ljava/lang/Object;
.source "FingerprintAndPWD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FingerprintAndPWD;->initFingerprintManager()V
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
    .line 388
    iput-object p1, p0, Lcom/android/settings_ex/FingerprintAndPWD$3;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD$3;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # getter for: Lcom/android/settings_ex/FingerprintAndPWD;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/FingerprintAndPWD;->access$300(Lcom/android/settings_ex/FingerprintAndPWD;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 395
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD$3;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    invoke-static {}, Lcom/oneplus/fingerprints/service/FingerprintManager;->open()Lcom/oneplus/fingerprints/service/FingerprintManager;

    move-result-object v2

    # setter for: Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;
    invoke-static {v1, v2}, Lcom/android/settings_ex/FingerprintAndPWD;->access$402(Lcom/android/settings_ex/FingerprintAndPWD;Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager;

    .line 396
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD$3;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # getter for: Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings_ex/FingerprintAndPWD;->access$400(Lcom/android/settings_ex/FingerprintAndPWD;)Lcom/oneplus/fingerprints/service/FingerprintManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD$3;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # getter for: Lcom/android/settings_ex/FingerprintAndPWD;->mOnActivityResultAfterAddFinger:Z
    invoke-static {v1}, Lcom/android/settings_ex/FingerprintAndPWD;->access$500(Lcom/android/settings_ex/FingerprintAndPWD;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD$3;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    invoke-virtual {v1}, Lcom/android/settings_ex/FingerprintAndPWD;->checkFingerIdIsValid()V

    .line 399
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD$3;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings_ex/FingerprintAndPWD;->mOnActivityResultAfterAddFinger:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/FingerprintAndPWD;->access$502(Lcom/android/settings_ex/FingerprintAndPWD;Z)Z

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD$3;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # getter for: Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings_ex/FingerprintAndPWD;->access$400(Lcom/android/settings_ex/FingerprintAndPWD;)Lcom/oneplus/fingerprints/service/FingerprintManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD$3;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # getter for: Lcom/android/settings_ex/FingerprintAndPWD;->mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;
    invoke-static {v2}, Lcom/android/settings_ex/FingerprintAndPWD;->access$600(Lcom/android/settings_ex/FingerprintAndPWD;)Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oneplus/fingerprints/service/FingerprintManager;->startFpIdentify(Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;I[II)I

    .line 403
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD$3;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # getter for: Lcom/android/settings_ex/FingerprintAndPWD;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/FingerprintAndPWD;->access$300(Lcom/android/settings_ex/FingerprintAndPWD;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 413
    :goto_0
    return-void

    .line 405
    :cond_1
    const-string v1, "FingerprintAndPWD"

    const-string v2, "open FingerprintManager error on OPFingerPrintInputFragments onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/oneplus/fingerprints/service/UnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Lcom/oneplus/fingerprints/service/UnsupportedException;
    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/UnsupportedException;->printStackTrace()V

    goto :goto_0
.end method
