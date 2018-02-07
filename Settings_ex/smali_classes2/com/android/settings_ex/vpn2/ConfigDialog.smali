.class Lcom/android/settings_ex/vpn2/ConfigDialog;
.super Landroid/app/AlertDialog;
.source "ConfigDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAlwaysOnVpn:Landroid/widget/CheckBox;

.field private mDnsServers:Landroid/widget/TextView;

.field private mEditing:Z

.field private mExists:Z

.field private mIpsecCaCert:Landroid/widget/Spinner;

.field private mIpsecIdentifier:Landroid/widget/TextView;

.field private mIpsecSecret:Landroid/widget/TextView;

.field private mIpsecServerCert:Landroid/widget/Spinner;

.field private mIpsecUserCert:Landroid/widget/Spinner;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mL2tpSecret:Landroid/widget/TextView;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMppe:Landroid/widget/CheckBox;

.field private mName:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/TextView;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private mRoutes:Landroid/widget/TextView;

.field private mSaveLogin:Landroid/widget/CheckBox;

.field private mSearchDomains:Landroid/widget/TextView;

.field private mServer:Landroid/widget/TextView;

.field private mShowOptions:Landroid/widget/CheckBox;

.field private mType:Landroid/widget/Spinner;

.field private mUsername:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p4, "editing"    # Z
    .param p5, "exists"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mKeyStore:Landroid/security/KeyStore;

    .line 84
    iput-object p2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 85
    iput-object p3, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 86
    iput-boolean p4, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mEditing:Z

    .line 87
    iput-boolean p5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mExists:Z

    .line 81
    return-void
.end method

