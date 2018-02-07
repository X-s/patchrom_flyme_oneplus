.class public Lcom/android/settings_ex/notification/OxygenRedactionInterstitial;
.super Lcom/android/settings_ex/SettingsActivity;
.source "OxygenRedactionInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;-><init>()V

    return-void
.end method

.method public static createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 76
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    const-string/jumbo v2, ":settings:show_fragment_title_resid"

    .line 78
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const v0, 0x7f0e0e46

    .line 76
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 81
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    .line 76
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    const v0, 0x7f0e0e41

    goto :goto_0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 54
    .local v0, "modIntent":Landroid/content/Intent;
    const-string/jumbo v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v1, 0x7f1102e2

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 67
    .local v0, "layout":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 64
    return-void
.end method
