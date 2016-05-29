.class public final Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
.super Lcom/android/settings_ex/ui/OPNetPreference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static final OK_BUTTON:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothDevicePreference"

.field private static sDimAlpha:I


# instance fields
.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private final mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

.field private mContext:Landroid/content/Context;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/high16 v0, -0x80000000

    sput v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cachedDevice"    # Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPNetPreference;-><init>(Landroid/content/Context;)V

    .line 347
    new-instance v2, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    sget v2, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    .line 72
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 73
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 74
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 77
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    .line 79
    const v2, 0x7f04009c

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setLayoutResource(I)V

    .line 81
    invoke-virtual {p2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 82
    const-string v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 83
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_config_bluetooth"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    const v2, 0x7f04009b

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 88
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private askDisconnect()V
    .locals 9

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    .line 204
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 206
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0901a4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 208
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v6, 0x7f090192

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v6, 0x7f090191

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "title":Ljava/lang/String;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    .line 228
    .local v0, "disconnectListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {v5, v6, v0, v4, v7}, Lcom/android/settings_ex/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 230
    return-void
.end method

.method private getBtClassDrawable()I
    .locals 7

    .prologue
    .line 306
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 307
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 328
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v3

    .line 329
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 330
    .local v2, "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    .line 331
    .local v4, "resId":I
    if-eqz v4, :cond_0

    .line 344
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;>;"
    .end local v4    # "resId":I
    :goto_1
    return v4

    .line 310
    :sswitch_0
    const v4, 0x7f020036

    goto :goto_1

    .line 313
    :sswitch_1
    const v4, 0x7f020031

    goto :goto_1

    .line 316
    :sswitch_2
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    goto :goto_1

    .line 319
    :sswitch_3
    const v4, 0x7f020035

    goto :goto_1

    .line 325
    :cond_1
    const-string v5, "BluetoothDevicePreference"

    const-string v6, "mBtClass is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;>;"
    :cond_2
    if-eqz v0, :cond_4

    .line 336
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 337
    const v4, 0x7f020033

    goto :goto_1

    .line 340
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 341
    const v4, 0x7f020034

    goto :goto_1

    .line 344
    :cond_4
    const v4, 0x7f02005c

    goto :goto_1

    .line 308
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x500 -> :sswitch_2
        0x600 -> :sswitch_3
    .end sparse-switch
.end method

.method private getConnectionSummary()I
    .locals 8

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    .line 253
    .local v1, "cachedDevice":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    const/4 v6, 0x0

    .line 254
    .local v6, "profileConnected":Z
    const/4 v0, 0x0

    .line 255
    .local v0, "a2dpNotConnected":Z
    const/4 v3, 0x0

    .line 257
    .local v3, "headsetNotConnected":Z
    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 258
    .local v5, "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1, v5}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 260
    .local v2, "connectionStatus":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 270
    :pswitch_0
    invoke-interface {v5}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 271
    instance-of v7, v5, Lcom/android/settings_ex/bluetooth/A2dpProfile;

    if-nez v7, :cond_1

    instance-of v7, v5, Lcom/android/settings_ex/bluetooth/A2dpSinkProfile;

    if-eqz v7, :cond_2

    .line 273
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 263
    :pswitch_1
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v7

    .line 301
    .end local v2    # "connectionStatus":I
    .end local v5    # "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :goto_1
    return v7

    .line 266
    .restart local v2    # "connectionStatus":I
    .restart local v5    # "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :pswitch_2
    const/4 v6, 0x1

    .line 267
    goto :goto_0

    .line 274
    :cond_2
    instance-of v7, v5, Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    if-eqz v7, :cond_0

    .line 275
    const/4 v3, 0x1

    goto :goto_0

    .line 282
    .end local v2    # "connectionStatus":I
    .end local v5    # "profile":Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :cond_3
    if-eqz v6, :cond_7

    .line 283
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 284
    const v7, 0x7f09019e

    goto :goto_1

    .line 285
    :cond_4
    if-eqz v0, :cond_5

    .line 286
    const v7, 0x7f09019b

    goto :goto_1

    .line 287
    :cond_5
    if-eqz v3, :cond_6

    .line 288
    const v7, 0x7f09019a

    goto :goto_1

    .line 290
    :cond_6
    const v7, 0x7f090199

    goto :goto_1

    .line 294
    :cond_7
    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 301
    const/4 v7, 0x0

    goto :goto_1

    .line 296
    :pswitch_3
    const v7, 0x7f0901a3

    goto :goto_1

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 294
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
    .end packed-switch
.end method

.method private pair()V
    .locals 5

    .prologue
    .line 233
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0902ce

    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 248
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 239
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings_ex/search/SearchIndexableRaw;

    invoke-direct {v1, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 240
    .local v1, "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-class v2, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 241
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 242
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 243
    const v2, 0x7f02005c

    iput v2, v1, Lcom/android/settings_ex/search/SearchIndexableRaw;->iconResId:I

    .line 244
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings_ex/search/SearchIndexableRaw;->enabled:Z

    .line 246
    invoke-static {v0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/search/Index;->updateFromSearchIndexableData(Landroid/provider/SearchIndexableData;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Landroid/preference/Preference;

    .prologue
    .line 180
    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 182
    invoke-super {p0, p1}, Lcom/android/settings_ex/ui/OPNetPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 185
    .end local p1    # "another":Landroid/preference/Preference;
    :goto_0
    return v0

    .restart local p1    # "another":Landroid/preference/Preference;
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .end local p1    # "another":Landroid/preference/Preference;
    iget-object v1, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 166
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 167
    :cond_0
    const/4 v0, 0x0

    .line 169
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getCachedDevice()Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 141
    const-string v1, "bt_checkbox"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    const-string v1, "bt_checkbox"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 146
    const v1, 0x7f0f01a8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 148
    .local v0, "deviceDetails":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 154
    .end local v0    # "deviceDetails":Landroid/widget/ImageView;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings_ex/ui/OPNetPreference;->onBindView(Landroid/view/View;)V

    .line 155
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 162
    :cond_0
    return-void
.end method

.method onClicked()V
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 192
    .local v0, "bondState":I
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->askDisconnect()V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 195
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0

    .line 196
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->pair()V

    goto :goto_0
.end method

.method public onDeviceAttributesChanged()V
    .locals 3

    .prologue
    .line 117
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getConnectionSummary()I

    move-result v1

    .line 120
    .local v1, "summaryResId":I
    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setSummary(I)V

    .line 126
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v0

    .line 127
    .local v0, "iconResId":I
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setIcon(I)V

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    .line 136
    return-void

    .line 123
    .end local v0    # "iconResId":I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    .restart local v0    # "iconResId":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/settings_ex/ui/OPNetPreference;->onPrepareForRemoval()V

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 109
    :cond_0
    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 99
    return-void
.end method
