.class public Lcom/oneplus/screenshot/longshot/state/StitchLastState;
.super Lcom/oneplus/screenshot/longshot/state/AbsJoinState;
.source "StitchLastState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.StitchLastState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 0
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected createJoinTask()Lcom/oneplus/screenshot/longshot/task/JoinTask;
    .locals 6

    .prologue
    .line 25
    new-instance v0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getIndex()I

    move-result v4

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getDisplayHeight()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;II)V

    return-object v0
.end method

.method protected getFailedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStateOnFailed()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method protected getSuccessText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v0

    .line 42
    .local v0, "pages":I
    const-string v1, ""

    .line 44
    .local v1, "text":Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->reachMaxPages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0005

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    :cond_0
    return-object v1
.end method

.method protected prepareSuccess()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->setLast(Z)V

    .line 32
    return-void
.end method

.method protected updateIndex()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
