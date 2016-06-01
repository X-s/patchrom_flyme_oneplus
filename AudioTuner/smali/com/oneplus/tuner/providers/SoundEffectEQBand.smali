.class public Lcom/oneplus/tuner/providers/SoundEffectEQBand;
.super Ljava/lang/Object;
.source "SoundEffectEQBand.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/providers/SoundEffectEQBand$EQBandRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundEffectEQBand"

.field public static final mEqBpFreq:[F

.field public static final mEqBpQ:F = 2.3f

.field public static final mEqBpState:I = 0x1

.field public static final mEqBpType:I = 0x0

.field public static mEqParams:[[I = null

.field private static final serialVersionUID:J = 0x6a91ce0a2fbeb1a1L


# instance fields
.field public mEqBpGain:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 51
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpFreq:[F

    .line 55
    const/4 v0, 0x5

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqParams:[[I

    return-void

    .line 51
    nop

    :array_0
    .array-data 4
        0x41f80000    # 31.0f
        0x42340000    # 45.0f
        0x42780000    # 62.0f
        0x42b40000    # 90.0f
        0x42fa0000    # 125.0f
        0x43340000    # 180.0f
        0x437a0000    # 250.0f
        0x43bb8000    # 375.0f
        0x43fa0000    # 500.0f
        0x443b8000    # 750.0f
        0x447a0000    # 1000.0f
        0x44bb8000    # 1500.0f
        0x44fa0000    # 2000.0f
        0x453b8000    # 3000.0f
        0x457a0000    # 4000.0f
        0x45bb8000    # 6000.0f
        0x45fa0000    # 8000.0f
        0x463b8000    # 12000.0f
        0x467a0000    # 16000.0f
        0x469c4000    # 20000.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    return-void
.end method

.method public static caculateEqBandActiveId(I)I
    .locals 4
    .param p0, "index"    # I

    .prologue
    const/4 v3, 0x4

    .line 110
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqParams:[[I

    aget-object v0, v0, p0

    aget v0, v0, v3

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqParams:[[I

    aget-object v0, v0, p0

    add-int/lit8 v1, p0, 0xa

    div-int/lit8 v1, v1, 0x14

    mul-int/lit8 v1, v1, 0x3c

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x28

    rem-int/lit8 v2, p0, 0xa

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    aput v1, v0, v3

    .line 116
    :cond_0
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqParams:[[I

    aget-object v0, v0, p0

    aget v0, v0, v3

    return v0
.end method

.method public static caculateEqBandFreqId(I)I
    .locals 4
    .param p0, "index"    # I

    .prologue
    const/4 v3, 0x1

    .line 74
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqParams:[[I

    aget-object v0, v0, p0

    aget v0, v0, v3

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqParams:[[I

    aget-object v0, v0, p0

    add-int/lit8 v1, p0, 0xa

    div-int/lit8 v1, v1, 0x14

    mul-int/lit8 v1, v1, 0x3c

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x28

    rem-int/lit8 v2, p0, 0xa

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 80
    :cond_0
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqParams:[[I

    aget-object v0, v0, p0

    aget v0, v0, v3

    return v0
.end method

.method public static caculateEqBandGainId(I)I
    .locals 4
    .param p0, "index"    # I

    .prologue
    const/4 v3, 0x2

    .line 86
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqParams:[[I

    aget-object v0, v0, p0

    aget v0, v0, v3

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqParams:[[I

    aget-object v0, v0, p0

    add-int/lit8 v1, p0, 0xa

    div-int/lit8 v1, v1, 0x14

    mul-int/lit8 v1, v1, 0x3c

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x28

    rem-int/lit8 v2, p0, 0xa

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    aput v1, v0, v3

    .line 92
    :cond_0
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqParams:[[I

    aget-object v0, v0, p0

    aget v0, v0, v3

    return v0
.end method

.method public static caculateEqBandQId(I)I
    .locals 4
    .param p0, "index"    # I

    .prologue
    const/4 v3, 0x3

    .line 98
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqParams:[[I

    aget-object v0, v0, p0

    aget v0, v0, v3

    if-nez v0, :cond_0

    .line 99
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqParams:[[I

    aget-object v0, v0, p0

    add-int/lit8 v1, p0, 0xa

    div-int/lit8 v1, v1, 0x14

    mul-int/lit8 v1, v1, 0x3c

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x28

    rem-int/lit8 v2, p0, 0xa

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    aput v1, v0, v3

    .line 104
    :cond_0
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqParams:[[I

    aget-object v0, v0, p0

    aget v0, v0, v3

    return v0
.end method

.method public static caculateEqBandTypeId(I)I
    .locals 4
    .param p0, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 62
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqParams:[[I

    aget-object v0, v0, p0

    aget v0, v0, v3

    if-nez v0, :cond_0

    .line 63
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqParams:[[I

    aget-object v0, v0, p0

    add-int/lit8 v1, p0, 0xa

    div-int/lit8 v1, v1, 0x14

    mul-int/lit8 v1, v1, 0x3c

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x28

    rem-int/lit8 v2, p0, 0xa

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x0

    aput v1, v0, v3

    .line 68
    :cond_0
    sget-object v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqParams:[[I

    aget-object v0, v0, p0

    aget v0, v0, v3

    return v0
.end method


# virtual methods
.method public updateAllEqGraph()V
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 123
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->updateEqGraph(I)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method public updateEqGraph(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 130
    new-instance v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand$EQBandRunnable;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/tuner/providers/SoundEffectEQBand$EQBandRunnable;-><init>(Lcom/oneplus/tuner/providers/SoundEffectEQBand;I)V

    invoke-static {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncRunnable(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method
