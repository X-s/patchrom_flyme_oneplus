.class Lcom/android/settings_ex/WirelessSettings$2;
.super Lorg/codeaurora/wfcservice/IWFCServiceCB$Stub;
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
    .param p1, "this$0"    # Lcom/android/settings_ex/WirelessSettings;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings$2;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-direct {p0}, Lorg/codeaurora/wfcservice/IWFCServiceCB$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public updateWFCMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings$2;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-static {v0}, Lcom/android/settings_ex/WirelessSettings;->-get2(Lcom/android/settings_ex/WirelessSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 133
    :cond_0
    const-string/jumbo v0, "WirelessSettings"

    const-string/jumbo v1, "updateWFCMessage fail."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings$2;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/WirelessSettings$2$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/WirelessSettings$2$1;-><init>(Lcom/android/settings_ex/WirelessSettings$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method
