.class public Lcom/oneplus/tuner/view/MainTitleBar;
.super Landroid/widget/RelativeLayout;
.source "MainTitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHandle:Landroid/widget/ImageButton;

.field private mSearch:Landroid/widget/ImageButton;

.field private mTitle:Landroid/widget/TextView;

.field private mWaveBrand:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/view/MainTitleBar;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/view/MainTitleBar;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/view/MainTitleBar;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/oneplus/tuner/view/MainTitleBar;->mActivity:Landroid/app/Activity;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    const v0, 0x7f0b0195

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/MainTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oneplus/tuner/view/MainTitleBar;->mHandle:Landroid/widget/ImageButton;

    .line 48
    const v0, 0x7f0b0062

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/MainTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/tuner/view/MainTitleBar;->mTitle:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0b0197

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/MainTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oneplus/tuner/view/MainTitleBar;->mSearch:Landroid/widget/ImageButton;

    .line 50
    const v0, 0x7f0b0196

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/MainTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/tuner/view/MainTitleBar;->mWaveBrand:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/oneplus/tuner/view/MainTitleBar;->mHandle:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/oneplus/tuner/view/MainTitleBar;->mSearch:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getHandleBt()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/tuner/view/MainTitleBar;->mHandle:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getSearchBt()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oneplus/tuner/view/MainTitleBar;->mSearch:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oneplus/tuner/view/MainTitleBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hideSearchButton()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/tuner/view/MainTitleBar;->mSearch:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 66
    return-void
.end method

.method public hideWaveBrandImage()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oneplus/tuner/view/MainTitleBar;->mWaveBrand:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    :pswitch_0
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x7f0b0195
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/oneplus/tuner/view/MainTitleBar;->mActivity:Landroid/app/Activity;

    .line 111
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oneplus/tuner/view/MainTitleBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method public showSearchButton()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oneplus/tuner/view/MainTitleBar;->mSearch:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 70
    return-void
.end method

.method public showWaveBrandImage()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/tuner/view/MainTitleBar;->mWaveBrand:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    return-void
.end method
