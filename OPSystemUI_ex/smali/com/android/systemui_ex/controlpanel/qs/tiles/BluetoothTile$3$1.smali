.class Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$3$1;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$3;->onBluetoothPairedDevicesChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$3;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$3;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$3$1;->this$1:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$3$1;->this$1:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$3;

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$3;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->access$300(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    move-result-object v0

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->updateItems()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->access$400(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)V

    .line 191
    return-void
.end method
