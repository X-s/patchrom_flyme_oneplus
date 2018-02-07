.class public Lcom/android/settings_ex/SetupChooseLockGeneric;
.super Lcom/android/settings_ex/ChooseLockGeneric;
.source "SetupChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;
    }
.end annotation


# static fields
.field private static final KEY_UNLOCK_SET_DO_LATER:Ljava/lang/String; = "unlock_set_do_later"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric;-><init>()V

    return-void
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v14/preference/PreferenceFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    const-class v0, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 68
    const-class v0, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;

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
    .line 79
    invoke-static {}, Lcom/android/settings_ex/SetupWizardUtils;->getSettingTheme()I

    move-result p2

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/ChooseLockGeneric;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 77
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric;->setTheme()V

    .line 91
    const v3, 0x7f1102e1

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SetupChooseLockGeneric;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 92
    .local v0, "drawerLayout":Landroid/support/v4/widget/DrawerLayout;
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    .line 93
    const v3, 0x7f1102e5

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SetupChooseLockGeneric;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 94
    .local v2, "listViewLayout":Landroid/widget/ListView;
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setFitsSystemWindows(Z)V

    .line 95
    const v3, 0x7f1102e2

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SetupChooseLockGeneric;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 96
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 84
    return-void
.end method

.method public setTheme()V
    .locals 4

    .prologue
    .line 100
    const v2, 0x7f100388

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SetupChooseLockGeneric;->setTheme(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 102
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 103
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x106000d

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 105
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, -0x7ffeff00

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    const/16 v1, 0x2500

    .line 116
    .local v1, "systemUiVisibility":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 99
    return-void

    .line 114
    .end local v1    # "systemUiVisibility":I
    :cond_1
    const/16 v1, 0x500

    .restart local v1    # "systemUiVisibility":I
    goto :goto_0
.end method
