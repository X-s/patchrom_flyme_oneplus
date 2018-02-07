.class public Lcom/android/settings_ex/OxygenSetupChooseLockGeneric;
.super Lcom/android/settings_ex/OxygenChooseLockGeneric;
.source "OxygenSetupChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;
    }
.end annotation


# static fields
.field private static final KEY_UNLOCK_SET_DO_LATER:Ljava/lang/String; = "unlock_set_do_later"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenChooseLockGeneric;-><init>()V

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
    .line 58
    const-class v0, Lcom/android/settings_ex/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/android/settings_ex/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenSetupChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/SetupWizardUtils;->getOxygenTheme(Landroid/content/Intent;)I

    move-result p2

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/OxygenChooseLockGeneric;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/settings_ex/OxygenChooseLockGeneric;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v1, 0x7f1102e2

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/OxygenSetupChooseLockGeneric;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 73
    .local v0, "layout":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 70
    return-void
.end method
