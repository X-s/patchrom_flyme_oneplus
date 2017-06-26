.class public final Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final BLUETOOTH_PASSKEY_MAX_LENGTH:I = 0x6

.field private static final BLUETOOTH_PIN_MAX_LENGTH:I = 0x10

.field private static final TAG:Ljava/lang/String; = "BluetoothPairingDialog"


# instance fields
.field private mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

.field private mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIsButtonPressed:Z

.field private mOkButton:Landroid/widget/Button;

.field private mPairingKey:Ljava/lang/String;

.field private mPairingView:Lcom/oneplus/widget/OPEditText;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 76
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private createConfirmationDialog()V
    .locals 6

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 331
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0c046c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 333
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 334
    const v1, 0x7f0c0047

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 335
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 336
    const v1, 0x7f0c0049

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 337
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 338
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 339
    return-void
.end method

.method private createConsentDialog()V
    .locals 6

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 343
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0c046c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 345
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 346
    const v1, 0x7f0c0047

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 347
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 348
    const v1, 0x7f0c0049

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 349
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 350
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 351
    return-void
.end method

.method private createDisplayPasskeyOrPinDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 354
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 355
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x7f0c046c

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 357
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 358
    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 359
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 360
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 364
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 365
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v7}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 367
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 368
    .local v1, "pinBytes":[B
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0
.end method

.method private createPinEntryView()Landroid/view/View;
    .locals 13

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f04001b

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 190
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f120031

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 191
    .local v6, "messageViewCaptionHint":Landroid/widget/TextView;
    const v8, 0x7f120033

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 192
    .local v5, "messageView2":Landroid/widget/TextView;
    const v8, 0x7f120032

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 193
    .local v0, "alphanumericPin":Landroid/widget/CheckBox;
    const v8, 0x7f120034

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 195
    .local v1, "contactSharing":Landroid/widget/CheckBox;
    const v8, 0x7f0c0477

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v12}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0051

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 200
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 201
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 214
    :goto_0
    new-instance v8, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$2;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;)V

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 225
    const v8, 0x7f120030

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/oneplus/widget/OPEditText;

    iput-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Lcom/oneplus/widget/OPEditText;

    .line 226
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Lcom/oneplus/widget/OPEditText;

    invoke-virtual {v8, p0}, Lcom/oneplus/widget/OPEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 227
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 230
    const v4, 0x7f0c0470

    .line 232
    .local v4, "messageIdHint":I
    iget v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    sparse-switch v8, :sswitch_data_0

    .line 250
    const-string v8, "BluetoothPairingDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Incorrect pairing type for createPinEntryView: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v7, 0x0

    .line 260
    .end local v7    # "view":Landroid/view/View;
    :goto_1
    return-object v7

    .line 202
    .end local v4    # "messageIdHint":I
    .restart local v7    # "view":Landroid/view/View;
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 203
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v8

    const/16 v9, 0x408

    if-ne v8, v9, :cond_3

    .line 206
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 207
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 209
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 210
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 234
    .restart local v4    # "messageIdHint":I
    :sswitch_0
    const v4, 0x7f0c0471

    .line 237
    :sswitch_1
    const v3, 0x7f0c0472

    .line 239
    .local v3, "messageId":I
    const/16 v2, 0x10

    .line 254
    .local v2, "maxLength":I
    :goto_2
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    .line 255
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    .line 256
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Lcom/oneplus/widget/OPEditText;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/oneplus/widget/OPEditText;->setInputType(I)V

    .line 257
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Lcom/oneplus/widget/OPEditText;

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/text/InputFilter;

    const/4 v10, 0x0

    new-instance v11, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v11, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Lcom/oneplus/widget/OPEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1

    .line 243
    .end local v2    # "maxLength":I
    .end local v3    # "messageId":I
    :sswitch_2
    const v3, 0x7f0c0473

    .line 245
    .restart local v3    # "messageId":I
    const/4 v2, 0x6

    .line 246
    .restart local v2    # "maxLength":I
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2

    .line 232
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private createUserEntryDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 175
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0c046c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 177
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createPinEntryView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 178
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 179
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 180
    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 181
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 182
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 184
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    .line 185
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 186
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 15

    .prologue
    const/4 v7, 0x0

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 264
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f04001a

    invoke-virtual {v8, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 265
    .local v6, "view":Landroid/view/View;
    const v8, 0x7f12002a

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 266
    .local v4, "pairingViewCaption":Landroid/widget/TextView;
    const v8, 0x7f12002b

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 267
    .local v5, "pairingViewContent":Landroid/widget/TextView;
    const v8, 0x7f12002c

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 268
    .local v2, "messagePairing":Landroid/widget/TextView;
    const v8, 0x7f12002d

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 270
    .local v0, "contactSharing":Landroid/widget/CheckBox;
    const v8, 0x7f0c0477

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v11}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {p0, v8, v9}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0051

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 275
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v8

    if-ne v8, v13, :cond_2

    .line 276
    invoke-virtual {v0, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 289
    :goto_0
    new-instance v8, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$3;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$3;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, "messageCaption":Ljava/lang/String;
    const/4 v3, 0x0

    .line 302
    .local v3, "pairingContent":Ljava/lang/String;
    iget v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v8, :pswitch_data_0

    .line 316
    const-string v8, "BluetoothPairingDialog"

    const-string v9, "Incorrect pairing type received, not creating view"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 326
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    return-object v6

    .line 277
    .end local v1    # "messageCaption":Ljava/lang/String;
    .end local v3    # "pairingContent":Ljava/lang/String;
    .restart local v6    # "view":Landroid/view/View;
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v8

    if-ne v8, v14, :cond_3

    .line 278
    invoke-virtual {v0, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 280
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v8

    const/16 v9, 0x408

    if-ne v8, v9, :cond_4

    .line 281
    invoke-virtual {v0, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 282
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8, v13}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 284
    :cond_4
    invoke-virtual {v0, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 285
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8, v14}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 305
    .restart local v1    # "messageCaption":Ljava/lang/String;
    .restart local v3    # "pairingContent":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 320
    :goto_2
    if-eqz v3, :cond_1

    .line 321
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 312
    :pswitch_2
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 302
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
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    .line 427
    return-void
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 391
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 421
    const-string v2, "BluetoothPairingDialog"

    const-string v3, "Incorrect pairing type received"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 394
    :pswitch_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 395
    .local v1, "pinBytes":[B
    if-eqz v1, :cond_0

    .line 398
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0

    .line 402
    .end local v1    # "pinBytes":[B
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 403
    .local v0, "passkey":I
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    goto :goto_0

    .line 408
    .end local v0    # "passkey":I
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 417
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    goto :goto_0

    .line 391
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


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 381
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 382
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 383
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 388
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 383
    goto :goto_0

    .line 385
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
    .line 462
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 470
    if-eqz p2, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Lcom/oneplus/widget/OPEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/OPEditText;->setInputType(I)V

    .line 475
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Lcom/oneplus/widget/OPEditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/OPEditText;->setInputType(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 437
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mIsButtonPressed:Z

    if-eqz v0, :cond_0

    .line 439
    const-string v0, "BluetoothPairingDialog"

    const-string v1, "button already pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_0
    return-void

    .line 442
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 455
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->onCancel()V

    goto :goto_0

    .line 444
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Lcom/oneplus/widget/OPEditText;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Lcom/oneplus/widget/OPEditText;

    invoke-virtual {v0}, Lcom/oneplus/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    .line 449
    :goto_2
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mIsButtonPressed:Z

    goto :goto_0

    .line 447
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_2

    .line 453
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mIsButtonPressed:Z

    goto :goto_1

    .line 442
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
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

    .line 98
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    iput-boolean v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mIsButtonPressed:Z

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    const-string v3, "BluetoothPairingDialog"

    const-string v4, "Error: this activity may be started only with intent android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->finish()V

    .line 171
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    .line 112
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    if-nez v3, :cond_1

    .line 113
    const-string v3, "BluetoothPairingDialog"

    const-string v4, "Error: BluetoothAdapter not supported by system"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->finish()V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    .line 119
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 120
    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    .line 122
    iget v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v3, :pswitch_data_0

    .line 162
    const-string v3, "BluetoothPairingDialog"

    const-string v4, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 126
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createUserEntryDialog()V

    goto :goto_1

    .line 130
    :pswitch_1
    const-string v3, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 132
    .local v2, "passkey":I
    if-ne v2, v5, :cond_2

    .line 133
    const-string v3, "BluetoothPairingDialog"

    const-string v4, "Invalid Confirmation Passkey received, not showing any dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%06d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 137
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createConfirmationDialog()V

    goto :goto_1

    .line 142
    .end local v2    # "passkey":I
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createConsentDialog()V

    goto :goto_1

    .line 147
    :pswitch_3
    const-string v3, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 149
    .local v1, "pairingKey":I
    if-ne v1, v5, :cond_3

    .line 150
    const-string v3, "BluetoothPairingDialog"

    const-string v4, "Invalid Confirmation Passkey or PIN received, not showing any dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 153
    :cond_3
    iget v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 154
    const-string v3, "%06d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 158
    :goto_2
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createDisplayPasskeyOrPinDialog()V

    goto :goto_1

    .line 156
    :cond_4
    const-string v3, "%04d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    goto :goto_2

    .line 122
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
    .locals 1

    .prologue
    .line 374
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 378
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 430
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 433
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
    .line 466
    return-void
.end method
