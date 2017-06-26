.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$2$3;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;

.field final synthetic val$val:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;Z)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2$3;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;

    iput-boolean p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2$3;->val$val:Z

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

    .line 345
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2$3;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isAlertMark:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$302(Lcom/android/settings_ex/bluetooth/BluetoothSettings;Z)Z

    .line 349
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2$3;->val$val:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2$3;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2$3;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c04d5

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 360
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2$3;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2$3;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2$3;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2$3;->val$val:Z

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2$3;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 370
    return-void
.end method
