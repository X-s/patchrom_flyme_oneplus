.class abstract Lcom/android/settings_ex/SaveChosenLockWorkerBase;
.super Landroid/app/Fragment;
.source "SaveChosenLockWorkerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;,
        Lcom/android/settings_ex/SaveChosenLockWorkerBase$Task;
    }
.end annotation


# instance fields
.field private mBlocking:Z

.field protected mChallenge:J

.field private mFinished:Z

.field protected mHasChallenge:Z

.field private mListener:Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;

.field private mResultData:Landroid/content/Intent;

.field protected mUserId:I

.field protected mUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mWasSecureBefore:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected finish(Landroid/content/Intent;)V
    .locals 3
    .param p1, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mFinished:Z

    .line 100
    iput-object p1, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;

    iget-boolean v1, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    iget-object v2, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    invoke-interface {v0, v1, v2}, Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;->onChosenLockSaveFinished(ZLandroid/content/Intent;)V

    .line 98
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->setRetainInstance(Z)V

    .line 47
    return-void
.end method

.method protected prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V
    .locals 4
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "credentialRequired"    # Z
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 65
    iput-object p1, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 66
    iput p6, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mUserId:I

    .line 68
    iput-boolean p3, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mHasChallenge:Z

    .line 69
    iput-wide p4, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mChallenge:J

    .line 71
    iget-object v1, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 80
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mFinished:Z

    .line 81
    iput-object v3, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    .line 64
    return-void
.end method

.method protected abstract saveAndVerifyInBackground()Landroid/content/Intent;
.end method

.method public setBlocking(Z)V
    .locals 0
    .param p1, "blocking"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mBlocking:Z

    .line 106
    return-void
.end method

.method public setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;

    if-ne v0, p1, :cond_0

    .line 54
    return-void

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;

    .line 58
    iget-boolean v0, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mFinished:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;

    iget-boolean v1, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    iget-object v2, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    invoke-interface {v0, v1, v2}, Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;->onChosenLockSaveFinished(ZLandroid/content/Intent;)V

    .line 52
    :cond_1
    return-void
.end method

.method protected start()V
    .locals 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->mBlocking:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->saveAndVerifyInBackground()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    .line 84
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Lcom/android/settings_ex/SaveChosenLockWorkerBase$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/SaveChosenLockWorkerBase$Task;-><init>(Lcom/android/settings_ex/SaveChosenLockWorkerBase;Lcom/android/settings_ex/SaveChosenLockWorkerBase$Task;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SaveChosenLockWorkerBase$Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
