.class Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;
.super Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.source "FingerprintEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFingerprintHardwareBad:Z

.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)V
    .locals 1

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->mFingerprintHardwareBad:Z

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x1

    .line 162
    if-ne p1, v3, :cond_1

    .line 163
    const-string v0, "FingerprintEnrollSidecar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fingerprint Hardwarebad--errMsgId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  errString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->mFingerprintHardwareBad:Z

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->startEnrollment()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)V

    .line 166
    iput-boolean v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->mFingerprintHardwareBad:Z

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;->onEnrollmentHelp(Ljava/lang/CharSequence;)V

    .line 157
    :cond_0
    return-void
.end method

.method public onEnrollmentProgress(I)V
    .locals 2
    .param p1, "remaining"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->access$000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I
    invoke-static {v0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->access$002(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;I)I

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I
    invoke-static {v0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->access$102(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;I)I

    .line 144
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mDone:Z
    invoke-static {v1, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->access$202(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;Z)Z

    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->access$000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;->onEnrollmentProgressChange(II)V

    .line 148
    :cond_1
    return-void

    .line 144
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
