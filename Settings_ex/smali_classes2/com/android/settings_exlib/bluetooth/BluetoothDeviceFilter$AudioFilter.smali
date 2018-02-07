.class final Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$AudioFilter;
.super Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$AudioFilter;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$AudioFilter;-><init>()V

    return-void
.end method


# virtual methods
.method matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 3
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;
    .param p2, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 111
    if-eqz p1, :cond_1

    .line 112
    sget-object v0, Lcom/android/settings_exlib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    return v1

    .line 115
    :cond_0
    sget-object v0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    return v1

    .line 118
    :cond_1
    if-eqz p2, :cond_3

    .line 119
    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    .line 119
    if-eqz v0, :cond_3

    .line 121
    :cond_2
    return v1

    .line 124
    :cond_3
    return v2
.end method
