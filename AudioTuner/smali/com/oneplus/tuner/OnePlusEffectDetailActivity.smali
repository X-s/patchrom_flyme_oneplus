.class public Lcom/oneplus/tuner/OnePlusEffectDetailActivity;
.super Landroid/app/Activity;
.source "OnePlusEffectDetailActivity.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mCategoryTv:Landroid/widget/TextView;

.field private mDialog:Lcom/oneplus/uc/UcAlertDialog;

.field private mEarPhoneTv:Landroid/widget/TextView;

.field private mIntroTv:Landroid/widget/TextView;

.field private mNameResId:[I

.field private mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mNameResId:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c0550
        0x7f0c0551
        0x7f0c0552
        0x7f0c0553
        0x7f0c0554
        0x7f0c0555
        0x7f0c0556
        0x7f0c0557
        0x7f0c0558
    .end array-data
.end method

.method private getCategory(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mNameResId:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 42
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 43
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 45
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "sound_effect"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/tuner/providers/SoundEffectItem;

    iput-object v3, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 47
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 48
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030059

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "content":Landroid/view/View;
    new-instance v3, Lcom/oneplus/uc/UcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/oneplus/uc/UcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/oneplus/uc/UcAlertDialog$Builder;->create()Lcom/oneplus/uc/UcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mDialog:Lcom/oneplus/uc/UcAlertDialog;

    .line 51
    iget-object v3, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mDialog:Lcom/oneplus/uc/UcAlertDialog;

    invoke-virtual {v3}, Lcom/oneplus/uc/UcAlertDialog;->show()V

    .line 52
    iget-object v3, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mDialog:Lcom/oneplus/uc/UcAlertDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/oneplus/uc/UcAlertDialog;->setCancelable(Z)V

    .line 53
    iget-object v3, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mDialog:Lcom/oneplus/uc/UcAlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oneplus/uc/UcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 55
    iget-object v3, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mDialog:Lcom/oneplus/uc/UcAlertDialog;

    invoke-virtual {v3}, Lcom/oneplus/uc/UcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 56
    iget-object v3, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mDialog:Lcom/oneplus/uc/UcAlertDialog;

    invoke-virtual {v3}, Lcom/oneplus/uc/UcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 57
    iget-object v3, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mDialog:Lcom/oneplus/uc/UcAlertDialog;

    invoke-virtual {v3, v0}, Lcom/oneplus/uc/UcAlertDialog;->setContentView(Landroid/view/View;)V

    .line 59
    const v3, 0x7f0b0199

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mEarPhoneTv:Landroid/widget/TextView;

    .line 60
    const v3, 0x7f0b019b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mCategoryTv:Landroid/widget/TextView;

    .line 61
    const v3, 0x7f0b019d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mTitleTv:Landroid/widget/TextView;

    .line 62
    const v3, 0x7f0b019f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mIntroTv:Landroid/widget/TextView;

    .line 63
    const v3, 0x7f0b01a0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mButton:Landroid/widget/Button;

    .line 64
    iget-object v3, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mButton:Landroid/widget/Button;

    new-instance v4, Lcom/oneplus/tuner/OnePlusEffectDetailActivity$1;

    invoke-direct {v4, p0}, Lcom/oneplus/tuner/OnePlusEffectDetailActivity$1;-><init>(Lcom/oneplus/tuner/OnePlusEffectDetailActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v3, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mEarPhoneTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v4, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v3, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mCategoryTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v4, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCategoryId:I

    invoke-direct {p0, v4}, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->getCategory(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v3, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mTitleTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v4, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v3, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mIntroTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v4, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mDialog:Lcom/oneplus/uc/UcAlertDialog;

    invoke-virtual {v0}, Lcom/oneplus/uc/UcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mDialog:Lcom/oneplus/uc/UcAlertDialog;

    invoke-virtual {v0}, Lcom/oneplus/uc/UcAlertDialog;->dismiss()V

    .line 100
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->mDialog:Lcom/oneplus/uc/UcAlertDialog;

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 102
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 87
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->finish()V

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
