.class public Lcom/oneplus/tuner/view/OnePlusTitleBar;
.super Landroid/widget/RelativeLayout;
.source "OnePlusTitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mMenuIcon:Landroid/widget/ImageView;

.field private mMixerIcon:Landroid/widget/ImageView;

.field private mSearchIcon:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/view/OnePlusTitleBar;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/view/OnePlusTitleBar;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/view/OnePlusTitleBar;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mActivity:Landroid/app/Activity;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030058

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    const v0, 0x7f0b0195

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/OnePlusTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mMenuIcon:Landroid/widget/ImageView;

    .line 46
    const v0, 0x7f0b0062

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/OnePlusTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mTitle:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0b0197

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/OnePlusTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mSearchIcon:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f0b0196

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/OnePlusTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mMixerIcon:Landroid/widget/ImageView;

    .line 49
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mMixerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getHandleBt()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mMenuIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSearchBt()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mSearchIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hideMixerIcon()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mMixerIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    return-void
.end method

.method public hideSearchIcon()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mSearchIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/oneplus/tuner/MainActivity1;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/oneplus/tuner/MyConfigActivity;

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/oneplus/tuner/MixerActivity;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/oneplus/tuner/MixerActivity;

    invoke-virtual {v0}, Lcom/oneplus/tuner/MixerActivity;->onBackPressed()V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;

    invoke-virtual {v0}, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;->onBackPressed()V

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/oneplus/tuner/MainActivity1;

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/oneplus/tuner/MainActivity1;

    invoke-virtual {v0}, Lcom/oneplus/tuner/MainActivity1;->startSearchActivity()V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/oneplus/tuner/MyConfigActivity;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/oneplus/tuner/MyConfigActivity;

    invoke-virtual {v0}, Lcom/oneplus/tuner/MyConfigActivity;->startSearchActivity()V

    goto :goto_0

    .line 109
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/oneplus/tuner/MainActivity1;

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/oneplus/tuner/MainActivity1;

    invoke-virtual {v0}, Lcom/oneplus/tuner/MainActivity1;->startConfigEffectActivity()V

    goto :goto_0

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/oneplus/tuner/MyConfigActivity;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/oneplus/tuner/MyConfigActivity;

    invoke-virtual {v0}, Lcom/oneplus/tuner/MyConfigActivity;->startConfigEffectActivity()V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x7f0b0195
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/oneplus/tuner/MainActivity1;

    if-eqz v0, :cond_0

    .line 121
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 125
    :goto_0
    return v0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/oneplus/tuner/MyConfigActivity;

    if-eqz v0, :cond_1

    .line 123
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mActivity:Landroid/app/Activity;

    .line 130
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public showMixerIcon()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mMixerIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    return-void
.end method

.method public showSearchIcon()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTitleBar;->mSearchIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    return-void
.end method
