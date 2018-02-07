.class public Lcom/android/settings_ex/SetupChooseLockPassword;
.super Lcom/android/settings_ex/ChooseLockPassword;
.source "SetupChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "requirePasswordToDecrypt"    # Z
    .param p5, "challenge"    # J

    .prologue
    .line 76
    invoke-static/range {p0 .. p6}, Lcom/android/settings_ex/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;

    move-result-object v0

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings_ex/SetupChooseLockPassword;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 79
    const-string/jumbo v1, "extra_prefs_show_button_bar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "requirePasswordToDecrypt"    # Z
    .param p5, "password"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static/range {p0 .. p5}, Lcom/android/settings_ex/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings_ex/SetupChooseLockPassword;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 70
    const-string/jumbo v1, "extra_prefs_show_button_bar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "requirePasswordToDecrypt"    # Z
    .param p5, "confirmCredentials"    # Z

    .prologue
    .line 58
    invoke-static/range {p0 .. p5}, Lcom/android/settings_ex/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings_ex/SetupChooseLockPassword;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 61
    const-string/jumbo v1, "extra_prefs_show_button_bar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    return-object v0
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    const-class v0, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 132
    invoke-static {}, Lcom/android/settings_ex/SetupWizardUtils;->getSettingTheme()I

    move-result p2

    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/ChooseLockPassword;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 130
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings_ex/ChooseLockPassword;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword;->setTheme()V

    .line 99
    const v3, 0x7f1102e1

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SetupChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 100
    .local v0, "drawerLayout":Landroid/support/v4/widget/DrawerLayout;
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    .line 101
    const v3, 0x7f1102e5

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SetupChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 102
    .local v2, "listViewLayout":Landroid/widget/ListView;
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setFitsSystemWindows(Z)V

    .line 103
    const v3, 0x7f1102e2

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SetupChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 104
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 94
    return-void
.end method

.method public setTheme()V
    .locals 4

    .prologue
    .line 108
    const v2, 0x7f100388

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SetupChooseLockPassword;->setTheme(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 110
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 111
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x106000d

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 113
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, -0x7ffeff00

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    const/16 v1, 0x2500

    .line 124
    .local v1, "systemUiVisibility":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 107
    return-void

    .line 122
    .end local v1    # "systemUiVisibility":I
    :cond_1
    const/16 v1, 0x500

    .restart local v1    # "systemUiVisibility":I
    goto :goto_0
.end method
