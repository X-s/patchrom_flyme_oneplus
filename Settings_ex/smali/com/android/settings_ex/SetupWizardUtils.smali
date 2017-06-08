.class public Lcom/android/settings_ex/SetupWizardUtils;
.super Ljava/lang/Object;
.source "SetupWizardUtils.java"


# static fields
.field public static final EXTRA_SCRIPT_URI:Ljava/lang/String; = "scriptUri"

.field private static final TAG:Ljava/lang/String; = "SetupWizardUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyImmersiveFlags(Landroid/app/Dialog;)V
    .locals 0
    .param p0, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/app/Dialog;)V

    .line 75
    return-void
.end method

.method public static copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3
    .param p0, "fromIntent"    # Landroid/content/Intent;
    .param p1, "toIntent"    # Landroid/content/Intent;

    .prologue
    .line 78
    const-string v0, "theme"

    const-string v1, "theme"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v0, "useImmersiveMode"

    const-string v1, "useImmersiveMode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method public static getSettingTheme()I
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f0d0068

    return v0
.end method

.method public static getTheme(Landroid/content/ContentResolver;)I
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const v0, 0x7f0d001c

    .line 57
    :goto_0
    return v0

    .line 54
    :cond_0
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isAndroidModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const v0, 0x7f0d001f

    goto :goto_0

    .line 57
    :cond_1
    const v0, 0x7f0d0068

    goto :goto_0
.end method

.method public static getTheme(Landroid/content/Intent;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->isLightTheme(Landroid/content/Intent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const v0, 0x7f0d0066

    .line 41
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0d0065

    goto :goto_0
.end method

.method public static isUsingWizardManager(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scriptUri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setImmersiveMode(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "useImmersiveMode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 68
    .local v0, "useImmersiveMode":Z
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/view/Window;)V

    .line 71
    :cond_0
    return-void
.end method
