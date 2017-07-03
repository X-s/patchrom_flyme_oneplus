.class public abstract Lcom/oneplus/screenshot/longshot/state/AbsJoinState;
.super Lcom/oneplus/screenshot/longshot/state/BaseState;
.source "AbsJoinState.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.AbsJoinState"


# instance fields
.field protected mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

.field protected mJoinTask:Lcom/oneplus/screenshot/longshot/task/JoinTask;

.field protected mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 1
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/BaseState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 20
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->mJoinTask:Lcom/oneplus/screenshot/longshot/task/JoinTask;

    .line 21
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    .line 23
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    .line 29
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    .line 30
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getRunnableCache()Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    .line 31
    return-void
.end method


# virtual methods
.method protected abstract createJoinTask()Lcom/oneplus/screenshot/longshot/task/JoinTask;
.end method

.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 2
    .param p1, "oldState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/BaseState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 39
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->createJoinTask()Lcom/oneplus/screenshot/longshot/task/JoinTask;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->mJoinTask:Lcom/oneplus/screenshot/longshot/task/JoinTask;

    .line 40
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->mJoinTask:Lcom/oneplus/screenshot/longshot/task/JoinTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/task/JoinTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method

.method public exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V
    .locals 2
    .param p1, "newState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->mJoinTask:Lcom/oneplus/screenshot/longshot/task/JoinTask;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->mJoinTask:Lcom/oneplus/screenshot/longshot/task/JoinTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/task/JoinTask;->cancel(Z)Z

    .line 48
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/BaseState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    .line 49
    return-void
.end method

.method protected getErrorText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFailedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Features;->SHOW_JOIN_ERROR:Lcom/oneplus/screenshot/longshot/util/Features;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Features;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->getErrorText()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->getSuccessText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getStateOnFailed()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->JOIN:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/screenshot/statistics/EventStatistics;->addError(Landroid/content/Context;Lcom/oneplus/screenshot/statistics/EventStatistics$Error;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method protected getStateOnSuccess()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method protected abstract getSuccessText()Ljava/lang/String;
.end method

.method public onJoinFailed()V
    .locals 4

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->getFailedText()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "text":Ljava/lang/String;
    const-string v1, "Longshot.AbsJoinState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onJoinFailed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->updateIndex()V

    .line 70
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->getStateOnFailed()Lcom/oneplus/screenshot/longshot/state/LongshotState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 71
    return-void
.end method

.method public onJoinSuccess()V
    .locals 3

    .prologue
    .line 53
    const-string v0, "Longshot.AbsJoinState"

    const-string v1, "onJoinSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->prepareSuccess()V

    .line 56
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isLast()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v0

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->reachMaxPages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->updateIndex()V

    .line 61
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->getStateOnSuccess()Lcom/oneplus/screenshot/longshot/state/LongshotState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 62
    return-void
.end method

.method protected prepareSuccess()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method protected abstract updateIndex()V
.end method
