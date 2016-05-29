.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$3$1;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3$1;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 306
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3$1;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isAlertMark:Z
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$300(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3$1;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 309
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3$1;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3$1;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 314
    :cond_0
    return-void
.end method
