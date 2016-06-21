.class public Lcom/android/systemui_ex/usb/UsbPermissionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mAlwaysUse:Landroid/widget/CheckBox;

.field private mClearDefaultHint:Landroid/widget/TextView;

.field private mDevice:Landroid/hardware/usb/UsbDevice;

.field private mDisconnectedReceiver:Lcom/android/systemui_ex/usb/UsbDisconnectedReceiver;

.field private mPackageName:Ljava/lang/String;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPermissionGranted:Z

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 170
    :cond_0
    if-eqz p2, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 161
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mPermissionGranted:Z

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->finish()V

    .line 165
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 66
    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "device"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbDevice;

    iput-object v7, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 67
    const-string v7, "accessory"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbAccessory;

    iput-object v7, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 68
    const-string v7, "android.intent.extra.INTENT"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    iput-object v7, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mPendingIntent:Landroid/app/PendingIntent;

    .line 69
    const-string v7, "android.intent.extra.UID"

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mUid:I

    .line 70
    const-string v7, "package"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 75
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "appName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 84
    .local v1, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 85
    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 86
    iget-object v7, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-nez v7, :cond_0

    .line 87
    const v7, 0x7f0c0046

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 88
    new-instance v7, Lcom/android/systemui_ex/usb/UsbDisconnectedReceiver;

    iget-object v8, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-direct {v7, p0, v8}, Lcom/android/systemui_ex/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbAccessory;)V

    iput-object v7, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mDisconnectedReceiver:Lcom/android/systemui_ex/usb/UsbDisconnectedReceiver;

    .line 93
    :goto_0
    const v7, 0x104000a

    invoke-virtual {p0, v7}, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 94
    const/high16 v7, 0x1040000

    invoke-virtual {p0, v7}, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 95
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 96
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 99
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 101
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x1090032

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 102
    iget-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v8, 0x10202d1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 103
    iget-object v7, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-nez v7, :cond_1

    .line 104
    iget-object v7, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    const v8, 0x7f0c004d

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setText(I)V

    .line 108
    :goto_1
    iget-object v7, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v7, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    iget-object v7, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b0038

    invoke-virtual {v7, v8, v9}, Landroid/widget/CheckBox;->setTextAppearance(Landroid/content/Context;I)V

    .line 110
    iget-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v8, 0x10202d2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    .line 112
    iget-object v7, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->setupAlert()V

    .line 116
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .end local v2    # "appName":Ljava/lang/String;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :goto_2
    return-void

    .line 76
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "UsbPermissionActivity"

    const-string v8, "unable to look up package name"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->finish()V

    goto :goto_2

    .line 90
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .restart local v2    # "appName":Ljava/lang/String;
    :cond_0
    const v7, 0x7f0c0045

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 91
    new-instance v7, Lcom/android/systemui_ex/usb/UsbDisconnectedReceiver;

    iget-object v8, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v7, p0, v8}, Lcom/android/systemui_ex/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbDevice;)V

    iput-object v7, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mDisconnectedReceiver:Lcom/android/systemui_ex/usb/UsbDisconnectedReceiver;

    goto/16 :goto_0

    .line 106
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v7, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    const v8, 0x7f0c004c

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    .line 120
    const-string v5, "usb"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 121
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v3

    .line 124
    .local v3, "service":Landroid/hardware/usb/IUsbManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v5, :cond_0

    .line 127
    const-string v5, "device"

    iget-object v6, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 128
    iget-boolean v5, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mPermissionGranted:Z

    if-eqz v5, :cond_0

    .line 129
    iget-object v5, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget v6, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mUid:I

    invoke-interface {v3, v5, v6}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 130
    iget-object v5, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    iget v5, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 132
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v6, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v4}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 136
    .end local v4    # "userId":I
    :cond_0
    iget-object v5, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v5, :cond_1

    .line 137
    const-string v5, "accessory"

    iget-object v6, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 138
    iget-boolean v5, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mPermissionGranted:Z

    if-eqz v5, :cond_1

    .line 139
    iget-object v5, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iget v6, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mUid:I

    invoke-interface {v3, v5, v6}, Landroid/hardware/usb/IUsbManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 140
    iget-object v5, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    iget v5, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 142
    .restart local v4    # "userId":I
    iget-object v5, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iget-object v6, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v4}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    .line 146
    .end local v4    # "userId":I
    :cond_1
    const-string v5, "permission"

    iget-boolean v6, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mPermissionGranted:Z

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    iget-object v5, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    :goto_0
    iget-object v5, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mDisconnectedReceiver:Lcom/android/systemui_ex/usb/UsbDisconnectedReceiver;

    if-eqz v5, :cond_2

    .line 155
    iget-object v5, p0, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->mDisconnectedReceiver:Lcom/android/systemui_ex/usb/UsbDisconnectedReceiver;

    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/usb/UsbPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    :cond_2
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 158
    return-void

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v5, "UsbPermissionActivity"

    const-string v6, "PendingIntent was cancelled"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :catch_1
    move-exception v1

    .line 151
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "UsbPermissionActivity"

    const-string v6, "IUsbService connection failed"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
