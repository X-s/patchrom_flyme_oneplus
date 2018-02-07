.class public Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;
.super Landroid/support/v7/preference/PreferenceCategory;
.source "OPFingerPrintInputViewCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImage:Landroid/widget/ImageView;

.field private mLayoutResId:I

.field private mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

.field private mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

.field private mOPFingerInputTipsTitle:Landroid/widget/TextView;

.field private mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

.field private mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

.field public mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;

.field private mPercent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mHandler:Landroid/os/Handler;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mPercent:I

    .line 43
    const v0, 0x7f0400dd

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mLayoutResId:I

    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->initViews(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mHandler:Landroid/os/Handler;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mPercent:I

    .line 43
    const v0, 0x7f0400dd

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mLayoutResId:I

    .line 54
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->initViews(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mHandler:Landroid/os/Handler;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mPercent:I

    .line 43
    const v0, 0x7f0400dd

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mLayoutResId:I

    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->initViews(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method


# virtual methods
.method public doRecognition(IIZ)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "percent"    # I
    .param p3, "success"    # Z

    .prologue
    .line 208
    const/16 v0, 0xd

    if-gt p1, v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->doRecognitionByCount(IIZ)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->doRecognitionByCount(IIZ)V

    goto :goto_0
.end method

.method public enrollFailed()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 233
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 234
    const v1, 0x7f0e02da

    .line 233
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 235
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 236
    const v1, 0x7f0e02db

    .line 235
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithoutAnimation()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    .line 243
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 232
    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceCategory;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 72
    const v0, 0x7f1101f8

    .line 71
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    .line 76
    const v0, 0x7f1101f7

    .line 75
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    .line 80
    const v0, 0x7f1101f4

    .line 79
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f1101f6

    .line 81
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f1101fa

    .line 83
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    .line 86
    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 282
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mContext:Landroid/content/Context;

    .line 283
    const-string/jumbo v3, "layout_inflater"

    .line 282
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 284
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mLayoutResId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 285
    .local v0, "layout":Landroid/view/View;
    return-object v0
.end method

.method public resetTextAndBtn()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 223
    const v1, 0x7f0e01e6

    .line 222
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 225
    const v1, 0x7f0e01e7

    .line 224
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 226
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 221
    return-void
.end method

.method public resetWithAnimation()V
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->resetTextAndBtn()V

    .line 269
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithAnimation()V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    .line 275
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 267
    :cond_1
    return-void
.end method

.method public resetWithoutAnimation()V
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->resetTextAndBtn()V

    .line 258
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithoutAnimation()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    .line 263
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 256
    :cond_1
    return-void
.end method

.method public revealWithoutAnimation()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->revealWithoutAnimation()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->revealWithoutAnimation()V

    .line 247
    :cond_1
    return-void
.end method

.method public setOnOPFingerComfirmListener(Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;

    .line 104
    return-void
.end method

.method public setTipsCompletedContent()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 160
    const v1, 0x7f0e01ea

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 161
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 162
    const v1, 0x7f0e01eb

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 163
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    return-void
.end method

.method public setTipsContinueContent()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 171
    const v1, 0x7f0e02d6

    .line 170
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 173
    const v1, 0x7f0e02d7

    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 174
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
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
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f0e02d6

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f0e02d7

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    :goto_0
    return-void

    .line 115
    :cond_0
    const/16 v0, 0x64

    if-lt p2, v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 117
    const v1, 0x7f0e02d8

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 119
    const v1, 0x7f0e02d9

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 123
    const v1, 0x7f0e01e8

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 124
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 125
    const v1, 0x7f0e01e9

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTipsStatusContent(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 137
    packed-switch p1, :pswitch_data_0

    .line 136
    :goto_0
    :pswitch_0
    return-void

    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 140
    const v1, 0x7f0e01e6

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 142
    const v1, 0x7f0e01e7

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 146
    const v1, 0x7f0e02d4

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 148
    const v1, 0x7f0e02d5

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 137
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

    .line 181
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 182
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 183
    .local v10, "animSet":Landroid/view/animation/AnimationSet;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 184
    .local v9, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 185
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 187
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 190
    .local v0, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 191
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 194
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v1, v10}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 195
    invoke-virtual {v10}, Landroid/view/animation/AnimationSet;->start()V

    .line 180
    return-void
.end method
