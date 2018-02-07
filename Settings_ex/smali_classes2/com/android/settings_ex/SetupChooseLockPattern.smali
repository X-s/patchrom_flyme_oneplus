.class public Lcom/android/settings_ex/SetupChooseLockPattern;
.super Lcom/android/settings_ex/ChooseLockPattern;
.source "SetupChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPattern;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requirePassword"    # Z
    .param p2, "challenge"    # J

    .prologue
    .line 71
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 70
    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/settings_ex/ChooseLockPattern;->createIntent(Landroid/content/Context;ZJI)Landroid/content/Intent;

    move-result-object v0

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings_ex/SetupChooseLockPattern;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 73
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requirePassword"    # Z
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 63
    invoke-static {p0, p1, p2, v1}, Lcom/android/settings_ex/ChooseLockPattern;->createIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings_ex/SetupChooseLockPattern;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 66
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requirePassword"    # Z
    .param p2, "confirmCredentials"    # Z

    .prologue
    .line 57
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 56
    invoke-static {p0, p1, p2, v1}, Lcom/android/settings_ex/ChooseLockPattern;->createIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings_ex/SetupChooseLockPattern;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 59
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
    .line 83
    const-class v0, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 78
    const-class v0, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;

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
    .line 127
    invoke-static {}, Lcom/android/settings_ex/SetupWizardUtils;->getSettingTheme()I

    move-result p2

    .line 128
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/ChooseLockPattern;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 125
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings_ex/ChooseLockPattern;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPattern;->setTheme()V

    .line 92
    const v3, 0x7f1102e1

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SetupChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 93
    .local v0, "drawerLayout":Landroid/support/v4/widget/DrawerLayout;
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    .line 94
    const v3, 0x7f1102e5

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SetupChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 95
    .local v2, "listViewLayout":Landroid/widget/ListView;
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setFitsSystemWindows(Z)V

    .line 96
    const v3, 0x7f1102e2

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SetupChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 97
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 87
    return-void
.end method

.method public setTheme()V
    .locals 4

    .prologue
    .line 103
    const v2, 0x7f100389

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SetupChooseLockPattern;->setTheme(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPattern;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 105
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 106
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x106000d

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 108
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, -0x7ffeff00

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPattern;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    const/16 v1, 0x2500

    .line 119
    .local v1, "systemUiVisibility":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 102
    return-void

    .line 117
    .end local v1    # "systemUiVisibility":I
    :cond_1
    const/16 v1, 0x500

    .restart local v1    # "systemUiVisibility":I
    goto :goto_0
.end method
