.class public Lcom/android/settings_ex/SetupEncryptionInterstitial;
.super Lcom/android/settings_ex/EncryptionInterstitial;
.source "SetupEncryptionInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings_ex/EncryptionInterstitial;-><init>()V

    return-void
.end method

.method public static createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "requirePasswordDefault"    # Z
    .param p3, "unlockMethodIntent"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings_ex/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "startIntent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings_ex/SetupEncryptionInterstitial;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 59
    const-string/jumbo v1, "extra_prefs_show_button_bar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 60
    const-string/jumbo v2, ":settings:show_fragment_title_resid"

    const/4 v3, -0x1

    .line 59
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    return-object v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings_ex/EncryptionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 67
    .local v0, "modIntent":Landroid/content/Intent;
    const-string/jumbo v1, ":settings:show_fragment"

    .line 68
    const-class v2, Lcom/android/settings_ex/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    return-object v0
.end method

.method public initThemes()V
    .locals 4

    .prologue
    .line 104
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "zhuyang--initThemes"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupEncryptionInterstitial;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 107
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 108
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x106000d

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 110
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupEncryptionInterstitial;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, -0x7ffeff00

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupEncryptionInterstitial;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    const/16 v1, 0x2500

    .line 121
    .local v1, "systemUiVisibility":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupEncryptionInterstitial;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupEncryptionInterstitial;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 103
    return-void

    .line 119
    .end local v1    # "systemUiVisibility":I
    :cond_1
    const/16 v1, 0x500

    .restart local v1    # "systemUiVisibility":I
    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lcom/android/settings_ex/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 80
    invoke-static {}, Lcom/android/settings_ex/SetupWizardUtils;->getSettingTheme()I

    move-result p2

    .line 81
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "zhuyang--onApplyThemeResource"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/EncryptionInterstitial;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/settings_ex/EncryptionInterstitial;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupEncryptionInterstitial;->initThemes()V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupEncryptionInterstitial;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 92
    const v1, 0x7f1102e2

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SetupEncryptionInterstitial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 86
    .local v0, "layout":Landroid/widget/LinearLayout;
    return-void
.end method
