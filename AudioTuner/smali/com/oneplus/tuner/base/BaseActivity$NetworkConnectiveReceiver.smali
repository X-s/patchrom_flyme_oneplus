.class Lcom/oneplus/tuner/base/BaseActivity$NetworkConnectiveReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/base/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkConnectiveReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/base/BaseActivity;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/oneplus/tuner/base/BaseActivity$NetworkConnectiveReceiver;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com_oneplus_fresh_network_action"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    :cond_0
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity$NetworkConnectiveReceiver;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/oneplus/tuner/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 227
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 228
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 229
    const-string v3, "shuqi"

    const-string v4, "network available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity$NetworkConnectiveReceiver;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iput-boolean v6, v3, Lcom/oneplus/tuner/base/BaseActivity;->mIsNetworkAvailable:Z

    .line 231
    invoke-static {v6}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setNetworkConnectiveStatus(Z)V

    .line 237
    :goto_0
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity$NetworkConnectiveReceiver;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v3, v3, Lcom/oneplus/tuner/base/BaseActivity;->mReloadHeadsetConfigListener:Lcom/oneplus/tuner/base/BaseActivity$ReloadHeadsetConfigLsn;

    if-eqz v3, :cond_1

    .line 238
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity$NetworkConnectiveReceiver;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v3, v3, Lcom/oneplus/tuner/base/BaseActivity;->mReloadHeadsetConfigListener:Lcom/oneplus/tuner/base/BaseActivity$ReloadHeadsetConfigLsn;

    invoke-interface {v3}, Lcom/oneplus/tuner/base/BaseActivity$ReloadHeadsetConfigLsn;->reloadHeadsetConfig()V

    .line 241
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_1
    return-void

    .line 233
    .restart local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :cond_2
    const-string v3, "shuqi"

    const-string v4, "network not available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity$NetworkConnectiveReceiver;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iput-boolean v5, v3, Lcom/oneplus/tuner/base/BaseActivity;->mIsNetworkAvailable:Z

    .line 235
    invoke-static {v5}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setNetworkConnectiveStatus(Z)V

    goto :goto_0
.end method
