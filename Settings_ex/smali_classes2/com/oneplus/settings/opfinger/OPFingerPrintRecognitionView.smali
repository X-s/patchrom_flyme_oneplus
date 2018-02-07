.class public Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;
.super Landroid/widget/FrameLayout;
.source "OPFingerPrintRecognitionView.java"


# instance fields
.field private mFingerPrintView:Landroid/widget/FrameLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSvgView_01:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_02:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_03:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_04:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_05:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_06:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_07:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_08:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_09:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_10:Lcom/oneplus/settings/opfinger/SvgView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->initView(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->initView(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->initView(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method private getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "container"    # Landroid/widget/FrameLayout;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 78
    const v2, 0x7f0400d9

    const/4 v3, 0x0

    .line 77
    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/SvgView;

    .line 79
    .local v0, "svgView":Lcom/oneplus/settings/opfinger/SvgView;
    invoke-virtual {v0, p1}, Lcom/oneplus/settings/opfinger/SvgView;->setSvgResource(I)V

    .line 80
    return-object v0
.end method


# virtual methods
.method public doRecognition(IZ)V
    .locals 6
    .param p1, "percent"    # I
    .param p2, "success"    # Z

    .prologue
    const/16 v5, 0x2e

    const/16 v4, 0x28

    const/16 v3, 0x25

    const/16 v2, 0x15

    const/16 v1, 0x11

    .line 123
    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 127
    :cond_2
    if-lt p1, v2, :cond_3

    const/16 v0, 0x1c

    if-ge p1, v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 129
    :cond_3
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_4

    if-ge p1, v3, :cond_4

    .line 130
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 131
    :cond_4
    if-lt p1, v3, :cond_5

    if-ge p1, v4, :cond_5

    .line 132
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 133
    :cond_5
    if-lt p1, v4, :cond_6

    if-ge p1, v5, :cond_6

    .line 134
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 135
    :cond_6
    if-lt p1, v5, :cond_7

    const/16 v0, 0x32

    if-ge p1, v0, :cond_7

    .line 136
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 137
    :cond_7
    const/16 v0, 0x32

    if-lt p1, v0, :cond_8

    const/16 v0, 0x37

    if-ge p1, v0, :cond_8

    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_08:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 139
    :cond_8
    const/16 v0, 0x37

    if-lt p1, v0, :cond_9

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_9

    .line 140
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_09:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 141
    :cond_9
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    const/16 v0, 0x41

    if-ge p1, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_10:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0
.end method

.method public doRecognitionByCount(IIZ)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "percent"    # I
    .param p3, "success"    # Z

    .prologue
    .line 157
    packed-switch p1, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 165
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 168
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 171
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 174
    :pswitch_5
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 177
    :pswitch_6
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 180
    :pswitch_7
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_08:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 183
    :pswitch_8
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_09:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 186
    :pswitch_9
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_10:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
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
    .line 53
    const v0, 0x7f090008

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_01:Lcom/oneplus/settings/opfinger/SvgView;

    .line 54
    const v0, 0x7f090009

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_02:Lcom/oneplus/settings/opfinger/SvgView;

    .line 55
    const v0, 0x7f09000a

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_03:Lcom/oneplus/settings/opfinger/SvgView;

    .line 56
    const v0, 0x7f09000b

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_04:Lcom/oneplus/settings/opfinger/SvgView;

    .line 57
    const v0, 0x7f09000c

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_05:Lcom/oneplus/settings/opfinger/SvgView;

    .line 58
    const v0, 0x7f09000d

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_06:Lcom/oneplus/settings/opfinger/SvgView;

    .line 59
    const v0, 0x7f09000e

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_07:Lcom/oneplus/settings/opfinger/SvgView;

    .line 60
    const v0, 0x7f09000f

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_08:Lcom/oneplus/settings/opfinger/SvgView;

    .line 61
    const v0, 0x7f090010

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_09:Lcom/oneplus/settings/opfinger/SvgView;

    .line 62
    const v0, 0x7f090011

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_10:Lcom/oneplus/settings/opfinger/SvgView;

    .line 63
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_08:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_09:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_10:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithoutAnimation()V

    .line 52
    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 46
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 47
    const v1, 0x7f0400d8

    .line 46
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mFingerPrintView:Landroid/widget/FrameLayout;

    .line 48
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mFingerPrintView:Landroid/widget/FrameLayout;

    const v1, 0x7f020247

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 49
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->initSvgView(Landroid/widget/FrameLayout;)V

    .line 44
    return-void
.end method

.method public resetWithAnimation()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 98
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 102
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 103
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 104
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_08:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 105
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_09:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 106
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_10:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    .line 96
    return-void
.end method

.method public resetWithoutAnimation()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 87
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 88
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 89
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_08:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_09:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_10:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    .line 83
    return-void
.end method

.method public revealWithoutAnimation()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 112
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 113
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 117
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_08:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_09:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 119
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mSvgView_10:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    .line 109
    return-void
.end method

.method public setBackGround(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mFingerPrintView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 193
    :cond_0
    return-void
.end method
