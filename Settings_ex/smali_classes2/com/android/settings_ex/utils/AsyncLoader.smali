.class public abstract Lcom/android/settings_ex/utils/AsyncLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/AsyncTaskLoader",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    .local p0, "this":Lcom/android/settings_ex/utils/AsyncLoader;, "Lcom/android/settings_ex/utils/AsyncLoader<TT;>;"
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/android/settings_ex/utils/AsyncLoader;, "Lcom/android/settings_ex/utils/AsyncLoader<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/android/settings_ex/utils/AsyncLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/utils/AsyncLoader;->onDiscardResult(Ljava/lang/Object;)V

    .line 61
    :cond_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    .line 65
    .local v0, "oldResult":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/android/settings_ex/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ex/utils/AsyncLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 71
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings_ex/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/utils/AsyncLoader;->onDiscardResult(Ljava/lang/Object;)V

    .line 56
    :cond_3
    return-void
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/android/settings_ex/utils/AsyncLoader;, "Lcom/android/settings_ex/utils/AsyncLoader<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/utils/AsyncLoader;->onDiscardResult(Ljava/lang/Object;)V

    .line 89
    :cond_0
    return-void
.end method

.method protected abstract onDiscardResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected onReset()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/settings_ex/utils/AsyncLoader;, "Lcom/android/settings_ex/utils/AsyncLoader<TT;>;"
    const/4 v1, 0x0

    .line 78
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/utils/AsyncLoader;->onStopLoading()V

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/utils/AsyncLoader;->onDiscardResult(Ljava/lang/Object;)V

    .line 85
    :cond_0
    iput-object v1, p0, Lcom/android/settings_ex/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/android/settings_ex/utils/AsyncLoader;, "Lcom/android/settings_ex/utils/AsyncLoader<TT;>;"
    iget-object v0, p0, Lcom/android/settings_ex/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/utils/AsyncLoader;->deliverResult(Ljava/lang/Object;)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/utils/AsyncLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/utils/AsyncLoader;->forceLoad()V

    .line 40
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 52
    .local p0, "this":Lcom/android/settings_ex/utils/AsyncLoader;, "Lcom/android/settings_ex/utils/AsyncLoader<TT;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/utils/AsyncLoader;->cancelLoad()Z

    .line 51
    return-void
.end method
