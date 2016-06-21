.class Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$3;
.super Landroid/content/BroadcastReceiver;
.source "OPCellularTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$300(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-nez v1, :cond_2

    .line 215
    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OPCellularTile"

    const-string v2, "Sim card is removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    const/4 v2, 0x0

    # setter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z
    invoke-static {v1, v2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$502(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;Z)Z

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->refreshState()V
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$700(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)V

    .line 224
    :cond_1
    return-void

    .line 219
    :cond_2
    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$400()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "OPCellularTile"

    const-string v2, "Sim card is inserted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_3
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->getLastMobileDataState()Z
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$600(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)Z

    move-result v2

    # setter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->mIsCurrentEnabled:Z
    invoke-static {v1, v2}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$502(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;Z)Z

    goto :goto_0
.end method
