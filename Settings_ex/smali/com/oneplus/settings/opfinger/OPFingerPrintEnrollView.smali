.class public Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;
.super Landroid/widget/RelativeLayout;
.source "OPFingerPrintEnrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImage:Landroid/widget/ImageView;

.field private mLayoutResId:I

.field private mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/widget/button/OPButton;

.field private mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

.field private mOPFingerInputTipsTitle:Landroid/widget/TextView;

.field private mOPFingerInputTipsWarning:Landroid/widget/TextView;

.field private mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

.field private mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

.field public mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;

.field private mPercent:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mHandler:Landroid/os/Handler;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mPercent:I

    .line 45
    const v0, 0x7f040099

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mLayoutResId:I

    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->initViews(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mHandler:Landroid/os/Handler;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mPercent:I

    .line 45
    const v0, 0x7f040099

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mLayoutResId:I

    .line 56
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->initViews(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mHandler:Landroid/os/Handler;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mPercent:I

    .line 45
    const v0, 0x7f040099

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mLayoutResId:I

    .line 63
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->initViews(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040099

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    const v1, 0x7f12012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    .line 73
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    const v1, 0x7f12012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    const v1, 0x7f12012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    const v1, 0x7f12012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    const v1, 0x7f12012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mView:Landroid/view/View;

    const v1, 0x7f120130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/button/OPButton;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/widget/button/OPButton;

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/widget/button/OPButton;

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method


# virtual methods
.method public doEnroll(IIZ)V
    .locals 4
    .param p1, "totalStep"    # I
    .param p2, "remainingStep"    # I
    .param p3, "success"    # Z

    .prologue
    const/4 v3, 0x0

    .line 227
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doEnroll--1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doEnroll--2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x7

    if-lt p2, v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0, p2, v3, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->doRecognitionByCount(IIZ)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0, p2, v3, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->doRecognitionByCount(IIZ)V

    goto :goto_0
.end method

.method public doRecognition(IIZ)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "percent"    # I
    .param p3, "success"    # Z

    .prologue
    .line 243
    const/16 v0, 0xd

    if-gt p1, v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->doRecognitionByCount(IIZ)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->doRecognitionByCount(IIZ)V

    goto :goto_0
.end method

.method public enrollFailed()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 268
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 270
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0111

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 272
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/widget/button/OPButton;

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/button/OPButton;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithoutAnimation()V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    .line 278
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 280
    :cond_1
    return-void
.end method

.method public getWarningTipsView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideWarningTips()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :cond_0
    return-void
.end method

.method public resetTextAndBtn()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0104

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 259
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0105

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/widget/button/OPButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/button/OPButton;->setVisibility(I)V

    .line 262
    return-void
.end method

.method public resetWithAnimation()V
    .locals 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->resetTextAndBtn()V

    .line 304
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithAnimation()V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    .line 310
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 312
    :cond_1
    return-void
.end method

.method public resetWithoutAnimation()V
    .locals 2

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->resetTextAndBtn()V

    .line 293
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithoutAnimation()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    .line 298
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 300
    :cond_1
    return-void
.end method

.method public revealWithoutAnimation()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->revealWithoutAnimation()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->revealWithoutAnimation()V

    .line 289
    :cond_1
    return-void
.end method

.method public setOnOPFingerComfirmListener(Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;

    .line 106
    return-void
.end method

.method public setTipsCompletedContent()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f0c010e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 180
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f0c010f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/widget/button/OPButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/button/OPButton;->setVisibility(I)V

    .line 183
    return-void
.end method

.method public setTipsContinueContent()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f0c010a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 191
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f0c010b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 193
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/widget/button/OPButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/button/OPButton;->setVisibility(I)V

    .line 194
    return-void
.end method

.method public setTipsProgressContent(II)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "percent"    # I

    .prologue
    const/16 v2, 0x8

    .line 109
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f0c010a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f0c010b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/widget/button/OPButton;

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/button/OPButton;->setVisibility(I)V

    .line 128
    :goto_0
    return-void

    .line 115
    :cond_0
    const/16 v0, 0x64

    if-lt p2, v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f0c010c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f0c010d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/widget/button/OPButton;

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/button/OPButton;->setVisibility(I)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 124
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0109

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/widget/button/OPButton;

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/button/OPButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTipsStatusContent(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 156
    packed-switch p1, :pswitch_data_0

    .line 172
    :goto_0
    :pswitch_0
    return-void

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0104

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0105

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 164
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0106

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0107

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public showContinueView()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1f4

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 200
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 201
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 202
    .local v10, "animSet":Landroid/view/animation/AnimationSet;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 203
    .local v9, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 204
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 206
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 209
    .local v0, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 210
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 213
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v1, v10}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 214
    invoke-virtual {v10}, Landroid/view/animation/AnimationSet;->start()V

    .line 224
    return-void
.end method

.method public showWarningTips(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "warningMsg"    # Ljava/lang/CharSequence;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 134
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :cond_0
    return-void
.end method
