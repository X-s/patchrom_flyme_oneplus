.class Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$3;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/BluetoothController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothPairedDevicesChanged()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->access$500(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$3$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$3$1;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->access$600(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)V

    .line 194
    return-void
.end method

.method public onBluetoothStateChange(ZZ)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "connecting"    # Z

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->access$200(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)V

    .line 183
    return-void
.end method
