.class Lcom/android/settings_ex/location/LocationSettings$2;
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
    .line 407
    iput-object p1, p0, Lcom/android/settings_ex/location/LocationSettings$2;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 410
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mHighPowerChangeReceiver receive action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string/jumbo v1, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings$2;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings_ex/location/LocationSettings;->-wrap0(Lcom/android/settings_ex/location/LocationSettings;)Landroid/support/v7/preference/PreferenceScreen;

    .line 409
    :cond_0
    return-void
.end method
