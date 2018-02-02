.class public Lcom/oneplus/media/FlashData;
.super Ljava/lang/Object;
.source "FlashData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/media/FlashData$FlashState;,
        Lcom/oneplus/media/FlashData$StrobeDetection;
    }
.end annotation


# static fields
.field private static final FLASH_FIRED:I = 0x1

.field private static final FLASH_FUNCTION_NONE:I = 0x100000

.field private static final FLASH_FUNCTION_PRESENT:I = 0x0

.field private static final FLASH_NOT_FIRED:I = 0x0

.field private static final FLASH_STATE_AUTO:I = 0x11000

.field private static final FLASH_STATE_OFF:I = 0x10000

.field private static final FLASH_STATE_ON:I = 0x1000

.field private static final FLASH_STATE_UNKNOWN:I = 0x0

.field private static final RED_EYE_REDUCTION_NOT_SUPPORTED:I = 0x0

.field private static final RED_EYE_REDUCTION_SUPPORTED:I = 0x1000000

.field private static final STROBE_LIGHT_DETECTED:I = 0x110

.field private static final STROBE_NONE:I = 0x0

.field private static final STROBE_NOT_LIGHT_DETECTED:I = 0x100


# instance fields
.field private final m_FlashValueMask:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "flashMask"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/oneplus/media/FlashData;->m_FlashValueMask:I

    .line 52
    return-void
.end method


# virtual methods
.method public getFlashState()Lcom/oneplus/media/FlashData$FlashState;
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/oneplus/media/FlashData;->m_FlashValueMask:I

    const v1, 0x11000

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 74
    sget-object v0, Lcom/oneplus/media/FlashData$FlashState;->UNKNOWN:Lcom/oneplus/media/FlashData$FlashState;

    return-object v0

    .line 68
    :sswitch_0
    sget-object v0, Lcom/oneplus/media/FlashData$FlashState;->AUTO:Lcom/oneplus/media/FlashData$FlashState;

    return-object v0

    .line 70
    :sswitch_1
    sget-object v0, Lcom/oneplus/media/FlashData$FlashState;->OFF:Lcom/oneplus/media/FlashData$FlashState;

    return-object v0

    .line 72
    :sswitch_2
    sget-object v0, Lcom/oneplus/media/FlashData$FlashState;->ON:Lcom/oneplus/media/FlashData$FlashState;

    return-object v0

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_2
        0x10000 -> :sswitch_1
        0x11000 -> :sswitch_0
    .end sparse-switch
.end method

.method public getStrobeDetection()Lcom/oneplus/media/FlashData$StrobeDetection;
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/oneplus/media/FlashData;->m_FlashValueMask:I

    and-int/lit16 v0, v0, 0x110

    sparse-switch v0, :sswitch_data_0

    .line 93
    sget-object v0, Lcom/oneplus/media/FlashData$StrobeDetection;->NO_STROBE:Lcom/oneplus/media/FlashData$StrobeDetection;

    return-object v0

    .line 89
    :sswitch_0
    sget-object v0, Lcom/oneplus/media/FlashData$StrobeDetection;->STROBE_NO_DETECTION:Lcom/oneplus/media/FlashData$StrobeDetection;

    return-object v0

    .line 91
    :sswitch_1
    sget-object v0, Lcom/oneplus/media/FlashData$StrobeDetection;->STROBE_DETECTION:Lcom/oneplus/media/FlashData$StrobeDetection;

    return-object v0

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x110 -> :sswitch_1
    .end sparse-switch
.end method

.method public isFlashFired()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 104
    iget v0, p0, Lcom/oneplus/media/FlashData;->m_FlashValueMask:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 105
    return v1

    .line 106
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFlashFunctionPresented()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    iget v0, p0, Lcom/oneplus/media/FlashData;->m_FlashValueMask:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x1

    return v0

    .line 118
    :cond_0
    return v2
.end method

.method public isRedEyeReductionSupported()Z
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcom/oneplus/media/FlashData;->m_FlashValueMask:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    .line 129
    const/4 v0, 0x1

    return v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
