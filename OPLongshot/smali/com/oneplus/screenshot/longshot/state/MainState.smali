.class public Lcom/oneplus/screenshot/longshot/state/MainState;
.super Lcom/oneplus/screenshot/longshot/state/AbsViewState;
.source "MainState.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.MainState"


# instance fields
.field protected mEnterRunnable:Ljava/lang/Runnable;

.field protected mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

.field protected mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

.field protected mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

.field private mNextListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

.field private mSaveListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

.field protected mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 1
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 25
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 26
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 27
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    .line 28
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

    .line 30
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/MainState$1;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/MainState$1;-><init>(Lcom/oneplus/screenshot/longshot/state/MainState;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mNextListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 37
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/MainState$2;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/MainState$2;-><init>(Lcom/oneplus/screenshot/longshot/state/MainState;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mSaveListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 46
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/MainState$3;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/MainState$3;-><init>(Lcom/oneplus/screenshot/longshot/state/MainState;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mEnterRunnable:Ljava/lang/Runnable;

    .line 94
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getFirstCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 95
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getImageCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 96
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    .line 97
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getSharedPrefs()Lcom/oneplus/screenshot/util/SharedPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/state/MainState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/state/MainState;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MainState;->hasNext()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/state/MainState;)Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/state/MainState;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mNextListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/longshot/state/MainState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/state/MainState;
    .param p1, "x1"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/MainState;->gotToNextState(Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/screenshot/longshot/state/MainState;)Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/state/MainState;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mSaveListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    return-object v0
.end method

.method private gotToNextState(Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->setFirst(Z)V

    .line 67
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-interface {v0, v1, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-interface {p1}, Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;->updateState()V

    goto :goto_0
.end method

.method private hasNext()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 74
    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->FORCE_OVER_SCROLL:Z

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "Longshot.MainState"

    const-string v2, "touch to stop scroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return v0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    const-string v1, "Longshot.MainState"

    const-string v2, "last page"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v1

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->reachMaxPages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    const-string v1, "Longshot.MainState"

    const-string v2, "max pages"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 4
    .param p1, "oldState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 106
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mEnterRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mEnterRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 113
    :cond_1
    const-string v0, "Longshot.MainState"

    const-string v1, "enter, not running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mEnterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected initDecor(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .prologue
    .line 125
    return-void
.end method

.method protected initViews(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "content"    # Landroid/widget/FrameLayout;

    .prologue
    .line 133
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 129
    return-void
.end method

.method public onShow(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->onShow(Landroid/app/Dialog;)V

    .line 121
    return-void
.end method

.method protected updateButtons(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .prologue
    .line 136
    return-void
.end method
