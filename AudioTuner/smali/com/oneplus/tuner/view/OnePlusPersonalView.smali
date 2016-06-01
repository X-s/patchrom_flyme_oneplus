.class public Lcom/oneplus/tuner/view/OnePlusPersonalView;
.super Landroid/widget/RelativeLayout;
.source "OnePlusPersonalView.java"


# instance fields
.field public mHeadSetArea:Landroid/widget/RelativeLayout;

.field public mHeadSetName:Landroid/widget/TextView;

.field private mRomLoginUtils:Lcom/oppo/tribune/RomLoginUtils;

.field public mUserIcon:Landroid/widget/ImageView;

.field public mUserLayout:Landroid/widget/RelativeLayout;

.field public mUserName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/view/OnePlusPersonalView;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/view/OnePlusPersonalView;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/view/OnePlusPersonalView;->init(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/view/OnePlusPersonalView;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    new-instance v0, Lcom/oppo/tribune/RomLoginUtils;

    invoke-direct {v0, p1}, Lcom/oppo/tribune/RomLoginUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mRomLoginUtils:Lcom/oppo/tribune/RomLoginUtils;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    const v0, 0x7f0b0177

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/OnePlusPersonalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mUserIcon:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f0b00a7

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/OnePlusPersonalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mUserName:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0b017a

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/OnePlusPersonalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mHeadSetName:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0b0178

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/OnePlusPersonalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mHeadSetArea:Landroid/widget/RelativeLayout;

    .line 59
    const v0, 0x7f0b0176

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/OnePlusPersonalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mUserLayout:Landroid/widget/RelativeLayout;

    .line 60
    return-void
.end method


# virtual methods
.method public setHeadsetName(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mHeadSetName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    return-void
.end method

.method public setUserIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mUserIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    return-void
.end method

.method public tryToLogin()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mRomLoginUtils:Lcom/oppo/tribune/RomLoginUtils;

    invoke-virtual {v0}, Lcom/oppo/tribune/RomLoginUtils;->tryToLogin()V

    .line 64
    return-void
.end method
