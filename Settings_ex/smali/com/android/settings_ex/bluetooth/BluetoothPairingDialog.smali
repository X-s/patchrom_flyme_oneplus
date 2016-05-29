.class public final Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final BLUETOOTH_PASSKEY_MAX_LENGTH:I = 0x6

.field private static final BLUETOOTH_PIN_MAX_LENGTH:I = 0x10

.field private static final TAG:Ljava/lang/String; = "BluetoothPairingDialog"


# instance fields
.field private mBluetoothManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

.field private mCachedDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIsButtonPressed:Z

.field private mIsSecurityHigh:Z

.field private mOkButton:Landroid/widget/Button;

.field private mPairingKey:Ljava/lang/String;

.field private mPairingView:Landroid/widget/EditText;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 75
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mIsSecurityHigh:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private createConfirmationDialog()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 283
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0902bd

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 284
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 285
    const v1, 0x7f0902c9

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 286
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 287
    const v1, 0x7f0902cb

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 288
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 289
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 290
    return-void
.end method

.method private createConsentDialog()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 294
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0902bd

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 295
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 296
    const v1, 0x7f0902c9

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 297
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 298
    const v1, 0x7f0902cb

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 299
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 300
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 301
    return-void
.end method

.method private createDisplayPasskeyOrPinDialog()V
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 305
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x7f0902bd

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 306
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 307
    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 308
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 309
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 313
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 314
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 316
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 317
    .local v1, "pinBytes":[B
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0
.end method

.method private createPinEntryView()Landroid/view/View;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v10, 0x7f040015

    invoke-virtual {v8, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 189
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f0f002a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 190
    .local v5, "messageViewCaption":Landroid/widget/TextView;
    const v8, 0x7f0f002b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 191
    .local v6, "messageViewContent":Landroid/widget/TextView;
    const v8, 0x7f0f0033

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 192
    .local v4, "messageView2":Landroid/widget/TextView;
    const v8, 0x7f0f0032

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 193
    .local v0, "alphanumericPin":Landroid/widget/CheckBox;
    const v8, 0x7f0f0030

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    .line 194
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 195
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 200
    iget v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v8, :pswitch_data_0

    .line 221
    const-string v8, "BluetoothPairingDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incorrect pairing type for createPinEntryView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 232
    .end local v7    # "view":Landroid/view/View;
    :goto_0
    return-object v7

    .line 202
    .restart local v7    # "view":Landroid/view/View;
    :pswitch_0
    iget-boolean v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mIsSecurityHigh:Z

    if-eqz v8, :cond_0

    .line 203
    const v2, 0x7f0902c0

    .line 207
    .local v2, "messageId1":I
    :goto_1
    const v3, 0x7f0902c4

    .line 209
    .local v3, "messageId2":I
    const/16 v1, 0x10

    .line 225
    .local v1, "maxLength":I
    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    .line 226
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 228
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 229
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/text/InputFilter;

    const/4 v10, 0x0

    new-instance v11, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v11, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 205
    .end local v1    # "maxLength":I
    .end local v2    # "messageId1":I
    .end local v3    # "messageId2":I
    :cond_0
    const v2, 0x7f0902be

    .restart local v2    # "messageId1":I
    goto :goto_1

    .line 213
    .end local v2    # "messageId1":I
    :pswitch_1
    const v2, 0x7f0902be

    .line 214
    .restart local v2    # "messageId1":I
    const v3, 0x7f0902c5

    .line 216
    .restart local v3    # "messageId2":I
    const/4 v1, 0x6

    .line 217
    .restart local v1    # "maxLength":I
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createUserEntryDialog()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 175
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0902bd

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 176
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->createPinEntryView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 177
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 178
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 179
    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 180
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 183
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    .line 184
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 14

    .prologue
    const/4 v9, 0x0

    const v13, 0x7f0902be

    const/4 v12, 0x0

    .line 236
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f040014

    invoke-virtual {v10, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 238
    .local v8, "view":Landroid/view/View;
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, "name":Ljava/lang/String;
    const v10, 0x7f0f002a

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 240
    .local v2, "messageViewCaption":Landroid/widget/TextView;
    const v10, 0x7f0f002b

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 241
    .local v3, "messageViewContent":Landroid/widget/TextView;
    const v10, 0x7f0f002c

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 242
    .local v6, "pairingViewCaption":Landroid/widget/TextView;
    const v10, 0x7f0f002d

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 243
    .local v7, "pairingViewContent":Landroid/widget/TextView;
    const v10, 0x7f0f002e

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 245
    .local v1, "messagePairing":Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 246
    .local v0, "messageCaption":Ljava/lang/String;
    const/4 v5, 0x0

    .line 247
    .local v5, "pairingContent":Ljava/lang/String;
    iget v10, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v10, :pswitch_data_0

    .line 263
    const-string v10, "BluetoothPairingDialog"

    const-string v11, "Incorrect pairing type received, not creating view"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 278
    .end local v8    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-object v8

    .line 250
    .restart local v8    # "view":Landroid/view/View;
    :pswitch_0
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    :pswitch_1
    invoke-virtual {p0, v13}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 267
    :goto_1
    if-eqz v2, :cond_1

    .line 268
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_1
    if-eqz v5, :cond_0

    .line 273
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 258
    :pswitch_2
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    invoke-virtual {p0, v13}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    goto :goto_1

    .line 247
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
    .line 376
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    .line 377
    return-void
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 342
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 371
    const-string v2, "BluetoothPairingDialog"

    const-string v3, "Incorrect pairing type received"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 344
    :pswitch_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 345
    .local v1, "pinBytes":[B
    if-eqz v1, :cond_0

    .line 348
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0

    .line 352
    .end local v1    # "pinBytes":[B
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 353
    .local v0, "passkey":I
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    goto :goto_0

    .line 358
    .end local v0    # "passkey":I
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 367
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x1

    .line 330
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 331
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mIsSecurityHigh:Z

    if-nez v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mIsSecurityHigh:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 412
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 420
    if-eqz p2, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 425
    :goto_0
    return-void

    .line 423
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
    const/4 v1, 0x1

    .line 387
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mIsButtonPressed:Z

    if-eqz v0, :cond_0

    .line 389
    const-string v0, "BluetoothPairingDialog"

    const-string v1, "button already pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_0
    return-void

    .line 392
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 405
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->onCancel()V

    goto :goto_0

    .line 394
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    .line 399
    :goto_2
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mIsButtonPressed:Z

    goto :goto_0

    .line 397
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_2

    .line 403
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mIsButtonPressed:Z

    goto :goto_1

    .line 392
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, -0x80000000

    .line 97
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    iput-boolean v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mIsButtonPressed:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    const-string v3, "BluetoothPairingDialog"

    const-string v4, "Error: this activity may be started only with intent android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->finish()V

    .line 171
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    .line 111
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    if-nez v3, :cond_1

    .line 112
    const-string v3, "BluetoothPairingDialog"

    const-string v4, "Error: BluetoothAdapter not supported by system"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->finish()V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    .line 118
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 119
    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mType:I

    .line 120
    const-string v3, "codeaurora.bluetooth.device.extra.SECURE"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mIsSecurityHigh:Z

    .line 121
    const-string v3, "BluetoothPairingDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Secure is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mIsSecurityHigh:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
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

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 132
    .local v2, "passkey":I
    if-ne v2, v6, :cond_2

    .line 133
    const-string v3, "BluetoothPairingDialog"

    const-string v4, "Invalid Confirmation Passkey received, not showing any dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 136
    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%06d"

    new-array v5, v8, [Ljava/lang/Object;

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

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 149
    .local v1, "pairingKey":I
    if-ne v1, v6, :cond_3

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

    new-array v4, v8, [Ljava/lang/Object;

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

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    goto :goto_2

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 323
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 324
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 327
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 380
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 383
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
    .line 416
    return-void
.end method
