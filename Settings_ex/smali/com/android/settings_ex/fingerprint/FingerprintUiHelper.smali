.class public Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$Callback;
    }
.end annotation


# static fields
.field private static final ERROR_TIMEOUT:J = 0x514L


# instance fields
.field private mCallback:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$Callback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIcon:Landroid/widget/ImageView;

.field private mResetErrorTextRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$Callback;)V
    .locals 2
    .param p1, "icon"    # Landroid/widget/ImageView;
    .param p2, "errorTextView"    # Landroid/widget/TextView;
    .param p3, "callback"    # Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$Callback;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    .line 107
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    .line 42
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 43
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    .line 44
    iput-object p2, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    .line 45
    iput-object p3, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mCallback:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$Callback;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private isListening()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFingerprintIconVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mCallback:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$Callback;->onFingerprintIconVisibilityChanged(Z)V

    .line 71
    return-void

    .line 69
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 75
    invoke-direct {p0, p2}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->showError(Ljava/lang/CharSequence;)V

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->setFingerprintIconVisibility(Z)V

    .line 77
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0d2e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->showError(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 81
    invoke-direct {p0, p2}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->showError(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mCallback:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$Callback;

    invoke-interface {v0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$Callback;->onAuthenticated()V

    .line 94
    return-void
.end method

.method public startListening()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 50
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->setFingerprintIconVisibility(Z)V

    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 62
    :cond_0
    return-void
.end method
