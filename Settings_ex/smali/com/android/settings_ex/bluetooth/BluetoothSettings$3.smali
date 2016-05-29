.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothSettings;
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

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 247
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 248
    .local v0, "val":Z
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 256
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bluetooth"

    invoke-static {v1, v2}, Lcom/android/settings_ex/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09034d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 348
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 354
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEnableBluetooth:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 369
    :cond_3
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 358
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$400(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 359
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$400(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    .line 360
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 361
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 362
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$400(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const v2, 0x7f090183

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 364
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 365
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableBluetooth:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$400(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const v2, 0x7f090184

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0
.end method
