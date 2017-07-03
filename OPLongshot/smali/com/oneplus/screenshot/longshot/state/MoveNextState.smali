.class public Lcom/oneplus/screenshot/longshot/state/MoveNextState;
.super Lcom/oneplus/screenshot/longshot/state/AbsMoveState;
.source "MoveNextState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.MoveNextState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 0
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .param p2, "point"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 16
    return-void
.end method

.method private getShotLastState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_STRICT_LIST:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    goto :goto_0
.end method

.method private getShotNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_BG_LIST:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    goto :goto_0
.end method

.method private getShotOneState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method private getShotOverState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_BG_LIST:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    goto :goto_0
.end method

.method private isList()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_PAGE_LIST:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_SMALL_LIST:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNonList()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_NON_LIST:Z

    return v0
.end method

.method private isScroll()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isScroll()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 4

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->getShotLastState()Lcom/oneplus/screenshot/longshot/state/LongshotState;

    move-result-object v0

    .line 24
    .local v0, "state":Lcom/oneplus/screenshot/longshot/state/LongshotState;
    const-string v1, "Longshot.MoveNextState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextState, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->isNonList()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->isOverScroll()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->isScroll()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->isList()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->isNonList()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-object v0

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->isOverScroll()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->getShotOverState()Lcom/oneplus/screenshot/longshot/state/LongshotState;

    move-result-object v0

    goto :goto_0

    .line 29
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->isScroll()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 30
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->getShotNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->isList()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->getShotOneState()Lcom/oneplus/screenshot/longshot/state/LongshotState;

    move-result-object v0

    goto :goto_0
.end method
