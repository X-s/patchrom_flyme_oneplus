.class public final Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$1;,
        Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$2;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_PASSKEY_MAX_LENGTH:I = 0x6

.field private static final BLUETOOTH_PIN_MAX_LENGTH:I = 0x10

.field private static final MESSAGE_DELAYED_DISMISS:I = 0x1

.field private static final PAIRING_POPUP_TIMEOUT:I = 0x88b8

.field private static final TAG:Ljava/lang/String; = "BluetoothPairingDialog"


# instance fields
.field private mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

.field private mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mHandler:Landroid/os/Handler;

.field private mOkButton:Landroid/widget/Button;

.field private mPairingKey:Ljava/lang/String;

.field private mPairingView:Landroid/widget/EditText;

.field private mPbapClientProfile:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mType:I


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 80
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 505
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method private createConfirmationDialog()V
    .locals 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 351
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 352
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 351
    const v2, 0x7f0e06b5

    invoke-virtual {p0, v2, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 353
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 354
    const v1, 0x7f0e005f

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 355
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 356
    const v1, 0x7f0e0061

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 357
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 358
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 349
    return-void
.end method

.method private createConsentDialog()V
    .locals 4

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 363
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 364
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 363
    const v2, 0x7f0e06b5

    invoke-virtual {p0, v2, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 365
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 366
    const v1, 0x7f0e005f

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 367
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 368
    const v1, 0x7f0e0061

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 369
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 370
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 361
    return-void
.end method

.method private createDisplayPasskeyOrPinDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 374
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 375
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    new-array v2, v5, [Ljava/lang/Object;

    .line 376
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 375
    const v3, 0x7f0e06b5

    invoke-virtual {p0, v3, v2}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 377
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 378
    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 379
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 380
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 384
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 385
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 387
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 388
    .local v1, "pinBytes":[B
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0
.end method

.method private createPinEntryView()Landroid/view/View;
    .locals 12

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040037

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 197
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f1100c9

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 198
    .local v6, "messageViewCaptionHint":Landroid/widget/TextView;
    const v8, 0x7f1100cb

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 199
    .local v5, "messageView2":Landroid/widget/TextView;
    const v8, 0x7f1100ca

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 201
    .local v0, "alphanumericPin":Landroid/widget/CheckBox;
    const v8, 0x7f1100cc

    .line 200
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 202
    .local v1, "contactSharing":Landroid/widget/CheckBox;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 203
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v10}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 202
    const v9, 0x7f0e06c0

    invoke-virtual {p0, v9, v8}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b036c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 207
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPbapClientProfile:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPbapClientProfile:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v8}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 208
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 210
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 211
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 225
    :goto_0
    new-instance v8, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$3;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$3;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;)V

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 236
    const v8, 0x7f1100c8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    .line 237
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 238
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 241
    const v4, 0x7f0e06b9

    .line 243
    .local v4, "messageIdHint":I
    iget v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    sparse-switch v8, :sswitch_data_0

    .line 261
    const-string/jumbo v8, "BluetoothPairingDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Incorrect pairing type for createPinEntryView: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v8, 0x0

    return-object v8

    .line 212
    .end local v4    # "messageIdHint":I
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 213
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v8

    .line 216
    const/16 v9, 0x408

    .line 215
    if-ne v8, v9, :cond_3

    .line 217
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 220
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 221
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 245
    .restart local v4    # "messageIdHint":I
    :sswitch_0
    const v4, 0x7f0e06ba

    .line 248
    :sswitch_1
    const v3, 0x7f0e06bb

    .line 250
    .local v3, "messageId":I
    const/16 v2, 0x10

    .line 265
    .local v2, "maxLength":I
    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    .line 266
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    .line 267
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 268
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/text/InputFilter;

    .line 269
    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v10, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 268
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 271
    return-object v7

    .line 254
    .end local v2    # "maxLength":I
    .end local v3    # "messageId":I
    :sswitch_2
    const v3, 0x7f0e06bc

    .line 256
    .restart local v3    # "messageId":I
    const/4 v2, 0x6

    .line 257
    .restart local v2    # "maxLength":I
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 243
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private createUserEntryDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 182
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 183
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 182
    const v2, 0x7f0e06b5

    invoke-virtual {p0, v2, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 184
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createPinEntryView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 185
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 186
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 187
    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 188
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 189
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 191
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    .line 192
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 180
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 275
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040036

    invoke-virtual {v8, v9, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 276
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f1100c2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 277
    .local v5, "pairingViewCaption":Landroid/widget/TextView;
    const v8, 0x7f1100c3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 278
    .local v6, "pairingViewContent":Landroid/widget/TextView;
    const v8, 0x7f1100c4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 280
    .local v3, "messagePairing":Landroid/widget/TextView;
    const v8, 0x7f1100c5

    .line 279
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 281
    .local v0, "contactSharing":Landroid/widget/CheckBox;
    new-array v8, v12, [Ljava/lang/Object;

    .line 282
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v10}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    .line 281
    const v9, 0x7f0e06c0

    invoke-virtual {p0, v9, v8}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b036c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 286
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPbapClientProfile:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPbapClientProfile:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v8}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 287
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 289
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v8

    if-ne v8, v12, :cond_1

    .line 290
    invoke-virtual {v0, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 309
    :goto_0
    new-instance v8, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$4;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$4;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 320
    const/4 v2, 0x0

    .line 321
    .local v2, "messageCaption":Ljava/lang/String;
    const/4 v4, 0x0

    .line 322
    .local v4, "pairingContent":Ljava/lang/String;
    iget v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v8, :pswitch_data_0

    .line 336
    const-string/jumbo v8, "BluetoothPairingDialog"

    const-string/jumbo v9, "Incorrect pairing type received, not creating view"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-object v13

    .line 291
    .end local v2    # "messageCaption":Ljava/lang/String;
    .end local v4    # "pairingContent":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v8

    if-ne v8, v14, :cond_2

    .line 292
    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 296
    :cond_2
    :try_start_0
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v8

    .line 297
    const/16 v9, 0x408

    .line 296
    if-ne v8, v9, :cond_3

    .line 298
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 299
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 304
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 301
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 302
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 325
    .restart local v2    # "messageCaption":Ljava/lang/String;
    .restart local v4    # "pairingContent":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 340
    .end local v4    # "pairingContent":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_4

    .line 341
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_4
    return-object v7

    .line 332
    .restart local v4    # "pairingContent":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onCancel()V
    .locals 2

    .prologue
    .line 453
    const-string/jumbo v0, "BluetoothPairingDialog"

    const-string/jumbo v1, "Pairing dialog canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    .line 452
    return-void
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 417
    const-string/jumbo v2, "BluetoothPairingDialog"

    const-string/jumbo v3, "Pairing dialog accepted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 448
    const-string/jumbo v2, "BluetoothPairingDialog"

    const-string/jumbo v3, "Incorrect pairing type received"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :goto_0
    :pswitch_0
    return-void

    .line 421
    :pswitch_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 422
    .local v1, "pinBytes":[B
    if-nez v1, :cond_0

    .line 423
    return-void

    .line 425
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0

    .line 429
    .end local v1    # "pinBytes":[B
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 430
    .local v0, "passkey":I
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    goto :goto_0

    .line 435
    .end local v0    # "passkey":I
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 444
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private popTimedout()V
    .locals 4

    .prologue
    .line 500
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 501
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x88b8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 498
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 407
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 408
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 409
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 406
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 409
    goto :goto_0

    .line 411
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 482
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 491
    if-eqz p2, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 489
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 465
    packed-switch p2, :pswitch_data_0

    .line 476
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 464
    :goto_0
    return-void

    .line 467
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v5, -0x80000000

    .line 102
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    const-string/jumbo v3, "BluetoothPairingDialog"

    const-string/jumbo v4, "Error: this activity may be started only with intent android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->finish()V

    .line 110
    return-void

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    .line 114
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    if-nez v3, :cond_1

    .line 115
    const-string/jumbo v3, "BluetoothPairingDialog"

    const-string/jumbo v4, "Error: BluetoothAdapter not supported by system"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->finish()V

    .line 117
    return-void

    .line 119
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    .line 120
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getPbapClientProfile()Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPbapClientProfile:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 122
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 123
    const-string/jumbo v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    .line 125
    iget v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v3, :pswitch_data_0

    .line 169
    const-string/jumbo v3, "BluetoothPairingDialog"

    const-string/jumbo v4, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void

    .line 129
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createUserEntryDialog()V

    .line 130
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->popTimedout()V

    goto :goto_0

    .line 135
    :pswitch_1
    const-string/jumbo v3, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 136
    .local v2, "passkey":I
    if-ne v2, v5, :cond_2

    .line 137
    const-string/jumbo v3, "BluetoothPairingDialog"

    const-string/jumbo v4, "Invalid Confirmation Passkey received, not showing any dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 140
    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "%06d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createConfirmationDialog()V

    .line 142
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->popTimedout()V

    goto :goto_0

    .line 147
    .end local v2    # "passkey":I
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createConsentDialog()V

    .line 148
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->popTimedout()V

    goto :goto_0

    .line 154
    :pswitch_3
    const-string/jumbo v3, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 155
    .local v1, "pairingKey":I
    if-ne v1, v5, :cond_3

    .line 156
    const-string/jumbo v3, "BluetoothPairingDialog"

    const-string/jumbo v4, "Invalid Confirmation Passkey or PIN received, not showing any dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void

    .line 159
    :cond_3
    iget v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 160
    const-string/jumbo v3, "%06d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 164
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createDisplayPasskeyOrPinDialog()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->popTimedout()V

    goto/16 :goto_0

    .line 162
    :cond_4
    const-string/jumbo v3, "%04d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    goto :goto_1

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 394
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 395
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 458
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 461
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 486
    return-void
.end method
