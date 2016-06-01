.class public Lcom/oneplus/tuner/OnePlusAboutActivity;
.super Lcom/oneplus/tuner/base/BaseActivity;
.source "OnePlusAboutActivity.java"


# instance fields
.field provisionTxt:Landroid/widget/TextView;

.field userAgreementTxt:Landroid/widget/TextView;

.field version:Ljava/lang/String;


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
    .line 65
    return-void
.end method

.method protected configIsSlideMenuEnable()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusAboutActivity;->mIsSlideMenuEnable:Z

    .line 48
    iput-object p0, p0, Lcom/oneplus/tuner/OnePlusAboutActivity;->mActivity:Landroid/app/Activity;

    .line 49
    return-void
.end method

.method protected configIsTitlebarMenuEnable()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusAboutActivity;->mIsTitlebarMenuEnable:Z

    .line 55
    return-void
.end method

.method protected configIsTitlebarOnlyOneMenuItem()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/oneplus/tuner/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0568

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/tuner/OnePlusAboutActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    const v3, 0x7f030016

    invoke-virtual {p0, v3}, Lcom/oneplus/tuner/OnePlusAboutActivity;->setContent(I)V

    .line 22
    const v3, 0x7f0b007e

    invoke-virtual {p0, v3}, Lcom/oneplus/tuner/OnePlusAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/tuner/OnePlusAboutActivity;->userAgreementTxt:Landroid/widget/TextView;

    .line 23
    const v3, 0x7f0b007b

    invoke-virtual {p0, v3}, Lcom/oneplus/tuner/OnePlusAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/tuner/OnePlusAboutActivity;->provisionTxt:Landroid/widget/TextView;

    .line 24
    iget-object v3, p0, Lcom/oneplus/tuner/OnePlusAboutActivity;->userAgreementTxt:Landroid/widget/TextView;

    new-instance v4, Lcom/oneplus/tuner/OnePlusAboutActivity$1;

    invoke-direct {v4, p0}, Lcom/oneplus/tuner/OnePlusAboutActivity$1;-><init>(Lcom/oneplus/tuner/OnePlusAboutActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusAboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 36
    .local v2, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusAboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 37
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/oneplus/tuner/OnePlusAboutActivity;->version:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :goto_0
    iget-object v3, p0, Lcom/oneplus/tuner/OnePlusAboutActivity;->provisionTxt:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c05a5

    invoke-virtual {p0, v5}, Lcom/oneplus/tuner/OnePlusAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/tuner/OnePlusAboutActivity;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
