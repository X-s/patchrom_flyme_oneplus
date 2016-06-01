.class public Lcom/oneplus/tuner/widget/EqSeekBar;
.super Lcom/oneplus/tuner/widget/VerticalSeekBar;
.source "EqSeekBar.java"

# interfaces
.implements Lcom/oneplus/tuner/widget/VerticalSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;
    }
.end annotation


# static fields
.field private static final FLOAT_OFFSET_X:I = 0x1a

.field private static final FLOAT_OFFSET_Y:I = 0x161

.field private static final TAG:Ljava/lang/String; = "EqSeekbar"


# instance fields
.field private floatwPos_x:I

.field private floatwPos_y:I

.field private location:[I

.field private mActivity:Landroid/app/Activity;

.field private mChangeProgress:Z

.field private mEffParam:I

.field private mListener:Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;

.field private mMaxProgress:I

.field private mMaxValue:F

.field private mMinValue:F

.field private mNewProgress:I

.field private mNewValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/widget/VerticalSeekBar;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->location:[I

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mChangeProgress:Z

    .line 47
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/widget/EqSeekBar;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/oneplus/tuner/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->location:[I

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mChangeProgress:Z

    .line 42
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/widget/EqSeekBar;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/tuner/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->location:[I

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mChangeProgress:Z

    .line 37
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/widget/EqSeekBar;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mActivity:Landroid/app/Activity;

    .line 52
    invoke-virtual {p0, p0}, Lcom/oneplus/tuner/widget/EqSeekBar;->setOnSeekBarChangeListener(Lcom/oneplus/tuner/widget/VerticalSeekBar$OnSeekBarChangeListener;)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mMaxProgress:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mEffParam:I

    .line 56
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/EqSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mNewProgress:I

    .line 57
    return-void
.end method


# virtual methods
.method public controlParamenter(I)V
    .locals 0
    .param p1, "effParam"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mEffParam:I

    .line 61
    return-void
.end method

.method public controlRange(II)V
    .locals 3
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 64
    int-to-float v0, p1

    iput v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mMinValue:F

    .line 65
    int-to-float v0, p2

    iput v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mMaxValue:F

    .line 66
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/EqSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mMaxValue:F

    iget v2, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mMinValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mMaxProgress:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mMinValue:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mNewValue:F

    .line 68
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 106
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 74
    :pswitch_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0424--dispatchTouchEvent --ACTION_DOWN--height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " event.getY() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNewProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mNewProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/EqSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0700

    invoke-static {v0, v1, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 86
    :cond_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/EqSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mListener:Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mListener:Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;->retainEq()V

    .line 89
    :cond_2
    invoke-super {p0, p1}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 91
    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mChangeProgress:Z

    if-eqz v0, :cond_4

    .line 92
    iget-object v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mListener:Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mListener:Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;->startEq()V

    goto :goto_0

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mListener:Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mListener:Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;->retainEq()V

    goto :goto_0

    .line 101
    :pswitch_2
    iput-boolean v3, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mChangeProgress:Z

    .line 102
    iget-object v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mListener:Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mListener:Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;->endEq()V

    goto/16 :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onProgressChanged(Lcom/oneplus/tuner/widget/VerticalSeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Lcom/oneplus/tuner/widget/VerticalSeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v5, 0x0

    .line 115
    iget v2, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mNewProgress:I

    if-eq p2, v2, :cond_1

    .line 116
    int-to-float v2, p2

    iget v3, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mMaxValue:F

    iget v4, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mMinValue:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mMaxProgress:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mMinValue:F

    add-float v1, v2, v3

    .line 118
    .local v1, "real":F
    iget v2, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mNewValue:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    .line 119
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mChangeProgress:Z

    .line 120
    iget-object v2, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mListener:Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mListener:Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;

    iget v3, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mEffParam:I

    invoke-interface {v2, v3, v1}, Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;->changeEq(IF)V

    .line 126
    :cond_0
    :goto_0
    iput v1, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mNewValue:F

    .line 128
    iget v2, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mNewValue:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "popupWindow_text":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->location:[I

    aget v2, v2, v5

    add-int/lit8 v2, v2, -0x1a

    iput v2, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->floatwPos_x:I

    .line 130
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/EqSeekBar;->getFloatwPosY()I

    move-result v2

    add-int/lit16 v2, v2, 0x161

    iput v2, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->floatwPos_y:I

    .line 131
    invoke-static {v0}, Lcom/oneplus/tuner/widget/FloatWindow;->updateContent(Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->floatwPos_x:I

    iget v4, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->floatwPos_y:I

    invoke-static {v2, v3, v4}, Lcom/oneplus/tuner/widget/FloatWindow;->updatefloatview(Landroid/content/Context;II)V

    .line 134
    .end local v0    # "popupWindow_text":Ljava/lang/String;
    .end local v1    # "real":F
    :cond_1
    iput p2, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mNewProgress:I

    .line 136
    return-void

    .line 124
    .restart local v1    # "real":F
    :cond_2
    iput-boolean v5, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mChangeProgress:Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lcom/oneplus/tuner/widget/VerticalSeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Lcom/oneplus/tuner/widget/VerticalSeekBar;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->location:[I

    invoke-virtual {p1, v0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->getLocationOnScreen([I)V

    .line 151
    iget-object v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oneplus/tuner/widget/FloatWindow;->addfloatview(Landroid/content/Context;)V

    .line 152
    iget-object v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->location:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x1a

    iput v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->floatwPos_x:I

    .line 153
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/EqSeekBar;->getFloatwPosY()I

    move-result v0

    add-int/lit16 v0, v0, 0x161

    iput v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->floatwPos_y:I

    .line 154
    iget-object v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->floatwPos_x:I

    iget v2, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->floatwPos_y:I

    invoke-static {v0, v1, v2}, Lcom/oneplus/tuner/widget/FloatWindow;->updatefloatview(Landroid/content/Context;II)V

    .line 155
    return-void
.end method

.method public onStopTrackingTouch(Lcom/oneplus/tuner/widget/VerticalSeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Lcom/oneplus/tuner/widget/VerticalSeekBar;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oneplus/tuner/widget/FloatWindow;->removefloatview(Landroid/content/Context;)V

    .line 160
    return-void
.end method

.method public setOnEqChangeListener(Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mListener:Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;

    .line 164
    return-void
.end method

.method public setProgressValue(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 139
    iget v2, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mMaxValue:F

    iget v3, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mMinValue:F

    sub-float v0, v2, v3

    .line 140
    .local v0, "range":F
    const/4 v1, 0x0

    .line 141
    .local v1, "real":I
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 142
    iget v2, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mMinValue:F

    sub-float v2, p1, v2

    iget v3, p0, Lcom/oneplus/tuner/widget/EqSeekBar;->mMaxProgress:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v0

    float-to-int v1, v2

    .line 144
    :cond_0
    invoke-super {p0, v1}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->setProgress(I)V

    .line 145
    return-void
.end method
