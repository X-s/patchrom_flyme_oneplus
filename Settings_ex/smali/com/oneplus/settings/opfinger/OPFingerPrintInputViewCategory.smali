.class public Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;
.super Landroid/preference/PreferenceCategory;
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
    .line 44
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mHandler:Landroid/os/Handler;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mPercent:I

    .line 41
    const v0, 0x7f04008c

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mLayoutResId:I

    .line 46
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->initViews(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mHandler:Landroid/os/Handler;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mPercent:I

    .line 41
    const v0, 0x7f04008c

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mLayoutResId:I

    .line 52
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->initViews(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mHandler:Landroid/os/Handler;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mPercent:I

    .line 41
    const v0, 0x7f04008c

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mLayoutResId:I

    .line 59
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->initViews(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
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
    .line 187
    const/16 v0, 0xd

    if-gt p1, v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->doRecognitionByCount(IIZ)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->doRecognitionByCount(IIZ)V

    goto :goto_0
.end method

.method public enrollFailed()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 216
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f090097

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 217
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f090098

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 218
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithoutAnimation()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    .line 224
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 226
    :cond_1
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    .line 70
    const v0, 0x7f0f018e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    .line 74
    const v0, 0x7f0f018d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    .line 78
    const v0, 0x7f0f018f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0f0190

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0f0191

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 263
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 265
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mLayoutResId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, "layout":Landroid/view/View;
    return-object v0
.end method

.method public resetTextAndBtn()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 210
    :cond_2
    return-void
.end method

.method public resetWithAnimation()V
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->resetTextAndBtn()V

    .line 250
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithAnimation()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    .line 256
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 258
    :cond_1
    return-void
.end method

.method public resetWithoutAnimation()V
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->resetTextAndBtn()V

    .line 239
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->resetWithoutAnimation()V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->resetWithoutAnimation()V

    .line 244
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 246
    :cond_1
    return-void
.end method

.method public revealWithoutAnimation()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;->revealWithoutAnimation()V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->revealWithoutAnimation()V

    .line 235
    :cond_1
    return-void
.end method

.method public setOnOPFingerComfirmListener(Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;

    .line 103
    return-void
.end method

.method public setTipsCompletedContent()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f090095

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    return-void
.end method

.method public setTipsContinueContent()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 154
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f090092

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    return-void
.end method

.method public setTipsProgressContent(II)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "percent"    # I

    .prologue
    const/16 v2, 0x8

    .line 106
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f090092

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    :goto_0
    return-void

    .line 110
    :cond_0
    const/16 v0, 0x64

    if-lt p2, v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f090093

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f090094

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTipsStatusContent(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 126
    packed-switch p1, :pswitch_data_0

    .line 138
    :goto_0
    :pswitch_0
    return-void

    .line 128
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 132
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f09008d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f09008e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 126
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

    .line 162
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setVisibility(I)V

    .line 163
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 164
    .local v10, "animSet":Landroid/view/animation/AnimationSet;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 165
    .local v9, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 166
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 168
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 170
    .local v0, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 171
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 174
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerPrintRecognitionContinueView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    invoke-virtual {v1, v10}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 175
    invoke-virtual {v10}, Landroid/view/animation/AnimationSet;->start()V

    .line 184
    return-void
.end method
