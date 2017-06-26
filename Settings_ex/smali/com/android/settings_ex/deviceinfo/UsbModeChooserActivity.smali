.class public Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;
.super Landroid/app/Activity;
.source "UsbModeChooserActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbModeChooserActivity"


# instance fields
.field private mFunctions:[Ljava/lang/String;

.field private mIsUnlocked:Z

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    new-instance v0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$1;-><init>(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->setCurrentFunction(I)V

    return-void
.end method

.method private getCurrentFunction()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-boolean v2, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mIsUnlocked:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mFunctions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 124
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mFunctions:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method private setCurrentFunction(I)V
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mFunctions:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 64
    .local v1, "i":Landroid/content/Intent;
    const-string v5, "unlocked"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mIsUnlocked:Z

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const-string v5, "usb"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbManager;

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 68
    const-string v5, "user"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    const-string v6, "no_usb_file_transfer"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    .line 71
    .local v2, "isFileTransferRestricted":Z
    if-eqz v2, :cond_0

    .line 72
    new-array v3, v10, [Ljava/lang/CharSequence;

    const v5, 0x7f0c0d5b

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v8

    const v5, 0x7f0c0d60

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v9

    .line 73
    .local v3, "items":[Ljava/lang/CharSequence;
    new-array v5, v10, [Ljava/lang/String;

    aput-object v11, v5, v8

    const-string v6, "midi"

    aput-object v6, v5, v9

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mFunctions:[Ljava/lang/String;

    .line 88
    :goto_0
    new-instance v0, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    const v5, 0x7f0c0d61

    invoke-virtual {v0, v5}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 91
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->getCurrentFunction()I

    move-result v5

    new-instance v6, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$2;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$2;-><init>(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)V

    invoke-virtual {v0, v3, v5, v6}, Lcom/oneplus/app/OPAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 102
    new-instance v5, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$3;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$3;-><init>(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)V

    invoke-virtual {v0, v5}, Lcom/oneplus/app/OPAlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 108
    const v5, 0x7f0c03a2

    new-instance v6, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;-><init>(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)V

    invoke-virtual {v0, v5, v6}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 114
    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v4

    .line 115
    .local v4, "levelDialog":Lcom/oneplus/app/OPAlertDialog;
    invoke-virtual {v4}, Lcom/oneplus/app/OPAlertDialog;->show()V

    .line 116
    return-void

    .line 76
    .end local v0    # "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    .end local v3    # "items":[Ljava/lang/CharSequence;
    .end local v4    # "levelDialog":Lcom/oneplus/app/OPAlertDialog;
    :cond_0
    new-array v3, v12, [Ljava/lang/CharSequence;

    const v5, 0x7f0c0d5b

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v8

    const v5, 0x7f0c0d5c

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v9

    const v5, 0x7f0c0d5d

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v10

    .line 81
    .restart local v3    # "items":[Ljava/lang/CharSequence;
    new-array v5, v12, [Ljava/lang/String;

    aput-object v11, v5, v8

    const-string v6, "mtp"

    aput-object v6, v5, v9

    const-string v6, "ptp"

    aput-object v6, v5, v10

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mFunctions:[Ljava/lang/String;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void
.end method
