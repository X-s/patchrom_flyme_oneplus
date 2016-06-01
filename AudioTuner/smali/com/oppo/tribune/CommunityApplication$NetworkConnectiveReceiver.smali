.class Lcom/oppo/tribune/CommunityApplication$NetworkConnectiveReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CommunityApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/CommunityApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkConnectiveReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/CommunityApplication;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/CommunityApplication;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oppo/tribune/CommunityApplication$NetworkConnectiveReceiver;->this$0:Lcom/oppo/tribune/CommunityApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    iget-object v3, p0, Lcom/oppo/tribune/CommunityApplication$NetworkConnectiveReceiver;->this$0:Lcom/oppo/tribune/CommunityApplication;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/oppo/tribune/CommunityApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 44
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 45
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    const-string v3, "CommunityApplication"

    const-string v4, "network available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setNetworkConnectiveStatus(Z)V

    .line 53
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 49
    .restart local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :cond_1
    const-string v3, "CommunityApplication"

    const-string v4, "network not available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setNetworkConnectiveStatus(Z)V

    goto :goto_0
.end method
