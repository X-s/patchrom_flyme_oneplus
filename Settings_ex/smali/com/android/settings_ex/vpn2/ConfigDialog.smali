.class Lcom/android/settings_ex/vpn2/ConfigDialog;
.super Lcom/oneplus/app/OPAlertDialog;
.source "ConfigDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
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

.field private mMppe:Lcom/oneplus/widget/button/OPCheckBox;

.field private mName:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/TextView;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private mRoutes:Landroid/widget/TextView;

.field private mSaveLogin:Lcom/oneplus/widget/button/OPCheckBox;

.field private mSearchDomains:Landroid/widget/TextView;

.field private mServer:Landroid/widget/TextView;

.field private mShowOptions:Lcom/oneplus/widget/button/OPCheckBox;

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
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/app/OPAlertDialog;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mKeyStore:Landroid/security/KeyStore;

    .line 82
    iput-object p2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 83
    iput-object p3, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 84
    iput-boolean p4, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mEditing:Z

    .line 85
    iput-boolean p5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mExists:Z

    .line 86
    return-void
.end method

.method private changeType(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const v6, 0x7f12016f

    const v5, 0x7f12016c

    const v4, 0x7f12016a

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mMppe:Lcom/oneplus/widget/button/OPCheckBox;

    invoke-virtual {v0, v3}, Lcom/oneplus/widget/button/OPCheckBox;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f120171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 261
    packed-switch p1, :pswitch_data_0

    .line 283
    :goto_0
    return-void

    .line 263
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mMppe:Lcom/oneplus/widget/button/OPCheckBox;

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/button/OPCheckBox;->setVisibility(I)V

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 274
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 277
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f120171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 261
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

    .line 338
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 339
    .local v3, "context":Landroid/content/Context;
    if-nez p3, :cond_2

    const-string v4, ""

    .line 340
    .local v4, "first":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, p2}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "certificates":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-nez v6, :cond_3

    .line 343
    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    .end local v2    # "certificates":[Ljava/lang/String;
    aput-object v4, v2, v7

    .line 351
    .restart local v2    # "certificates":[Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v0, v3, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 353
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 354
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 356
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_2
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 357
    aget-object v6, v2, v5

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 358
    invoke-virtual {p1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 362
    :cond_1
    return-void

    .line 339
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v2    # "certificates":[Ljava/lang/String;
    .end local v4    # "first":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 345
    .restart local v2    # "certificates":[Ljava/lang/String;
    .restart local v4    # "first":Ljava/lang/String;
    :cond_3
    array-length v6, v2

    add-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 346
    .local v1, "array":[Ljava/lang/String;
    aput-object v4, v1, v7

    .line 347
    array-length v6, v2

    invoke-static {v2, v7, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    move-object v2, v1

    goto :goto_1

    .line 356
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
    .line 248
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f120175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mShowOptions:Lcom/oneplus/widget/button/OPCheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/button/OPCheckBox;->setVisibility(I)V

    .line 250
    return-void
.end method

.method private validate(Z)Z
    .locals 3
    .param p1, "editing"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 286
    if-nez p1, :cond_2

    .line 287
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 307
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    move v0, v1

    .line 287
    goto :goto_0

    .line 289
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/vpn2/ConfigDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 292
    goto :goto_0

    .line 294
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 307
    goto :goto_0

    .line 301
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 305
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 294
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
    .line 312
    :try_start_0
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v1, v4

    .line 313
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 312
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 317
    :cond_1
    const/16 v8, 0x20

    .line 318
    .local v8, "prefixLength":I
    if-eqz p2, :cond_2

    .line 319
    const-string v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 320
    .local v7, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v7, v9

    .line 321
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 323
    .end local v7    # "parts":[Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 324
    .local v2, "bytes":[B
    const/4 v9, 0x3

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int v5, v9, v10

    .line 326
    .local v5, "integer":I
    array-length v9, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    if-ltz v8, :cond_3

    const/16 v9, 0x20

    if-gt v8, v9, :cond_3

    const/16 v9, 0x20

    if-ge v8, v9, :cond_0

    shl-int v9, v5, v8

    if-eqz v9, :cond_0

    .line 328
    :cond_3
    const/4 v9, 0x0

    .line 334
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "bytes":[B
    .end local v4    # "i$":I
    .end local v5    # "integer":I
    .end local v6    # "len$":I
    .end local v8    # "prefixLength":I
    :goto_1
    return v9

    .line 331
    :catch_0
    move-exception v3

    .line 332
    .local v3, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_1

    .line 334
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "field"    # Landroid/text/Editable;

    .prologue
    .line 217
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/settings_ex/vpn2/ConfigDialog;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 218
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 222
    return-void
.end method

.method getProfile()Lcom/android/internal/net/VpnProfile;
    .locals 2

    .prologue
    .line 370
    new-instance v0, Lcom/android/internal/net/VpnProfile;

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 372
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 373
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 374
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 375
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 376
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mSearchDomains:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 377
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 378
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 381
    iget v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v1, :pswitch_data_0

    .line 412
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mSaveLogin:Lcom/oneplus/widget/button/OPCheckBox;

    invoke-virtual {v1}, Lcom/oneplus/widget/button/OPCheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 413
    return-object v0

    .line 383
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mMppe:Lcom/oneplus/widget/button/OPCheckBox;

    invoke-virtual {v1}, Lcom/oneplus/widget/button/OPCheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    goto :goto_0

    .line 387
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 390
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 391
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto :goto_0

    .line 395
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 398
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 403
    :cond_1
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 406
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto :goto_0

    .line 381
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
    .line 365
    iget-boolean v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mEditing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mShowOptions:Lcom/oneplus/widget/button/OPCheckBox;

    if-ne p1, v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->showAdvancedOptions()V

    .line 233
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v8, -0x1

    const/4 v3, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0400bf

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    .line 91
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/ConfigDialog;->setView(Landroid/view/View;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f120029

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    .line 97
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f1200dd

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    .line 98
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f120168

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    .line 99
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f12017a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    .line 100
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f12017b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    .line 101
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f120176

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mSearchDomains:Landroid/widget/TextView;

    .line 102
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f120177

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    .line 103
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f120178

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    .line 104
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f120169

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/widget/button/OPCheckBox;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mMppe:Lcom/oneplus/widget/button/OPCheckBox;

    .line 105
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f12016b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mL2tpSecret:Landroid/widget/TextView;

    .line 106
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f12016d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    .line 107
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f12016e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    .line 108
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f120170

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    .line 109
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f120172

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    .line 110
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f120173

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    .line 111
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f12017c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/widget/button/OPCheckBox;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mSaveLogin:Lcom/oneplus/widget/button/OPCheckBox;

    .line 112
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f120174

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/widget/button/OPCheckBox;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mShowOptions:Lcom/oneplus/widget/button/OPCheckBox;

    .line 115
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v5, v5, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 117
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v2, v2, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mSearchDomains:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mMppe:Lcom/oneplus/widget/button/OPCheckBox;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v5, v5, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {v2, v5}, Lcom/oneplus/widget/button/OPCheckBox;->setChecked(Z)V

    .line 126
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mL2tpSecret:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    const-string v5, "USRPKEY_"

    iget-object v6, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v3, v6}, Lcom/android/settings_ex/vpn2/ConfigDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    const-string v5, "CACERT_"

    const v6, 0x7f0c0b35

    iget-object v7, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v7, v7, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6, v7}, Lcom/android/settings_ex/vpn2/ConfigDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    const-string v5, "USRCERT_"

    const v6, 0x7f0c0b36

    iget-object v7, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v7, v7, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6, v7}, Lcom/android/settings_ex/vpn2/ConfigDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mSaveLogin:Lcom/oneplus/widget/button/OPCheckBox;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v5, v5, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {v2, v5}, Lcom/oneplus/widget/button/OPCheckBox;->setChecked(Z)V

    .line 138
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 140
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 145
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 147
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mShowOptions:Lcom/oneplus/widget/button/OPCheckBox;

    invoke-virtual {v2, p0}, Lcom/oneplus/widget/button/OPCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-direct {p0, v4}, Lcom/android/settings_ex/vpn2/ConfigDialog;->validate(Z)Z

    move-result v1

    .line 151
    .local v1, "valid":Z
    iget-boolean v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mEditing:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_5

    :cond_1
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mEditing:Z

    .line 153
    iget-boolean v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mEditing:Z

    if-eqz v2, :cond_6

    .line 154
    const v2, 0x7f0c0b3b

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/ConfigDialog;->setTitle(I)V

    .line 157
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v4, 0x7f120167

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v2, v2, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, v2}, Lcom/android/settings_ex/vpn2/ConfigDialog;->changeType(I)V

    .line 163
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 165
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->showAdvancedOptions()V

    .line 169
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mExists:Z

    if-eqz v2, :cond_4

    .line 170
    const/4 v2, -0x3

    const v4, 0x7f0c0b3c

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/settings_ex/vpn2/ConfigDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 175
    :cond_4
    const v2, 0x7f0c0b39

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v8, v2, v4}, Lcom/android/settings_ex/vpn2/ConfigDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 189
    :goto_1
    const/4 v2, -0x2

    const v4, 0x7f0c0b37

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/settings_ex/vpn2/ConfigDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 193
    invoke-super {p0, p1}, Lcom/oneplus/app/OPAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 196
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/vpn2/ConfigDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mEditing:Z

    if-eqz v4, :cond_7

    .end local v1    # "valid":Z
    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 202
    return-void

    .restart local v1    # "valid":Z
    :cond_5
    move v2, v3

    .line 151
    goto/16 :goto_0

    .line 178
    :cond_6
    const v2, 0x7f0c0b3d

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/ConfigDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v4, 0x7f120179

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 184
    const v2, 0x7f0c0b3a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v8, v2, v4}, Lcom/android/settings_ex/vpn2/ConfigDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 196
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/settings_ex/vpn2/ConfigDialog;->validate(Z)Z

    move-result v1

    goto :goto_2
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
    .line 237
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 238
    invoke-direct {p0, p3}, Lcom/android/settings_ex/vpn2/ConfigDialog;->changeType(I)V

    .line 240
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/settings_ex/vpn2/ConfigDialog;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 241
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
    .line 245
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/oneplus/app/OPAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialog;->mShowOptions:Lcom/oneplus/widget/button/OPCheckBox;

    invoke-virtual {v0}, Lcom/oneplus/widget/button/OPCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->showAdvancedOptions()V

    .line 213
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
    .line 226
    return-void
.end method
