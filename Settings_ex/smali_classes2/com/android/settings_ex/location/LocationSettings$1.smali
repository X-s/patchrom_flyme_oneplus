.class Lcom/android/settings_ex/location/LocationSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/location/LocationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/location/LocationSettings;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/settings_ex/location/LocationSettings$1;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings$1;->getResultCode()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 392
    .local v1, "flag":Z
    :goto_0
    :try_start_0
    const-string/jumbo v4, "pref_key"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, "pref_key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings$1;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v4, v3}, Lcom/android/settings_ex/location/LocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPButtonPreference;

    .line 394
    .local v2, "pref":Lcom/oneplus/settings/ui/OPButtonPreference;
    invoke-virtual {v2, v1}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonEnable(Z)V

    .line 395
    invoke-virtual {v2, v1}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonVisible(Z)V

    .line 396
    const-string/jumbo v4, "LocationSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCheckKillProcessesReceiver flag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    if-nez v1, :cond_0

    .line 398
    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ui/OPButtonPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v2    # "pref":Lcom/oneplus/settings/ui/OPButtonPreference;
    .end local v3    # "pref_key":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 390
    .end local v1    # "flag":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "flag":Z
    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "LocationSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCheckKillProcessesReceiver error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
