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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyImmersiveFlags(Landroid/app/Dialog;)V
    .locals 0
    .param p0, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 81
    invoke-static {p0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/app/Dialog;)V

    .line 80
    return-void
.end method

.method public static copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3
    .param p0, "fromIntent"    # Landroid/content/Intent;
    .param p1, "toIntent"    # Landroid/content/Intent;

    .prologue
    .line 85
    const-string/jumbo v0, "theme"

    .line 86
    const-string/jumbo v1, "theme"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string/jumbo v0, "useImmersiveMode"

    .line 88
    const-string/jumbo v1, "useImmersiveMode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 87
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    return-void
.end method

.method public static getOxygenSettingTheme()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f10038a

    return v0
.end method

.method public static getOxygenTheme(Landroid/content/Intent;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->isLightTheme(Landroid/content/Intent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const v0, 0x7f1003f3

    return v0

    .line 60
    :cond_0
    const v0, 0x7f1003f1

    return v0
.end method

.method public static getSettingTheme()I
    .locals 1

    .prologue
    .line 53
    const v0, 0x7f100389

    return v0
.end method

.method public static getTheme(Landroid/content/Intent;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->isLightTheme(Landroid/content/Intent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const v0, 0x7f1003f2

    return v0

    .line 40
    :cond_0
    const v0, 0x7f1003f0

    return v0
.end method

.method public static getTransparentTheme(Landroid/content/Intent;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->isLightTheme(Landroid/content/Intent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const v0, 0x7f1003f5

    return v0

    .line 48
    :cond_0
    const v0, 0x7f1003f4

    return v0
.end method

.method public static isUsingWizardManager(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "scriptUri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setImmersiveMode(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 74
    const-string/jumbo v2, "useImmersiveMode"

    const/4 v3, 0x0

    .line 73
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 75
    .local v0, "useImmersiveMode":Z
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/view/Window;)V

    .line 72
    :cond_0
    return-void
.end method
