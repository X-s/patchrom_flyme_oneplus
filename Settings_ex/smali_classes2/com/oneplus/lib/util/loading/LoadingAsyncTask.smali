.class public abstract Lcom/oneplus/lib/util/loading/LoadingAsyncTask;
.super Landroid/os/AsyncTask;
.source "LoadingAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/util/loading/LoadingAsyncTask$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParam;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field private mProgressHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/oneplus/lib/util/loading/LoadingAsyncTask;, "Lcom/oneplus/lib/util/loading/LoadingAsyncTask<TParam;TProgress;TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    new-instance v0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/util/loading/LoadingAsyncTask$1;-><init>(Lcom/oneplus/lib/util/loading/LoadingAsyncTask;)V

    iput-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->mProgressHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    .line 37
    return-void
.end method

.method private onFinish(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/oneplus/lib/util/loading/LoadingAsyncTask;, "Lcom/oneplus/lib/util/loading/LoadingAsyncTask<TParam;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->mProgressHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    new-instance v1, Lcom/oneplus/lib/util/loading/LoadingAsyncTask$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/lib/util/loading/LoadingAsyncTask$2;-><init>(Lcom/oneplus/lib/util/loading/LoadingAsyncTask;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/util/loading/LoadingHelper;->finishShowProgress(Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;)V

    .line 98
    return-void
.end method


# virtual methods
.method protected abstract hideProgree(Ljava/lang/Object;)V
.end method

.method protected final onCancelled()V
    .locals 0

    .prologue
    .line 95
    .local p0, "this":Lcom/oneplus/lib/util/loading/LoadingAsyncTask;, "Lcom/oneplus/lib/util/loading/LoadingAsyncTask<TParam;TProgress;TResult;>;"
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 94
    return-void
.end method

.method protected final onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/oneplus/lib/util/loading/LoadingAsyncTask;, "Lcom/oneplus/lib/util/loading/LoadingAsyncTask<TParam;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-direct {p0, p1}, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->onFinish(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->onCancelledExtend(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method protected onCancelledExtend(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/oneplus/lib/util/loading/LoadingAsyncTask;, "Lcom/oneplus/lib/util/loading/LoadingAsyncTask<TParam;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/oneplus/lib/util/loading/LoadingAsyncTask;, "Lcom/oneplus/lib/util/loading/LoadingAsyncTask<TParam;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-direct {p0, p1}, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->onFinish(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method protected onPostExecuteExtend(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/oneplus/lib/util/loading/LoadingAsyncTask;, "Lcom/oneplus/lib/util/loading/LoadingAsyncTask<TParam;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/oneplus/lib/util/loading/LoadingAsyncTask;, "Lcom/oneplus/lib/util/loading/LoadingAsyncTask<TParam;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->mProgressHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/util/loading/LoadingHelper;->beginShowProgress()V

    .line 79
    invoke-virtual {p0}, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->onPreExecuteExtend()V

    .line 77
    return-void
.end method

.method protected onPreExecuteExtend()V
    .locals 0

    .prologue
    .line 65
    .local p0, "this":Lcom/oneplus/lib/util/loading/LoadingAsyncTask;, "Lcom/oneplus/lib/util/loading/LoadingAsyncTask<TParam;TProgress;TResult;>;"
    return-void
.end method

.method public setProgreeMinShowTime(J)Lcom/oneplus/lib/util/loading/LoadingAsyncTask;
    .locals 1
    .param p1, "progreeMinShowTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/oneplus/lib/util/loading/LoadingAsyncTask",
            "<TParam;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/oneplus/lib/util/loading/LoadingAsyncTask;, "Lcom/oneplus/lib/util/loading/LoadingAsyncTask<TParam;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->mProgressHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/util/loading/LoadingHelper;->setProgreeMinShowTime(J)Lcom/oneplus/lib/util/loading/LoadingHelper;

    .line 58
    return-object p0
.end method

.method public setWillShowProgreeTime(J)Lcom/oneplus/lib/util/loading/LoadingAsyncTask;
    .locals 1
    .param p1, "willShowProgreeTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/oneplus/lib/util/loading/LoadingAsyncTask",
            "<TParam;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/oneplus/lib/util/loading/LoadingAsyncTask;, "Lcom/oneplus/lib/util/loading/LoadingAsyncTask<TParam;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->mProgressHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/util/loading/LoadingHelper;->setWillShowProgreeTime(J)Lcom/oneplus/lib/util/loading/LoadingHelper;

    .line 53
    return-object p0
.end method

.method protected abstract showProgree()Ljava/lang/Object;
.end method
