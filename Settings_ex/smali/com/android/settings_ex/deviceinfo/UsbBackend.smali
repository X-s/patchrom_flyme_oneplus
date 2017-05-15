.class public Lcom/android/settings_ex/deviceinfo/UsbBackend;
.super Ljava/lang/Object;
.source "UsbBackend.java"


# static fields
.field private static final MODE_DATA_MASK:I = 0x6

.field public static final MODE_DATA_MIDI:I = 0x6

.field public static final MODE_DATA_MTP:I = 0x2

.field public static final MODE_DATA_NONE:I = 0x0

.field public static final MODE_DATA_PTP:I = 0x4

.field private static final MODE_POWER_MASK:I = 0x1

.field public static final MODE_POWER_SINK:I = 0x0

.field public static final MODE_POWER_SOURCE:I = 0x1


# instance fields
.field private mIsUnlocked:Z

.field private mPort:Landroid/hardware/usb/UsbPort;

.field private mPortStatus:Landroid/hardware/usb/UsbPortStatus;

.field private final mRestricted:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v5, 0x0

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 50
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "unlocked"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mIsUnlocked:Z

    .line 52
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUserManager:Landroid/os/UserManager;

    .line 53
    const-class v5, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbManager;

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 55
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUserManager:Landroid/os/UserManager;

    const-string v6, "no_usb_file_transfer"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mRestricted:Z

    .line 56
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v3

    .line 59
    .local v3, "ports":[Landroid/hardware/usb/UsbPort;
    array-length v0, v3

    .line 60
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 61
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Landroid/hardware/usb/UsbManager;->getPortStatus(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v4

    .line 62
    .local v4, "status":Landroid/hardware/usb/UsbPortStatus;
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 63
    aget-object v5, v3, v1

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    .line 64
    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 68
    .end local v4    # "status":Landroid/hardware/usb/UsbPortStatus;
    :cond_0
    return-void

    .line 60
    .restart local v4    # "status":Landroid/hardware/usb/UsbPortStatus;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private modeToPower(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 128
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private setUsbFunction(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x1

    .line 93
    packed-switch p1, :pswitch_data_0

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    .line 111
    :goto_0
    return-void

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "mtp"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_0

    .line 99
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "ptp"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_0

    .line 103
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "midi"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCurrentMode()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 71
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 74
    .local v0, "power":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbBackend;->getUsbDataMode()I

    move-result v1

    or-int/2addr v1, v0

    .line 76
    .end local v0    # "power":I
    :goto_1
    return v1

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbBackend;->getUsbDataMode()I

    move-result v1

    or-int/lit8 v1, v1, 0x0

    goto :goto_1
.end method

.method public getUsbDataMode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 80
    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mIsUnlocked:Z

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mtp"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    const/4 v0, 0x2

    goto :goto_0

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "ptp"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    const/4 v0, 0x4

    goto :goto_0

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "midi"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public isModeSupported(I)Z
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 133
    iget-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mRestricted:Z

    if-eqz v3, :cond_1

    and-int/lit8 v3, p1, 0x6

    if-eqz v3, :cond_1

    and-int/lit8 v3, p1, 0x6

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v1

    .line 138
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v3, :cond_4

    .line 139
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/UsbBackend;->modeToPower(I)I

    move-result v0

    .line 140
    .local v0, "power":I
    and-int/lit8 v3, p1, 0x6

    if-eqz v3, :cond_2

    .line 142
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v1, v0, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    goto :goto_0

    .line 146
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v3, v0, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v3, v0, v2}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 151
    .end local v0    # "power":I
    :cond_4
    and-int/lit8 v3, p1, 0x1

    if-eq v3, v2, :cond_5

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_1
.end method

.method public setMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 114
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v2, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/UsbBackend;->modeToPower(I)I

    move-result v1

    .line 119
    .local v1, "powerRole":I
    and-int/lit8 v2, p1, 0x6

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, v1, v0}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    .local v0, "dataRole":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2, v3, v1, v0}, Landroid/hardware/usb/UsbManager;->setPortRoles(Landroid/hardware/usb/UsbPort;II)V

    .line 124
    .end local v0    # "dataRole":I
    .end local v1    # "powerRole":I
    :cond_0
    and-int/lit8 v2, p1, 0x6

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbBackend;->setUsbFunction(I)V

    .line 125
    return-void

    .line 119
    .restart local v1    # "powerRole":I
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
