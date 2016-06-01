.class public Lcom/oneplus/tuner/OnePlusMoreActivity;
.super Lcom/oneplus/tuner/base/BaseActivity;
.source "OnePlusMoreActivity.java"


# instance fields
.field mAboutTv:Landroid/widget/TextView;

.field mAgreementTv:Landroid/widget/TextView;

.field private mBigDiliver:Landroid/view/View;

.field mExitTv:Landroid/widget/TextView;

.field mFeedbackTv:Landroid/widget/TextView;

.field mUpdateTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/oneplus/tuner/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/OnePlusMoreActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusMoreActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusMoreActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected configCurrentSelectedSlideMenuIndex()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x4

    iput v0, p0, Lcom/oneplus/tuner/OnePlusMoreActivity;->mSlideMenuSelectedIndex:I

    .line 117
    return-void
.end method

.method protected configIsSlideMenuEnable()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusMoreActivity;->mIsSlideMenuEnable:Z

    .line 101
    iput-object p0, p0, Lcom/oneplus/tuner/OnePlusMoreActivity;->mActivity:Landroid/app/Activity;

    .line 102
    return-void
.end method

.method protected configIsTitlebarMenuEnable()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusMoreActivity;->mIsTitlebarMenuEnable:Z

    .line 107
    return-void
.end method

.method protected configIsTitlebarOnlyOneMenuItem()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    .line 22
    invoke-super {p0, p1}, Lcom/oneplus/tuner/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusMoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0562

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusMoreActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 24
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusMoreActivity;->setContent(I)V

    .line 25
    const v0, 0x7f0b0170

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusMoreActivity;->mUpdateTv:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f0b0171

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusMoreActivity;->mFeedbackTv:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f0b0172

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusMoreActivity;->mAgreementTv:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f0b0173

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusMoreActivity;->mAboutTv:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f0b0175

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusMoreActivity;->mExitTv:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f0b0174

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusMoreActivity;->mBigDiliver:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusMoreActivity;->mUpdateTv:Landroid/widget/TextView;

    new-instance v1, Lcom/oneplus/tuner/OnePlusMoreActivity$1;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/OnePlusMoreActivity$1;-><init>(Lcom/oneplus/tuner/OnePlusMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusMoreActivity;->mFeedbackTv:Landroid/widget/TextView;

    new-instance v1, Lcom/oneplus/tuner/OnePlusMoreActivity$2;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/OnePlusMoreActivity$2;-><init>(Lcom/oneplus/tuner/OnePlusMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusMoreActivity;->mAgreementTv:Landroid/widget/TextView;

    new-instance v1, Lcom/oneplus/tuner/OnePlusMoreActivity$3;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/OnePlusMoreActivity$3;-><init>(Lcom/oneplus/tuner/OnePlusMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusMoreActivity;->mAboutTv:Landroid/widget/TextView;

    new-instance v1, Lcom/oneplus/tuner/OnePlusMoreActivity$4;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/OnePlusMoreActivity$4;-><init>(Lcom/oneplus/tuner/OnePlusMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusMoreActivity;->mExitTv:Landroid/widget/TextView;

    new-instance v1, Lcom/oneplus/tuner/OnePlusMoreActivity$5;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/OnePlusMoreActivity$5;-><init>(Lcom/oneplus/tuner/OnePlusMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    sget-boolean v0, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14049:Z

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusMoreActivity;->mExitTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusMoreActivity;->mBigDiliver:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :cond_0
    return-void
.end method
