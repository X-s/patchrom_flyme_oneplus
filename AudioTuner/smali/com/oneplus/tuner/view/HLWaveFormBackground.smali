.class public Lcom/oneplus/tuner/view/HLWaveFormBackground;
.super Landroid/widget/FrameLayout;
.source "HLWaveFormBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/view/HLWaveFormBackground$OnMoveListener;
    }
.end annotation


# static fields
.field static final MUSIC_BUTTON_SIZE:I = 0x0

.field static final PAGE_SIZE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "HLWaveFormBackground"

.field static final TOTAL_SIZE:I = 0x15


# instance fields
.field private PADDING_RIGHT_X:I

.field private PADDING_X:I

.field private PADDING_Y:I

.field private mBkWidth:I

.field private mDistanceX:F

.field private mHeight:I

.field private mListener:Lcom/oneplus/tuner/view/HLWaveFormBackground$OnMoveListener;

.field private mMusicButton:Landroid/widget/ImageButton;

.field private mPaint0:Landroid/graphics/Paint;

.field private mPaint1:Landroid/graphics/Paint;

.field private mPreX:F

.field private mWidth:I

.field private rBottom:F

.field private rLeft:F

.field private rRight:F

.field private rTop:F

.field private rWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-object v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mPaint0:Landroid/graphics/Paint;

    .line 17
    iput-object v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mPaint1:Landroid/graphics/Paint;

    .line 24
    iput v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->PADDING_X:I

    .line 25
    iput v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->PADDING_RIGHT_X:I

    .line 26
    iput v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->PADDING_Y:I

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mPaint0:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mPaint0:Landroid/graphics/Paint;

    const v1, -0xaaaa47

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mPaint0:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mPaint1:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mPaint1:Landroid/graphics/Paint;

    const v1, 0x195555b9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    return-void
.end method

.method private initRect()V
    .locals 5

    .prologue
    .line 54
    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mWidth:I

    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x15

    iput v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rWidth:I

    .line 55
    const-string v1, "dsfdsfdsf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "segment = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x41a80000    # 21.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mWidth:I

    mul-int/lit8 v1, v1, 0x15

    div-int/lit8 v1, v1, 0x15

    iput v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mBkWidth:I

    .line 57
    const/4 v0, 0x2

    .line 58
    .local v0, "more":I
    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mWidth:I

    mul-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x15

    iput v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->PADDING_X:I

    .line 59
    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mWidth:I

    mul-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x15

    iput v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->PADDING_RIGHT_X:I

    .line 60
    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->PADDING_X:I

    int-to-float v1, v1

    iput v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rLeft:F

    .line 61
    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->PADDING_Y:I

    int-to-float v1, v1

    iput v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rTop:F

    .line 62
    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->PADDING_X:I

    iget v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rRight:F

    .line 63
    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mHeight:I

    iget v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->PADDING_Y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rBottom:F

    .line 64
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    return v5

    .line 93
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mPreX:F

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 95
    .local v0, "preY":F
    iget v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mPreX:F

    iget v3, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rLeft:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mPreX:F

    iget v3, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rRight:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 96
    :cond_1
    const-string v2, "MusicButton"

    const-string v3, "dispatchTouchEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mMusicButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mPreX:F

    iget v3, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mBkWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mMusicButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mMusicButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 105
    :cond_2
    const-string v2, "MusicButton"

    const-string v3, "requestDisallowInterceptTouchEvent(true)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0, v5}, Lcom/oneplus/tuner/view/HLWaveFormBackground;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 109
    .end local v0    # "preY":F
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mPreX:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mDistanceX:F

    .line 110
    iget v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mDistanceX:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    .line 112
    iget v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mDistanceX:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    iget v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rLeft:F

    iget v3, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->PADDING_X:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 114
    :cond_3
    iget v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mDistanceX:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    iget v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rRight:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->PADDING_RIGHT_X:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 116
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/HLWaveFormBackground;->postInvalidate()V

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mPreX:F

    .line 118
    iget-object v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mListener:Lcom/oneplus/tuner/view/HLWaveFormBackground$OnMoveListener;

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mListener:Lcom/oneplus/tuner/view/HLWaveFormBackground$OnMoveListener;

    iget v3, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mDistanceX:F

    iget v4, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mBkWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/oneplus/tuner/view/HLWaveFormBackground$OnMoveListener;->move(F)V

    goto/16 :goto_0

    .line 124
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 125
    .local v1, "prefY":F
    iget v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mPreX:F

    iget v3, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rLeft:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mPreX:F

    iget v3, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rRight:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 126
    :cond_5
    const-string v2, "MusicButton"

    const-string v3, "dispatchTouchEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mMusicButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mPreX:F

    iget v3, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mBkWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mMusicButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mMusicButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 135
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oneplus/tuner/view/HLWaveFormBackground;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public notifyMove(F)V
    .locals 3
    .param p1, "destanceX"    # F

    .prologue
    const/4 v2, 0x0

    .line 142
    cmpl-float v0, p1, v2

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mBkWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mDistanceX:F

    .line 145
    iget v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mDistanceX:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iget v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rLeft:F

    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->PADDING_X:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 147
    :cond_2
    iget v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mDistanceX:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rRight:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->PADDING_RIGHT_X:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 149
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/HLWaveFormBackground;->postInvalidate()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    iget v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rLeft:F

    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mDistanceX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rLeft:F

    .line 78
    iget v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rRight:F

    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mDistanceX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rRight:F

    .line 79
    iget v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rLeft:F

    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->PADDING_X:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 80
    iget v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->PADDING_X:I

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rLeft:F

    .line 81
    iget v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rLeft:F

    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rRight:F

    .line 86
    :cond_0
    :goto_0
    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rLeft:F

    iget v2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rTop:F

    iget v3, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rRight:F

    iget v4, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rBottom:F

    iget-object v5, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mPaint1:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 87
    return-void

    .line 82
    :cond_1
    iget v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rRight:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->PADDING_RIGHT_X:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 83
    iget v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mWidth:I

    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->PADDING_RIGHT_X:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rRight:F

    .line 84
    iget v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rRight:F

    iget v1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->rLeft:F

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 69
    iput p1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mWidth:I

    .line 70
    iput p2, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mHeight:I

    .line 71
    invoke-direct {p0}, Lcom/oneplus/tuner/view/HLWaveFormBackground;->initRect()V

    .line 72
    return-void
.end method

.method public setMusicButton(Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "music"    # Landroid/widget/ImageButton;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mMusicButton:Landroid/widget/ImageButton;

    .line 51
    return-void
.end method

.method public setOnMoveListener(Lcom/oneplus/tuner/view/HLWaveFormBackground$OnMoveListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oneplus/tuner/view/HLWaveFormBackground$OnMoveListener;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/oneplus/tuner/view/HLWaveFormBackground;->mListener:Lcom/oneplus/tuner/view/HLWaveFormBackground$OnMoveListener;

    .line 154
    return-void
.end method