.method private changeType(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const v6, 0x7f110367

    const v5, 0x7f110364

    const v4, 0x7f110362

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 287
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f110369

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 294
    packed-switch p1, :pswitch_data_0

    .line 285
    :goto_0
    return-void

    .line 296
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 300
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 307
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f110369

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "firstId"    # I
    .param p4, "selected"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 374
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 375
    .local v3, "context":Landroid/content/Context;
    if-nez p3, :cond_2

    const-string/jumbo v4, ""

    .line 376
    .local v4, "first":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, p2}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "certificates":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-nez v6, :cond_3

    .line 379
    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    .end local v2    # "certificates":[Ljava/lang/String;
    aput-object v4, v2, v7

    .line 387
    .restart local v2    # "certificates":[Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 388
    const v6, 0x1090008

    .line 387
    invoke-direct {v0, v3, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 389
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 390
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 392
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_2
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 393
    aget-object v6, v2, v5

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 394
    invoke-virtual {p1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 373
    :cond_1
    return-void

    .line 375
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v2    # "certificates":[Ljava/lang/String;
    .end local v4    # "first":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "first":Ljava/lang/String;
    goto :goto_0

    .line 381
    .restart local v2    # "certificates":[Ljava/lang/String;
    :cond_3
    array-length v6, v2

    add-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 382
    .local v1, "array":[Ljava/lang/String;
    aput-object v4, v1, v7

    .line 383
    array-length v6, v2

    invoke-static {v2, v7, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    move-object v2, v1

    goto :goto_1

    .line 392
    .end local v1    # "array":[Ljava/lang/String;
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v5    # "i":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private showAdvancedOptions()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f11036d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 280
    return-void
.end method

.method private updateSaveLoginStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 271
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 270
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method private validate(Z)Z
    .locals 3
    .param p1, "editing"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 319
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    :cond_0
    if-nez p1, :cond_3

    .line 323
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return v0

    .line 320
    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 323
    goto :goto_0

    .line 325
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 328
    :cond_4
    return v1

    .line 326
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/vpn2/ConfigDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 327
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 330
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 343
    return v1

    .line 333
    :pswitch_0
    return v0

    .line 337
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_6

    :goto_1
    return v0

    :cond_6
    move v0, v1

    goto :goto_1

    .line 341
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-eqz v2, :cond_7

    :goto_2
    return v0

    :cond_7
    move v0, v1

    goto :goto_2

    .line 330
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .locals 11
    .param p1, "addresses"    # Ljava/lang/String;
    .param p2, "cidr"    # Z

    .prologue
    .line 348
    :try_start_0
    const-string/jumbo v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_5

    aget-object v0, v7, v6

    .line 349
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 348
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 353
    :cond_1
    const/16 v5, 0x20

    .line 354
    .local v5, "prefixLength":I
    if-eqz p2, :cond_2

    .line 355
    const-string/jumbo v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v4, v9

    .line 357
    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 359
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 360
    .local v1, "bytes":[B
    const/4 v9, 0x3

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    .line 361
    const/4 v10, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    .line 360
    or-int/2addr v9, v10

    .line 361
    const/4 v10, 0x0

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    .line 360
    or-int v3, v9, v10

    .line 362
    .local v3, "integer":I
    array-length v9, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    if-gez v5, :cond_4

    .line 364
    :cond_3
    :goto_1
    const/4 v6, 0x0

    return v6

    .line 362
    :cond_4
    const/16 v9, 0x20

    if-gt v5, v9, :cond_3

    .line 363
    const/16 v9, 0x20

    if-ge v5, v9, :cond_0

    shl-int v9, v3, v5

    if-eqz v9, :cond_0

    goto :goto_1

    .line 367
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "bytes":[B
    .end local v3    # "integer":I
    .end local v5    # "prefixLength":I
    :catch_0
    move-exception v2

    .line 368
    .local v2, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    return v6

    .line 370
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v6, 0x1

    return v6
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "field"    # Landroid/text/Editable;

    .prologue
    .line 228
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/settings_ex/vpn2/ConfigDialog;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 227
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 232
    return-void
.end method

.method getProfile()Lcom/android/internal/net/VpnProfile;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 406
    new-instance v1, Lcom/android/internal/net/VpnProfile;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 408
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v1, Lcom/android/internal/net/VpnProfile;->type:I

    .line 409
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 410
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 411
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 412
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mSearchDomains:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 413
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 414
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 417
    iget v2, v1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v2, :pswitch_data_0

    .line 448
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .line 449
    .local v0, "hasLogin":Z
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mEditing:Z

    if-eqz v2, :cond_5

    .end local v0    # "hasLogin":Z
    :goto_2
    iput-boolean v0, v1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 450
    return-object v1

    .line 419
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/net/VpnProfile;->mppe:Z

    goto :goto_0

    .line 423
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 426
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 427
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto :goto_0

    .line 431
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 434
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 439
    :cond_1
    :pswitch_5
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-eqz v2, :cond_2

    .line 440
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 442
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto/16 :goto_0

    .line 448
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "hasLogin":Z
    goto/16 :goto_1

    .line 449
    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_2

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method isEditing()Z
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mEditing:Z

    return v0
.end method

.method public isVpnAlwaysOn()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->updateSaveLoginStatus()V

    .line 262
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/settings_ex/vpn2/ConfigDialog;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 259
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->showAdvancedOptions()V

    .line 240
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x8

    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f040202

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    .line 93
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/ConfigDialog;->setView(Landroid/view/View;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f110145

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    .line 99
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f1101a0

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    .line 100
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f110360

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    .line 101
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f110372

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    .line 102
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f110373

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    .line 103
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f11036e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mSearchDomains:Landroid/widget/TextView;

    .line 104
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f11036f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    .line 105
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f110370

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    .line 106
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f110361

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mMppe:Landroid/widget/CheckBox;

    .line 107
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f110363

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mL2tpSecret:Landroid/widget/TextView;

    .line 108
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f110365

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    .line 109
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f110366

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    .line 110
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f110368

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    .line 111
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f11036a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    .line 112
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f11036b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    .line 113
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f110374

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    .line 114
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f11036c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    .line 115
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f110375

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    .line 118
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v5, v5, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 120
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v2, v2, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mSearchDomains:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mMppe:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v5, v5, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mL2tpSecret:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    const-string/jumbo v5, "USRPKEY_"

    iget-object v6, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v4, v6}, Lcom/android/settings_ex/vpn2/ConfigDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    const-string/jumbo v5, "CACERT_"

    .line 134
    iget-object v6, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    const v7, 0x7f0e0cd5

    .line 133
    invoke-direct {p0, v2, v5, v7, v6}, Lcom/android/settings_ex/vpn2/ConfigDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    const-string/jumbo v5, "USRCERT_"

    .line 136
    iget-object v6, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    const v7, 0x7f0e0cd6

    .line 135
    invoke-direct {p0, v2, v5, v7, v6}, Lcom/android/settings_ex/vpn2/ConfigDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v5, v5, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 138
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings_ex/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 139
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->updateSaveLoginStatus()V

    .line 144
    const-string/jumbo v2, "persist.radio.imsregrequired"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 151
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 158
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-direct {p0, v3}, Lcom/android/settings_ex/vpn2/ConfigDialog;->validate(Z)Z

    move-result v1

    .line 162
    .local v1, "valid":Z
    iget-boolean v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mEditing:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mEditing:Z

    .line 164
    iget-boolean v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mEditing:Z

    if-eqz v2, :cond_5

    .line 165
    const v2, 0x7f0e0cdc

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/ConfigDialog;->setTitle(I)V

    .line 168
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v3, 0x7f11035f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v2, v2, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, v2}, Lcom/android/settings_ex/vpn2/ConfigDialog;->changeType(I)V

    .line 174
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 177
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 178
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 183
    :goto_1
    iget-boolean v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mExists:Z

    if-eqz v2, :cond_2

    .line 185
    const v2, 0x7f0e0cdd

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 184
    const/4 v5, -0x3

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/settings_ex/vpn2/ConfigDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 190
    :cond_2
    const v2, 0x7f0e0cd9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 189
    invoke-virtual {p0, v8, v2, v3}, Lcom/android/settings_ex/vpn2/ConfigDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 201
    :goto_2
    const v2, 0x7f0e0cd7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 200
    const/4 v5, -0x2

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/settings_ex/vpn2/ConfigDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 204
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 207
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/vpn2/ConfigDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 208
    iget-boolean v3, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mEditing:Z

    if-eqz v3, :cond_6

    .line 207
    .end local v1    # "valid":Z
    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 91
    return-void

    .restart local v1    # "valid":Z
    :cond_3
    move v2, v3

    .line 162
    goto/16 :goto_0

    .line 179
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->showAdvancedOptions()V

    goto :goto_1

    .line 192
    :cond_5
    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f0e0cde

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/ConfigDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    const v2, 0x7f0e0cda

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 195
    invoke-virtual {p0, v8, v2, v3}, Lcom/android/settings_ex/vpn2/ConfigDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 208
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/settings_ex/vpn2/ConfigDialog;->validate(Z)Z

    move-result v1

    goto :goto_3
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 249
    invoke-direct {p0, p3}, Lcom/android/settings_ex/vpn2/ConfigDialog;->changeType(I)V

    .line 251
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/settings_ex/vpn2/ConfigDialog;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 247
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->showAdvancedOptions()V

    .line 216
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 236
    return-void
.end method
