.class public Lcom/oneplus/tuner/OnePlusUserAgreementActivity;
.super Lcom/oneplus/tuner/base/BaseActivity;
.source "OnePlusUserAgreementActivity.java"


# instance fields
.field mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/oneplus/tuner/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected configCurrentSelectedSlideMenuIndex()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method protected configIsSlideMenuEnable()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusUserAgreementActivity;->mIsSlideMenuEnable:Z

    .line 49
    iput-object p0, p0, Lcom/oneplus/tuner/OnePlusUserAgreementActivity;->mActivity:Landroid/app/Activity;

    .line 50
    return-void
.end method

.method protected configIsTitlebarMenuEnable()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusUserAgreementActivity;->mIsTitlebarMenuEnable:Z

    .line 56
    return-void
.end method

.method protected configIsTitlebarOnlyOneMenuItem()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/oneplus/tuner/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusUserAgreementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0567

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/tuner/OnePlusUserAgreementActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    const v2, 0x7f030072

    invoke-virtual {p0, v2}, Lcom/oneplus/tuner/OnePlusUserAgreementActivity;->setContent(I)V

    .line 20
    const v2, 0x7f0b01f8

    invoke-virtual {p0, v2}, Lcom/oneplus/tuner/OnePlusUserAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/oneplus/tuner/OnePlusUserAgreementActivity;->mWebView:Landroid/webkit/WebView;

    .line 21
    iget-object v2, p0, Lcom/oneplus/tuner/OnePlusUserAgreementActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 22
    iget-object v2, p0, Lcom/oneplus/tuner/OnePlusUserAgreementActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/oneplus/tuner/OnePlusUserAgreementActivity$1;

    invoke-direct {v3, p0}, Lcom/oneplus/tuner/OnePlusUserAgreementActivity$1;-><init>(Lcom/oneplus/tuner/OnePlusUserAgreementActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 28
    iget-object v2, p0, Lcom/oneplus/tuner/OnePlusUserAgreementActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/oneplus/tuner/OnePlusUserAgreementActivity$2;

    invoke-direct {v3, p0}, Lcom/oneplus/tuner/OnePlusUserAgreementActivity$2;-><init>(Lcom/oneplus/tuner/OnePlusUserAgreementActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 36
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusUserAgreementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "lan":Ljava/lang/String;
    const-string v0, "file:///android_asset/copyright_en.htm"

    .line 38
    .local v0, "cotyright":Ljava/lang/String;
    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    const-string v0, "file:///android_asset/copyright.htm"

    .line 43
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/oneplus/tuner/OnePlusUserAgreementActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 44
    return-void

    .line 40
    :cond_1
    const-string v2, "TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    const-string v0, "file:///android_asset/copyright_tw.htm"

    goto :goto_0
.end method
