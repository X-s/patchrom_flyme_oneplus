.class public Lcom/oneplus/tuner/view/PersonalView;
.super Landroid/widget/RelativeLayout;
.source "PersonalView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCommends:Landroid/widget/TextView;

.field private mLoginBt:Landroid/widget/ImageButton;

.field private mRomLoginUtils:Lcom/oppo/tribune/RomLoginUtils;

.field private mShares:Landroid/widget/TextView;

.field private mUserName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Lcom/oppo/tribune/RomLoginUtils;

    invoke-direct {v0, p1}, Lcom/oppo/tribune/RomLoginUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/tuner/view/PersonalView;->mRomLoginUtils:Lcom/oppo/tribune/RomLoginUtils;

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    const v0, 0x7f0b0149

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/PersonalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oneplus/tuner/view/PersonalView;->mLoginBt:Landroid/widget/ImageButton;

    .line 30
    const v0, 0x7f0b01a7

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/PersonalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/tuner/view/PersonalView;->mUserName:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f0b01a9

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/PersonalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/tuner/view/PersonalView;->mShares:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f0b01aa

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/PersonalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/tuner/view/PersonalView;->mCommends:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/oneplus/tuner/view/PersonalView;->mLoginBt:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/tuner/view/PersonalView;->mRomLoginUtils:Lcom/oppo/tribune/RomLoginUtils;

    invoke-virtual {v0}, Lcom/oppo/tribune/RomLoginUtils;->changeRomLoginState()V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x7f0b0149
        :pswitch_0
    .end packed-switch
.end method

.method public setCommendrCount(J)V
    .locals 3
    .param p1, "count"    # J

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oneplus/tuner/view/PersonalView;->mCommends:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/tuner/view/PersonalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/oppo/tribune/util/Utils;->checkNumber(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method

.method public setShareCount(J)V
    .locals 3
    .param p1, "count"    # J

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oneplus/tuner/view/PersonalView;->mShares:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/tuner/view/PersonalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/oppo/tribune/util/Utils;->checkNumber(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/oneplus/tuner/view/PersonalView;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/view/PersonalView;->mUserName:Landroid/widget/TextView;

    const v1, 0x7f0c066d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public tryToLogin()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oneplus/tuner/view/PersonalView;->mRomLoginUtils:Lcom/oppo/tribune/RomLoginUtils;

    invoke-virtual {v0}, Lcom/oppo/tribune/RomLoginUtils;->tryToLogin()V

    .line 48
    return-void
.end method

.method public updateLoginInfo(JJLjava/lang/String;)V
    .locals 1
    .param p1, "commendCount"    # J
    .param p3, "shareCount"    # J
    .param p5, "username"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/tuner/view/PersonalView;->setCommendrCount(J)V

    .line 69
    invoke-virtual {p0, p3, p4}, Lcom/oneplus/tuner/view/PersonalView;->setShareCount(J)V

    .line 70
    invoke-virtual {p0, p5}, Lcom/oneplus/tuner/view/PersonalView;->setUserName(Ljava/lang/String;)V

    .line 71
    return-void
.end method
