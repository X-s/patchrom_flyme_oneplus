.class Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->-get1(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->-get1(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->-get5(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)Z

    move-result v0

    .line 69
    .local v0, "status":Z
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->-get5(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 62
    .end local v0    # "status":Z
    :cond_0
    return-void

    .line 70
    .restart local v0    # "status":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->-get4(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 71
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->-get2(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)Landroid/widget/Switch;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 72
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->-get3(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 73
    return-void
.end method
