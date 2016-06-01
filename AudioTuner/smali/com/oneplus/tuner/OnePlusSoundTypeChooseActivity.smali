.class public Lcom/oneplus/tuner/OnePlusSoundTypeChooseActivity;
.super Lcom/oneplus/tuner/base/BaseActivity;
.source "OnePlusSoundTypeChooseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/oneplus/tuner/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected configCurrentSelectedSlideMenuIndex()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method protected configIsSlideMenuEnable()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method protected configIsTitlebarMenuEnable()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method protected configIsTitlebarOnlyOneMenuItem()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/oneplus/tuner/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusSoundTypeChooseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c056a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusSoundTypeChooseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusSoundTypeChooseActivity;->setContent(I)V

    .line 15
    return-void
.end method
