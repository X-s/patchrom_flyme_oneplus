.class public Lcom/android/setupwizardlib/util/WizardManagerHelper;
.super Ljava/lang/Object;
.source "WizardManagerHelper.java"


# static fields
.field private static final ACTION_NEXT:Ljava/lang/String; = "com.android.wizard.NEXT"

.field private static final EXTRA_ACTION_ID:Ljava/lang/String; = "actionId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EXTRA_IS_FIRST_RUN:Ljava/lang/String; = "firstRun"

.field private static final EXTRA_RESULT_CODE:Ljava/lang/String; = "com.android.setupwizard.ResultCode"

.field private static final EXTRA_SCRIPT_URI:Ljava/lang/String; = "scriptUri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_THEME:Ljava/lang/String; = "theme"

.field public static final EXTRA_USE_IMMERSIVE_MODE:Ljava/lang/String; = "useImmersiveMode"

.field private static final EXTRA_WIZARD_BUNDLE:Ljava/lang/String; = "wizardBundle"

.field public static final SETTINGS_GLOBAL_DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"

.field public static final SETTINGS_SECURE_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field public static final THEME_GLIF:Ljava/lang/String; = "glif"

.field public static final THEME_GLIF_LIGHT:Ljava/lang/String; = "glif_light"

.field public static final THEME_HOLO:Ljava/lang/String; = "holo"

.field public static final THEME_HOLO_LIGHT:Ljava/lang/String; = "holo_light"

.field public static final THEME_MATERIAL:Ljava/lang/String; = "material"

.field public static final THEME_MATERIAL_BLUE:Ljava/lang/String; = "material_blue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THEME_MATERIAL_BLUE_LIGHT:Ljava/lang/String; = "material_blue_light"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THEME_MATERIAL_LIGHT:Ljava/lang/String; = "material_light"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3
    .param p0, "srcIntent"    # Landroid/content/Intent;
    .param p1, "dstIntent"    # Landroid/content/Intent;

    .prologue
    .line 125
    const-string/jumbo v0, "wizardBundle"

    const-string/jumbo v1, "wizardBundle"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 126
    const-string/jumbo v0, "firstRun"

    .line 127
    const-string/jumbo v1, "firstRun"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 126
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    const-string/jumbo v0, "scriptUri"

    const-string/jumbo v1, "scriptUri"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string/jumbo v0, "actionId"

    const-string/jumbo v1, "actionId"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method public static getNextIntent(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 1
    .param p0, "originalIntent"    # Landroid/content/Intent;
    .param p1, "resultCode"    # I

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->getNextIntent(Landroid/content/Intent;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getNextIntent(Landroid/content/Intent;ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p0, "originalIntent"    # Landroid/content/Intent;
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.wizard.NEXT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 107
    const-string/jumbo v1, "com.android.setupwizard.ResultCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 111
    :cond_0
    const-string/jumbo v1, "theme"

    const-string/jumbo v2, "theme"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    return-object v0
.end method

.method public static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 176
    const-string/jumbo v3, "device_provisioned"

    .line 175
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 179
    const-string/jumbo v3, "device_provisioned"

    .line 178
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static isLightTheme(Landroid/content/Intent;Z)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "def"    # Z

    .prologue
    .line 193
    const-string/jumbo v1, "theme"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "theme":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->isLightTheme(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isLightTheme(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "theme"    # Ljava/lang/String;
    .param p1, "def"    # Z

    .prologue
    .line 206
    const-string/jumbo v0, "holo_light"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "material_light"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const-string/jumbo v0, "material_blue_light"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 206
    if-nez v0, :cond_0

    .line 207
    const-string/jumbo v0, "glif_light"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 206
    if-eqz v0, :cond_1

    .line 208
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 209
    :cond_1
    const-string/jumbo v0, "holo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "material"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    const-string/jumbo v0, "material_blue"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 209
    if-nez v0, :cond_2

    .line 210
    const-string/jumbo v0, "glif"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 209
    if-eqz v0, :cond_3

    .line 211
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_3
    return p1
.end method

.method public static isSetupWizardIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    const-string/jumbo v0, "firstRun"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUserSetupComplete(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 153
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 155
    const-string/jumbo v3, "user_setup_complete"

    .line 154
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 160
    const-string/jumbo v3, "device_provisioned"

    .line 159
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
