.class public Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;
.super Landroid/widget/FrameLayout;
.source "OPFingerPrintRecognitionContinueView.java"


# instance fields
.field private mFingerPrintView:Landroid/widget/FrameLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->initView(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->initView(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->initView(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "container"    # Landroid/widget/FrameLayout;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04008a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/SvgView;

    .line 70
    .local v0, "svgView":Lcom/oneplus/settings/opfinger/SvgView;
    invoke-virtual {v0, p1}, Lcom/oneplus/settings/opfinger/SvgView;->setSvgResource(I)V

    .line 71
    return-object v0
.end method


# virtual methods
.method public doRecognition(IZ)V
    .locals 5
    .param p1, "percent"    # I
    .param p2, "success"    # Z

    .prologue
    const/16 v4, 0x64

    const/16 v3, 0x5f

    const/16 v2, 0x5a

    const/16 v1, 0x55

    .line 105
    const/16 v0, 0x50

    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 108
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 109
    :cond_2
    if-lt p1, v2, :cond_3

    if-ge p1, v3, :cond_3

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 111
    :cond_3
    if-lt p1, v3, :cond_4

    if-ge p1, v4, :cond_4

    .line 112
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 113
    :cond_4
    if-ne p1, v4, :cond_0

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0
.end method

.method public doRecognitionByCount(IIZ)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "percent"    # I
    .param p3, "success"    # Z

    .prologue
    const/16 v0, 0x64

    .line 123
    packed-switch p1, :pswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 128
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 134
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 137
    :pswitch_4
    if-lt p2, v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 139
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 140
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 146
    :pswitch_5
    if-lt p2, v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 148
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 154
    :pswitch_6
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public initSvgView(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "container"    # Landroid/widget/FrameLayout;

    .prologue
    .line 50
    const v0, 0x7f07000e

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    .line 51
    const v0, 0x7f07000f

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    .line 52
    const v0, 0x7f070010

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    .line 53
    const v0, 0x7f070011

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    .line 54
    const v0, 0x7f070012

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    .line 55
    const v0, 0x7f070013

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    .line 56
    const v0, 0x7f070014

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    .line 57
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 62
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    .line 65
    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 43
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040089

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    .line 45
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 46
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->initSvgView(Landroid/widget/FrameLayout;)V

    .line 47
    return-void
.end method

.method public resetWithAnimation()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 96
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 97
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 98
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 102
    return-void
.end method

.method public resetWithoutAnimation()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 87
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 88
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 89
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 92
    return-void
.end method

.method public revealWithoutAnimation()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 76
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 78
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 82
    return-void
.end method

.method public setBackGround(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 165
    :cond_0
    return-void
.end method
