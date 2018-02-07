.class public Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;
.super Landroid/widget/FrameLayout;
.source "OPFingerPrintRecognitionContinueView.java"


# instance fields
.field private mFingerPrintView:Landroid/widget/FrameLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSvgView_11:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_12:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_13:Lcom/oneplus/settings/opfinger/SvgView;

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
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->initView(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->initView(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->initView(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "container"    # Landroid/widget/FrameLayout;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 80
    const v2, 0x7f0400d9

    const/4 v3, 0x0

    .line 79
    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/SvgView;

    .line 81
    .local v0, "svgView":Lcom/oneplus/settings/opfinger/SvgView;
    invoke-virtual {v0, p1}, Lcom/oneplus/settings/opfinger/SvgView;->setSvgResource(I)V

    .line 82
    return-object v0
.end method


# virtual methods
.method public doRecognition(IZ)V
    .locals 6
    .param p1, "percent"    # I
    .param p2, "success"    # Z

    .prologue
    const/16 v5, 0x5a

    const/16 v4, 0x55

    const/16 v3, 0x50

    const/16 v2, 0x4b

    const/16 v1, 0x46

    .line 125
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_11:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 128
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_12:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 129
    :cond_2
    if-lt p1, v2, :cond_3

    if-ge p1, v3, :cond_3

    .line 130
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_13:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 131
    :cond_3
    if-lt p1, v3, :cond_4

    if-ge p1, v4, :cond_4

    .line 132
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 133
    :cond_4
    if-lt p1, v4, :cond_5

    if-ge p1, v5, :cond_5

    .line 134
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 135
    :cond_5
    if-lt p1, v5, :cond_6

    const/16 v0, 0x5f

    if-ge p1, v0, :cond_6

    .line 136
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 137
    :cond_6
    const/16 v0, 0x5f

    if-lt p1, v0, :cond_7

    const/16 v0, 0x64

    if-ge p1, v0, :cond_7

    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 139
    :cond_7
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 140
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

    .line 150
    packed-switch p1, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_11:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_12:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 158
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_13:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 161
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 164
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 167
    :pswitch_5
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 170
    :pswitch_6
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 173
    :pswitch_7
    if-lt p2, v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 175
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 176
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 182
    :pswitch_8
    if-lt p2, v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 184
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 190
    :pswitch_9
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public initSvgView(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "container"    # Landroid/widget/FrameLayout;

    .prologue
    .line 55
    const v0, 0x7f090012

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_11:Lcom/oneplus/settings/opfinger/SvgView;

    .line 56
    const v0, 0x7f090013

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_12:Lcom/oneplus/settings/opfinger/SvgView;

    .line 57
    const v0, 0x7f090014

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_13:Lcom/oneplus/settings/opfinger/SvgView;

    .line 58
    const v0, 0x7f090015

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    .line 59
    const v0, 0x7f090016

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    .line 60
    const v0, 0x7f090017

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    .line 61
    const v0, 0x7f090018

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    .line 62
    const v0, 0x7f090019

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    .line 63
    const v0, 0x7f09001a

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    .line 64
    const v0, 0x7f09001b

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    .line 65
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_11:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_12:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_13:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 73
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->addView(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 48
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 49
    const v1, 0x7f0400d8

    .line 48
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    const v1, 0x7f020248

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 51
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->initSvgView(Landroid/widget/FrameLayout;)V

    .line 46
    return-void
.end method

.method public resetWithAnimation()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_11:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 113
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_12:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_13:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 117
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 119
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 120
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 121
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 111
    return-void
.end method

.method public resetWithoutAnimation()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_11:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_12:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_13:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 102
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 103
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 104
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 105
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 106
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 107
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 108
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 98
    return-void
.end method

.method public revealWithoutAnimation()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_11:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 87
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_12:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 88
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_13:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 89
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_14:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_15:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_16:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_17:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_18:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_19:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 95
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mSvgView_20:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 85
    return-void
.end method

.method public setBackGround(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 197
    :cond_0
    return-void
.end method
