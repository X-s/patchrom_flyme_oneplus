.class Lcom/android/settings_ex/SettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsActivity;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity$1;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 390
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    invoke-static {p2}, Lcom/android/settings_ex/Utils;->isBatteryPresent(Landroid/content/Intent;)Z

    move-result v1

    .line 394
    .local v1, "batteryPresent":Z
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity$1;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # getter for: Lcom/android/settings_ex/SettingsActivity;->mBatteryPresent:Z
    invoke-static {v2}, Lcom/android/settings_ex/SettingsActivity;->access$000(Lcom/android/settings_ex/SettingsActivity;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 395
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity$1;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # setter for: Lcom/android/settings_ex/SettingsActivity;->mBatteryPresent:Z
    invoke-static {v2, v1}, Lcom/android/settings_ex/SettingsActivity;->access$002(Lcom/android/settings_ex/SettingsActivity;Z)Z

    .line 396
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity$1;->this$0:Lcom/android/settings_ex/SettingsActivity;

    const/4 v3, 0x1

    # invokes: Lcom/android/settings_ex/SettingsActivity;->invalidateCategories(Z)V
    invoke-static {v2, v3}, Lcom/android/settings_ex/SettingsActivity;->access$100(Lcom/android/settings_ex/SettingsActivity;Z)V

    .line 399
    .end local v1    # "batteryPresent":Z
    :cond_0
    return-void
.end method
