.class Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollFindSensor.java"

# interfaces
.implements Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 117
    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;

    const v1, 0x7f0e03c8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;

    invoke-virtual {v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->finish()V

    .line 120
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->-get0(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0, v2}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->-set0(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;Z)Z

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->-wrap0(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;)V

    .line 115
    :cond_2
    return-void
.end method

.method public onEnrollmentHelp(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 111
    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 3
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->-set0(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;Z)Z

    .line 104
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oneplus--onEnrollmentProgressChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v2}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->-get1(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;)Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->-get1(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;)Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->-get1(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;)Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->-wrap0(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;)V

    goto :goto_0
.end method
