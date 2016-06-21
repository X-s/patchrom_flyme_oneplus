.class Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$1;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->handleClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

.field final synthetic val$isEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;Z)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    iput-boolean p2, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$1;->val$isEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui_ex/statusbar/policy/BluetoothController;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;->access$100(Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile;)Lcom/android/systemui_ex/statusbar/policy/BluetoothController;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BluetoothTile$1;->val$isEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothController;->setBluetoothEnabled(Z)V

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
