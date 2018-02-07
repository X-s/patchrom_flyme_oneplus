.class public Lcom/oneplus/settings/OPAuthenticationInformationSettings;
.super Landroid/app/Activity;
.source "OPAuthenticationInformationSettings.java"


# static fields
.field private static final ONEPLUS_A3000:Ljava/lang/String; = "oneplus A3000"

.field private static final ONEPLUS_A3000_CMIITID:Ljava/lang/String; = "2016CP1331"

.field private static final ONEPLUS_A3010:Ljava/lang/String; = "oneplus A3010"

.field private static final ONEPLUS_A3010_CMIITID:Ljava/lang/String; = "2016CP5088"

.field private static final ONEPLUS_A5000:Ljava/lang/String; = "ONEPLUS A5000"

.field private static final ONEPLUS_A5000_CMITTID:Ljava/lang/String; = "2017CP2198"


# instance fields
.field private mCmiitIdView:Landroid/widget/TextView;

.field private mModelTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setCmiitID()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e04a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "cmiitid":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "oneplus A3000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "2016CP1331"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :goto_0
    return-void

    .line 50
    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "oneplus A3010"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "2016CP5088"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 52
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "ONEPLUS A5000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "2017CP2198"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "2016CP5088"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setDeviceType()V
    .locals 5

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 42
    const v2, 0x7f0e04a3

    .line 41
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "deviceModel":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mModelTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0e0358

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 29
    const v0, 0x7f0400d1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->setContentView(I)V

    .line 30
    const v0, 0x7f1101d5

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mModelTextView:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f1101d1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    .line 32
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 34
    const/16 v1, 0x2000

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->setDeviceType()V

    .line 37
    invoke-direct {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->setCmiitID()V

    .line 24
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 62
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->finish()V

    .line 64
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
