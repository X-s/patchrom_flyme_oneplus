.class public Lcom/oneplus/settings/OPAuthenticationInformationSettings;
.super Landroid/app/Activity;
.source "OPAuthenticationInformationSettings.java"


# instance fields
.field private mModelTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setDeviceType()V
    .locals 5

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0284

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "deviceModel":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mModelTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 19
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c0281

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 20
    const v0, 0x7f04008b

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->setContentView(I)V

    .line 21
    const v0, 0x7f120104

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mModelTextView:Landroid/widget/TextView;

    .line 22
    invoke-direct {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->setDeviceType()V

    .line 23
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 34
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->finish()V

    .line 36
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
