.class public abstract Lcom/oneplus/screenshot/longshot/state/AbsShotState;
.super Lcom/oneplus/screenshot/longshot/state/AbsViewState;
.source "AbsShotState.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.AbsShotState"


# instance fields
.field protected mCaptureDelay:I

.field protected mCaptureRunnable:Ljava/lang/Runnable;

.field protected mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

.field protected mEffectDelay:I

.field protected mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

.field protected mHandler:Landroid/os/Handler;

.field protected mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

.field protected mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

.field protected mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

.field protected mOffset:I

.field protected mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 2
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 28
    iput v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mOffset:I

    .line 29
    iput v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mEffectDelay:I

    .line 30
    iput v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureDelay:I

    .line 31
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 32
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 33
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    .line 34
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    .line 35
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 36
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/AbsShotState$1;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState$1;-><init>(Lcom/oneplus/screenshot/longshot/state/AbsShotState;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureRunnable:Ljava/lang/Runnable;

    .line 53
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 54
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getFirstCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 55
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getImageCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 56
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    .line 57
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getRunnableCache()Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    .line 58
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->EFFECT_DELAY:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mEffectDelay:I

    .line 59
    return-void
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 0
    .param p1, "oldState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->onEnter()V

    .line 69
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->startCapture()V

    .line 70
    return-void
.end method

.method public exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V
    .locals 2
    .param p1, "newState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->cancel(Z)Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

    .line 78
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    .line 79
    return-void
.end method

.method protected firstToCache()V
    .locals 8

    .prologue
    .line 119
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const/4 v1, 0x0

    .line 123
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    monitor-enter v6

    .line 124
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->remove(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 125
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    if-eqz v1, :cond_0

    .line 127
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getEnd()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mOffset:I

    sub-int v4, v5, v6

    .line 128
    .local v4, "top":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getStart()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mOffset:I

    sub-int v2, v5, v6

    .line 129
    .local v2, "bottom":I
    new-instance v3, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v3, v1, v4, v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    .line 130
    .local v3, "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    monitor-enter v6

    .line 131
    :try_start_1
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v5, v3}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 132
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 125
    .end local v2    # "bottom":I
    .end local v3    # "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .end local v4    # "top":I
    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5
.end method

.method protected initDecor(Landroid/widget/FrameLayout;)V
    .locals 6
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .prologue
    .line 83
    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Features;->SHOW_SHOT_EFFECT:Lcom/oneplus/screenshot/longshot/util/Features;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/util/Features;->getValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f020000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    .local v0, "border":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    new-instance v2, Lcom/oneplus/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;-><init>(Lcom/oneplus/screenshot/longshot/state/AbsShotState;Landroid/widget/FrameLayout;)V

    iget v3, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mEffectDelay:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->postDelayed(Ljava/lang/Runnable;J)V

    .line 88
    .end local v0    # "border":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public initViews(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "content"    # Landroid/widget/FrameLayout;

    .prologue
    .line 92
    return-void
.end method

.method protected onCaptureError()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 142
    return-void
.end method

.method public onCaptureFinished(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const v1, 0x7f0c0001

    const v2, 0x7f030001

    invoke-interface {v0, v1, v2, p0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->show(IILcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V

    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->onCaptureSuccess(Landroid/graphics/Bitmap;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->onCaptureError()V

    goto :goto_0
.end method

.method protected onCaptureSuccess(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    return-void
.end method

.method protected onEnter()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->clear()V

    .line 115
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->firstToCache()V

    .line 116
    return-void
.end method

.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 146
    return-void
.end method

.method protected startCapture()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "Longshot.AbsShotState"

    const-string v1, "startCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method
