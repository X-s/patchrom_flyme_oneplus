.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/BluetoothSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/16 v3, 0x17

    const/16 v2, 0x15

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 179
    const/16 v1, 0x78

    .line 178
    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    .line 181
    const v1, 0x7f0e04fd

    .line 180
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-static {v0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->-wrap0(Lcom/android/settings_ex/bluetooth/BluetoothSettings;I)V

    .line 190
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    .line 187
    const v1, 0x7f0e04fe

    .line 186
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-static {v0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->-wrap0(Lcom/android/settings_ex/bluetooth/BluetoothSettings;I)V

    goto :goto_0
.end method
