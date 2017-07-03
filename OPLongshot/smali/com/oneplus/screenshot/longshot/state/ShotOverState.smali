.class public Lcom/oneplus/screenshot/longshot/state/ShotOverState;
.super Lcom/oneplus/screenshot/longshot/state/ShotNextState;
.source "ShotOverState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShotOverState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 1
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 15
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH:I

    packed-switch v0, :pswitch_data_0

    .line 20
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_OVER_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotOverState;->mOffset:I

    .line 23
    :goto_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->CAPTURE_OVER_DELAY:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotOverState;->mCaptureDelay:I

    .line 24
    return-void

    .line 17
    :pswitch_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_OVER_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotOverState;->mOffset:I

    goto :goto_0

    .line 15
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method
