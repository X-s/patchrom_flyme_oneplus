.class public Lcom/android/systemui_ex/plugin/PreventModeView;
.super Landroid/widget/RelativeLayout;
.source "PreventModeView.java"


# instance fields
.field private final DESCRIPTION_FADE_IN_DURATION:I

.field private final TAG:Ljava/lang/String;

.field private mIsForceMode:Z

.field private mRippleViewFirst:Lcom/android/systemui_ex/plugin/RippleView;

.field private mRippleViewSecond:Lcom/android/systemui_ex/plugin/RippleView;

.field private mTag:Landroid/widget/TextView;

.field private mTagCancel:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleCancel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->TAG:Ljava/lang/String;

    .line 25
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->DESCRIPTION_FADE_IN_DURATION:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const-string v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->TAG:Ljava/lang/String;

    .line 25
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->DESCRIPTION_FADE_IN_DURATION:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const-string v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->TAG:Ljava/lang/String;

    .line 25
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->DESCRIPTION_FADE_IN_DURATION:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    const-string v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->TAG:Ljava/lang/String;

    .line 25
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->DESCRIPTION_FADE_IN_DURATION:I

    .line 38
    return-void
.end method

.method private playAlphaAnimator(Landroid/view/View;F)V
    .locals 4
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "targetAlpha"    # F

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 110
    return-void
.end method

.method private playRippleAniamor()V
    .locals 13

    .prologue
    const/high16 v4, 0x42f00000    # 120.0f

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v3, 0x41f00000    # 30.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v10, 0x40000000    # 2.0f

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui_ex/plugin/PreventModeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v12

    .line 76
    .local v12, "position":[I
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->getDeviceTag()Ljava/lang/String;

    move-result-object v11

    .line 77
    .local v11, "device":Ljava/lang/String;
    if-eqz v11, :cond_0

    sget-object v0, Lcom/android/systemui_ex/util/Utils;->DEVICE_14001:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui_ex/plugin/PreventModeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v12

    .line 80
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mRippleViewSecond:Lcom/android/systemui_ex/plugin/RippleView;

    const/4 v1, 0x0

    aget v1, v12, v1

    const/4 v2, 0x1

    aget v2, v12, v2

    const/high16 v6, 0x43160000    # 150.0f

    const/high16 v7, 0x447a0000    # 1000.0f

    const-string v8, "#888888"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {v0 .. v10}, Lcom/android/systemui_ex/plugin/RippleView;->init(IIFFFFFIFF)V

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/plugin/PreventModeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui_ex/util/Utils;->isBackKeyRight(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mRippleViewFirst:Lcom/android/systemui_ex/plugin/RippleView;

    const/16 v1, 0x384

    const/16 v2, 0x794

    const/high16 v6, 0x43160000    # 150.0f

    const/high16 v7, 0x447a0000    # 1000.0f

    const-string v8, "#888888"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {v0 .. v10}, Lcom/android/systemui_ex/plugin/RippleView;->init(IIFFFFFIFF)V

    .line 100
    :goto_1
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mRippleViewSecond:Lcom/android/systemui_ex/plugin/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/plugin/RippleView;->startRipple()V

    .line 101
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mRippleViewFirst:Lcom/android/systemui_ex/plugin/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/plugin/RippleView;->startRipple()V

    .line 102
    return-void

    .line 82
    :cond_0
    if-eqz v11, :cond_1

    sget-object v0, Lcom/android/systemui_ex/util/Utils;->DEVICE_15055:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui_ex/plugin/PreventModeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v12

    .line 85
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mRippleViewSecond:Lcom/android/systemui_ex/plugin/RippleView;

    const/4 v1, 0x0

    aget v1, v12, v1

    const/4 v2, 0x1

    aget v2, v12, v2

    const/high16 v6, 0x43160000    # 150.0f

    const/high16 v7, 0x447a0000    # 1000.0f

    const-string v8, "#888888"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {v0 .. v10}, Lcom/android/systemui_ex/plugin/RippleView;->init(IIFFFFFIFF)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mRippleViewSecond:Lcom/android/systemui_ex/plugin/RippleView;

    const/4 v1, 0x0

    aget v1, v12, v1

    const/4 v2, 0x1

    aget v2, v12, v2

    const/high16 v6, 0x43160000    # 150.0f

    const/high16 v7, 0x447a0000    # 1000.0f

    const-string v8, "#888888"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {v0 .. v10}, Lcom/android/systemui_ex/plugin/RippleView;->init(IIFFFFFIFF)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mRippleViewFirst:Lcom/android/systemui_ex/plugin/RippleView;

    const/16 v1, 0xbe

    const/16 v2, 0x794

    const/high16 v6, 0x43160000    # 150.0f

    const/high16 v7, 0x447a0000    # 1000.0f

    const-string v8, "#888888"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {v0 .. v10}, Lcom/android/systemui_ex/plugin/RippleView;->init(IIFFFFFIFF)V

    goto :goto_1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTitleCancel:Landroid/widget/TextView;

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTag:Landroid/widget/TextView;

    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTagCancel:Landroid/widget/TextView;

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 54
    const-string v0, "PreventModeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptTouchEvent: isFoceMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mIsForceMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-boolean v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mIsForceMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTitleCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTagCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTag:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/android/systemui_ex/plugin/PreventModeView;->playAlphaAnimator(Landroid/view/View;F)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTitleCancel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4}, Lcom/android/systemui_ex/plugin/PreventModeView;->playAlphaAnimator(Landroid/view/View;F)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTag:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/android/systemui_ex/plugin/PreventModeView;->playAlphaAnimator(Landroid/view/View;F)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTagCancel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4}, Lcom/android/systemui_ex/plugin/PreventModeView;->playAlphaAnimator(Landroid/view/View;F)V

    .line 64
    invoke-direct {p0}, Lcom/android/systemui_ex/plugin/PreventModeView;->playRippleAniamor()V

    .line 65
    iput-boolean v5, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mIsForceMode:Z

    .line 68
    :cond_0
    return v5
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 122
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 124
    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTitleCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTagCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTag:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTitleCancel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTag:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTagCancel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mRippleViewFirst:Lcom/android/systemui_ex/plugin/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/plugin/RippleView;->stopRipple()V

    .line 134
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mRippleViewSecond:Lcom/android/systemui_ex/plugin/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/plugin/RippleView;->stopRipple()V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mIsForceMode:Z

    .line 137
    :cond_0
    return-void
.end method

.method public setPMView(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "pmView"    # Landroid/view/ViewGroup;

    .prologue
    .line 140
    const v0, 0x7f0f0035

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTitle:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0f0088

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTitleCancel:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0f0089

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTag:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0f008a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mTagCancel:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0f008b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/plugin/RippleView;

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mRippleViewFirst:Lcom/android/systemui_ex/plugin/RippleView;

    .line 145
    const v0, 0x7f0f008c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/plugin/RippleView;

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeView;->mRippleViewSecond:Lcom/android/systemui_ex/plugin/RippleView;

    .line 146
    return-void
.end method
