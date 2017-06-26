.class Lcom/android/settings_ex/WirelessSettings$3;
.super Landroid/os/Handler;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/WirelessSettings;)V
    .locals 0

    .prologue
    .line 802
    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 807
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 809
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.stk"

    # invokes: Lcom/android/settings_ex/WirelessSettings;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/WirelessSettings;->access$300(Lcom/android/settings_ex/WirelessSettings;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 832
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    const-string v1, "sim_application_settings"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method
