.class public abstract Lcom/oneplus/screenshot/longshot/state/AbsMoveState;
.super Lcom/oneplus/screenshot/longshot/state/BaseState;
.source "AbsMoveState.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.AbsMoveState"


# instance fields
.field protected mMoveKeep:I

.field protected mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

.field protected mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 1
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .param p2, "point"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/BaseState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 19
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 20
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveKeep:I

    .line 28
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 29
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->getKeep()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveKeep:I

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/state/AbsMoveState;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/state/AbsMoveState;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->excuteMove()V

    return-void
.end method

.method private excuteMove()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/AbsMoveState$2;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/AbsMoveState$2;-><init>(Lcom/oneplus/screenshot/longshot/state/AbsMoveState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void
.end method

.method private getKeep()I
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_KEEP_LIST:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->MOVE_KEEP_LONG:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->MOVE_KEEP_SHORT:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 4
    .param p1, "oldState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/BaseState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 38
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->setOverScroll(Z)V

    .line 39
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->setScroll(Z)V

    .line 41
    const-string v0, "Longshot.AbsMoveState"

    const-string v1, "prepare next Move"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;-><init>(Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/AbsMoveState$1;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/AbsMoveState$1;-><init>(Lcom/oneplus/screenshot/longshot/state/AbsMoveState;)V

    sget-object v2, Lcom/oneplus/screenshot/longshot/util/Configs;->MOVE_DELAY:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    return-void
.end method

.method public exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V
    .locals 2
    .param p1, "newState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->cancel(Z)Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    .line 69
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/BaseState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    .line 70
    return-void
.end method

.method protected abstract getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
.end method

.method public isOverScroll()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isOverScroll()Z

    move-result v0

    return v0
.end method

.method public onMoveFinished()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 75
    return-void
.end method
