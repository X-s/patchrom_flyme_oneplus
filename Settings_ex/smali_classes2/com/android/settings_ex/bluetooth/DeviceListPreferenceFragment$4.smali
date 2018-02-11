.class Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$4;
.super Ljava/lang/Object;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$preference1:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;
    .param p2, "val$key"    # Ljava/lang/String;
    .param p3, "val$preference1"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$4;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$4;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$4;->val$preference1:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$4;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$4;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$4;->val$preference1:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->filterBondedDevice(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    .line 282
    return-void
.end method
