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
    .param p1, "this$0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity$1;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 485
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    invoke-static {p2}, Lcom/android/settings_ex/Utils;->isBatteryPresent(Landroid/content/Intent;)Z

    move-result v1

    .line 489
    .local v1, "batteryPresent":Z
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity$1;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-static {v2}, Lcom/android/settings_ex/SettingsActivity;->-get0(Lcom/android/settings_ex/SettingsActivity;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 490
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity$1;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-static {v2, v1}, Lcom/android/settings_ex/SettingsActivity;->-set0(Lcom/android/settings_ex/SettingsActivity;Z)Z

    .line 491
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity$1;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-static {v2}, Lcom/android/settings_ex/SettingsActivity;->-wrap1(Lcom/android/settings_ex/SettingsActivity;)V

    .line 484
    .end local v1    # "batteryPresent":Z
    :cond_0
    return-void
.end method
