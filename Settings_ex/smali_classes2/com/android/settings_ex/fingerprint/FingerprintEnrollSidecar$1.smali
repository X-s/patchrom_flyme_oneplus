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
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->-get1(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->-get1(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->-set1(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;Z)Z

    .line 141
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->-get1(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->-get1(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;->onEnrollmentHelp(Ljava/lang/CharSequence;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onEnrollmentProgress(I)V
    .locals 3
    .param p1, "remaining"    # I

    .prologue
    const/4 v0, 0x0

    .line 123
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->-get0(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v1, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->-set3(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;I)I

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v1, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->-set2(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;I)I

    .line 127
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->-set0(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;Z)Z

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->-get1(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->-get1(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->-get0(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;->onEnrollmentProgressChange(II)V

    .line 122
    :cond_2
    return-void
.end method
