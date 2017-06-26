.class public Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothPermissionActivity"


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mOkButton:Landroid/widget/Button;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mRequestType:I

.field private mReturnClass:Ljava/lang/String;

.field private mReturnPackage:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    .line 57
    iput v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    .line 58
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->dismissDialog()V

    return-void
.end method

.method private createConnectionDialogView()Landroid/view/View;
    .locals 5

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->createRemoteName()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "mRemoteName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040016

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 167
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v2, 0x7f120026

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    .line 168
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    const v2, 0x7f0c0340

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v1
.end method

.method private createMapDialogView()Landroid/view/View;
    .locals 5

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->createRemoteName()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "mRemoteName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040016

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 185
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v2, 0x7f120026

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    .line 186
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    const v2, 0x7f0c0346

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v1
.end method

.method private createPhonebookDialogView()Landroid/view/View;
    .locals 5

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->createRemoteName()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "mRemoteName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040016

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 176
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v2, 0x7f120026

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    .line 177
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    const v2, 0x7f0c0342

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v1
.end method

.method private createRemoteName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "mRemoteName":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const v1, 0x7f0c07ac

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_0
    return-object v0

    .line 154
    .end local v0    # "mRemoteName":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createSapDialogView()Landroid/view/View;
    .locals 5

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->createRemoteName()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "mRemoteName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040016

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 194
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v2, 0x7f120026

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    .line 195
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    const v2, 0x7f0c0348

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v1
.end method

.method private dismissDialog()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->dismiss()V

    .line 75
    return-void
.end method

.method private onNegative()V
    .locals 7

    .prologue
    .line 207
    const-string v4, "BluetoothPermissionActivity"

    const-string v5, "onNegative"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v0, 0x1

    .line 210
    .local v0, "always":Z
    iget v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 211
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 212
    .local v1, "bluetoothManager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    .line 214
    .local v3, "cachedDeviceManager":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 215
    .local v2, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    if-nez v2, :cond_0

    .line 216
    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 220
    :cond_0
    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->checkAndIncreaseMessageRejectionCount()Z

    move-result v0

    .line 223
    .end local v1    # "bluetoothManager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    .end local v2    # "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .end local v3    # "cachedDeviceManager":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4, v0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->sendReplyIntentToReceiver(ZZ)V

    .line 224
    return-void
.end method

.method private onPositive()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 201
    const-string v0, "BluetoothPermissionActivity"

    const-string v1, "onPositive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0, v2, v2}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->sendReplyIntentToReceiver(ZZ)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 204
    return-void
.end method

.method private sendReplyIntentToReceiver(ZZ)V
    .locals 4
    .param p1, "allowed"    # Z
    .param p2, "always"    # Z

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    :cond_0
    const-string v1, "BluetoothPermissionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendReplyIntentToReceiver() Request type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mReturnPackage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mReturnClass"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    const-string v1, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 240
    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 242
    return-void

    .line 235
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;I)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "requestType"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 121
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 122
    const-string v1, "BluetoothPermissionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showDialog() Request type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " this: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    packed-switch p2, :pswitch_data_0

    .line 138
    :goto_0
    const v1, 0x7f0c02d6

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 139
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 140
    const v1, 0x7f0c02d7

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 141
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 142
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mOkButton:Landroid/widget/Button;

    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->setupAlert()V

    .line 145
    return-void

    .line 126
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->createConnectionDialogView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto :goto_0

    .line 129
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->createPhonebookDialogView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto :goto_0

    .line 132
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->createMapDialogView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto :goto_0

    .line 135
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->createSapDialogView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "BluetoothPermissionActivity"

    const-string v1, "Back button pressed! ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 245
    packed-switch p2, :pswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 247
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->onPositive()V

    goto :goto_0

    .line 251
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->onNegative()V

    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 79
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 82
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    const-string v2, "BluetoothPermissionActivity"

    const-string v3, "Error: this activity may be started only with intent ACTION_CONNECTION_ACCESS_REQUEST"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 115
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 91
    const-string v2, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    .line 92
    const-string v2, "android.bluetooth.device.extra.CLASS_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    .line 93
    const-string v2, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    .line 96
    const-string v2, "BluetoothPermissionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate() Request type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    if-ne v2, v5, :cond_1

    .line 99
    const v2, 0x7f0c033e

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->showDialog(Ljava/lang/String;I)V

    .line 112
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    iput-boolean v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    goto :goto_0

    .line 100
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    if-ne v2, v6, :cond_2

    .line 101
    const v2, 0x7f0c0341

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->showDialog(Ljava/lang/String;I)V

    goto :goto_1

    .line 102
    :cond_2
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 103
    const v2, 0x7f0c0345

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->showDialog(Ljava/lang/String;I)V

    goto :goto_1

    .line 104
    :cond_3
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 105
    const v2, 0x7f0c0347

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->showDialog(Ljava/lang/String;I)V

    goto :goto_1

    .line 108
    :cond_4
    const-string v2, "BluetoothPermissionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: bad request type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 261
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    .line 265
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method
