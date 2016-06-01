.class public Lcom/oneplus/tuner/widget/MixSeekBar;
.super Landroid/widget/SeekBar;
.source "MixSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/widget/MixSeekBar$OnMixChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MixSeekBar"


# instance fields
.field private mEffParam:I

.field private mListener:Lcom/oneplus/tuner/widget/MixSeekBar$OnMixChangeListener;

.field private mMaxProgress:I

.field private mMaxValue:F

.field private mMinValue:F

.field private mNewProgress:I

.field private mNewValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/widget/MixSeekBar;->init(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-virtual {p0, p0}, Lcom/oneplus/tuner/widget/MixSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mMaxProgress:I

    .line 33
    iget v0, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mMaxProgress:I

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/widget/MixSeekBar;->setMax(I)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mEffParam:I

    .line 35
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/MixSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mNewProgress:I

    .line 36
    return-void
.end method


# virtual methods
.method public controlParamenter(I)V
    .locals 0
    .param p1, "effParam"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mEffParam:I

    .line 40
    return-void
.end method

.method public controlRange(II)V
    .locals 3
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 43
    int-to-float v0, p1

    iput v0, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mMinValue:F

    .line 44
    int-to-float v0, p2

    iput v0, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mMaxValue:F

    .line 45
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/MixSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mMaxValue:F

    iget v2, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mMinValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mMaxProgress:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mMinValue:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mNewValue:F

    .line 47
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 92
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/MixSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mListener:Lcom/oneplus/tuner/widget/MixSeekBar$OnMixChangeListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mListener:Lcom/oneplus/tuner/widget/MixSeekBar$OnMixChangeListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/widget/MixSeekBar$OnMixChangeListener;->startMix()V

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0700

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 105
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mListener:Lcom/oneplus/tuner/widget/MixSeekBar$OnMixChangeListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mListener:Lcom/oneplus/tuner/widget/MixSeekBar$OnMixChangeListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/widget/MixSeekBar$OnMixChangeListener;->endMix()V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getParamenter()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mEffParam:I

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 65
    iget v1, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mNewProgress:I

    if-eq p2, v1, :cond_1

    .line 66
    int-to-float v1, p2

    iget v2, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mMaxValue:F

    iget v3, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mMinValue:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mMaxProgress:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mMinValue:F

    add-float v0, v1, v2

    .line 68
    .local v0, "real":F
    iget-object v1, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mListener:Lcom/oneplus/tuner/widget/MixSeekBar$OnMixChangeListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mNewValue:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mListener:Lcom/oneplus/tuner/widget/MixSeekBar$OnMixChangeListener;

    iget v2, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mEffParam:I

    invoke-interface {v1, v2, v0}, Lcom/oneplus/tuner/widget/MixSeekBar$OnMixChangeListener;->changeMix(IF)V

    .line 71
    :cond_0
    iput v0, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mNewValue:F

    .line 72
    const-string v1, "MixSeekBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dsfdsf onProgressChanged mNewValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mNewValue:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v0    # "real":F
    :cond_1
    iput p2, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mNewProgress:I

    .line 76
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 81
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 86
    return-void
.end method

.method public setOnMixChangeListener(Lcom/oneplus/tuner/widget/MixSeekBar$OnMixChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oneplus/tuner/widget/MixSeekBar$OnMixChangeListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mListener:Lcom/oneplus/tuner/widget/MixSeekBar$OnMixChangeListener;

    .line 114
    return-void
.end method

.method public setProgressValue(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 54
    iget v2, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mMaxValue:F

    iget v3, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mMinValue:F

    sub-float v0, v2, v3

    .line 55
    .local v0, "range":F
    const/4 v1, 0x0

    .line 56
    .local v1, "real":I
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 57
    iget v2, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mMinValue:F

    sub-float v2, p1, v2

    iget v3, p0, Lcom/oneplus/tuner/widget/MixSeekBar;->mMaxProgress:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v0

    float-to-int v1, v2

    .line 59
    :cond_0
    invoke-super {p0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 60
    return-void
.end method
