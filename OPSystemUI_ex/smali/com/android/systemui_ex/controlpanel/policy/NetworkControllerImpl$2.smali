.class Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$2;
.super Landroid/os/AsyncTask;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->setWifiEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;Z)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$2;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iput-boolean p2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$2;->val$enabled:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 452
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 456
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$2;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 457
    .local v0, "wifiApState":I
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$2;->val$enabled:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$2;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 462
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$2;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$2;->val$enabled:Z

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 463
    return-object v3
.end method
