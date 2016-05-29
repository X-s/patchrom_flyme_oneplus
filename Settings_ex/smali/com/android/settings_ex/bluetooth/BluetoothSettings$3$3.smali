.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$3$3;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$val:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;Z)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3$3;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;

    iput-boolean p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3$3;->val$val:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3$3;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isAlertMark:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$302(Lcom/android/settings_ex/bluetooth/BluetoothSettings;Z)Z

    .line 270
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3$3;->val$val:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3$3;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3$3;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09034d

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3$3;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3$3;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3$3;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3$3;->val$val:Z

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3$3;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 282
    return-void
.end method
