.class Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$3;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiEnabed:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->access$202(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;Z)Z

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->access$800(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method public onWifiAvailable(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    # setter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiEnabed:Z
    invoke-static {v0, p1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->access$202(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;Z)Z

    .line 210
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mHasClicked:Z
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->access$300(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mHasClicked:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->access$302(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;Z)Z

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->access$400(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)V

    goto :goto_0
.end method

.method public onWifiStateChanged(ZLjava/lang/String;)V
    .locals 1
    .param p1, "connected"    # Z
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    # setter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mWifiConnected:Z
    invoke-static {v0, p1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->access$502(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;Z)Z

    .line 221
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    # setter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->mSsid:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->access$602(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->access$700(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)V

    .line 223
    return-void
.end method
