.class Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

.field final synthetic val$device:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

.field final synthetic val$profile:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x2

    .line 299
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    .line 301
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 302
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    instance-of v0, v0, Lcom/android/settings_exlib/bluetooth/MapProfile;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    instance-of v0, v0, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;
    invoke-static {v1, v2}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->access$000(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    # invokes: Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->access$100(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;Landroid/widget/CheckBox;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    .line 310
    return-void
.end method
