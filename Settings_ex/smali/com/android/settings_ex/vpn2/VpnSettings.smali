.class public Lcom/android/settings_ex/vpn2/VpnSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/vpn2/VpnSettings$LockdownConfigFragment;,
        Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    }
.end annotation


# static fields
.field private static final ADD_VPN_SETTING_KEY:Ljava/lang/String; = "add_vpn_setting"

.field private static final EXTRA_PICK_LOCKDOWN:Ljava/lang/String; = "android.net.vpn.PICK_LOCKDOWN"

.field private static final KEY_VPNLIST:Ljava/lang/String; = "vpn_list"

.field private static final OPEN_VPN_SERVICE_KEY:Ljava/lang/String; = "open_vpn_service_always"

.field private static final TAG:Ljava/lang/String; = "VpnSettings"

.field private static final TAG_LOCKDOWN:Ljava/lang/String; = "lockdown"


# instance fields
.field private mCreateNewVPNPreference:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedKey:Ljava/lang/String;

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUnlocking:Z

.field private mUpdater:Landroid/os/Handler;

.field private mVPNList:Landroid/preference/PreferenceCategory;

.field private mVPNLockDownPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 86
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    .line 88
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    .line 565
    return-void
.end method

.method static synthetic access$000(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/security/KeyStore;
    .param p1, "x1"    # [I

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/android/settings_ex/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private connect(Lcom/android/internal/net/VpnProfile;)V
    .locals 4
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_0
    return-void

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09099d

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    const-string v1, "[Legacy VPN]"

    const-string v2, "[Legacy VPN]"

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static varargs loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 9
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "excludeTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/KeyStore;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 654
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 655
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    const-string v7, "VPN_"

    invoke-virtual {p0, v7}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 656
    .local v3, "keys":[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 657
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 658
    .local v2, "key":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    .line 660
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v5, :cond_0

    iget v7, v5, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {p1, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 661
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 665
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_1
    return-object v6
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 497
    const v0, 0x7f090a1d

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 450
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 454
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 455
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v2, :cond_1

    .line 456
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .line 457
    .local v1, "preference":Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_0

    .line 458
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 460
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 462
    .end local v1    # "preference":Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    :cond_1
    if-eqz v0, :cond_2

    .line 463
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .line 464
    .restart local v1    # "preference":Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_2

    .line 465
    iget v2, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 466
    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v0    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    .end local v1    # "preference":Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 474
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 469
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v7, -0x1

    .line 326
    if-ne p2, v7, :cond_1

    .line 328
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settings_ex/vpn2/VpnDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    .line 329
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 333
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .line 334
    .local v1, "preference":Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_2

    .line 335
    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->update(Lcom/android/internal/net/VpnProfile;)V

    .line 346
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVPNList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "vpn_list"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/vpn2/VpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 347
    const-string v3, "vpn_list"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/vpn2/VpnSettings;->removePreference(Ljava/lang/String;)V

    .line 351
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settings_ex/vpn2/VpnDialog;->isEditing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 353
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/settings_ex/vpn2/VpnSettings;->connect(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v1    # "preference":Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    .end local v2    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_1
    :goto_1
    return-void

    .line 338
    .restart local v1    # "preference":Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    .restart local v2    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_2
    new-instance v1, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .end local v1    # "preference":Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;-><init>(Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 339
    .restart local v1    # "preference":Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {v1, p0}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 340
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVPNList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 342
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVPNList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VpnSettings"

    const-string v4, "connect"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 383
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v3, :cond_0

    .line 384
    const-string v2, "VpnSettings"

    const-string v3, "onContextItemSelected() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :goto_0
    return v1

    .line 388
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .line 389
    .local v0, "preference":Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    if-nez v0, :cond_1

    .line 390
    const-string v2, "VpnSettings"

    const-string v3, "onContextItemSelected() is called but no preference is found"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 394
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 396
    :pswitch_0
    new-instance v1, Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v4

    invoke-direct {v1, v3, p0, v4, v2}, Lcom/android/settings_ex/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    .line 397
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 398
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/vpn2/VpnDialog;->show()V

    move v1, v2

    .line 399
    goto :goto_0

    .line 401
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVPNList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 405
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 407
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVPNList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 408
    const-string v1, "vpn_list"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/vpn2/VpnSettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    move v1, v2

    .line 410
    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x7f090997
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const-string v1, "user"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUm:Landroid/os/UserManager;

    .line 113
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUm:Landroid/os/UserManager;

    const-string v2, "no_config_vpn"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    iput-boolean v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnavailable:Z

    .line 115
    new-instance v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/vpn2/VpnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    .line 120
    const v1, 0x7f06006f

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    .line 122
    const-string v1, "open_vpn_service_always"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/vpn2/VpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVPNLockDownPreference:Landroid/preference/Preference;

    .line 123
    const-string v1, "add_vpn_setting"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/vpn2/VpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mCreateNewVPNPreference:Landroid/preference/Preference;

    .line 125
    const-string v1, "vpn_list"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/vpn2/VpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVPNList:Landroid/preference/PreferenceCategory;

    .line 127
    if-eqz p1, :cond_0

    .line 128
    const-string v1, "VpnKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VpnProfile"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 130
    .local v0, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v0, :cond_0

    .line 131
    new-instance v1, Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "VpnEditing"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/settings_ex/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const v6, 0x7f090998

    const v5, 0x7f090997

    const/4 v4, 0x0

    .line 363
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v2, :cond_1

    .line 364
    const-string v2, "VpnSettings"

    const-string v3, "onCreateContextMenu() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    :cond_0
    :goto_0
    return-void

    .line 368
    .restart local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    :cond_1
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 371
    .local v0, "preference":Landroid/preference/Preference;
    instance-of v2, v0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    if-eqz v2, :cond_0

    .line 372
    check-cast v0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .end local v0    # "preference":Landroid/preference/Preference;
    invoke-virtual {v0}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    .line 373
    .local v1, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    .line 374
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 375
    invoke-interface {p1, v4, v5, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 376
    invoke-interface {p1, v4, v6, v4, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 166
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    .line 322
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 300
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 302
    iget-boolean v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 309
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/vpn2/VpnDialog;->dismiss()V

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->unregisterForContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 671
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    .line 417
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v3, :cond_0

    .line 418
    const-string v3, "VpnSettings"

    const-string v4, "onPreferenceClick() is called when mDialog != null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local p1    # "preference":Landroid/preference/Preference;
    :goto_0
    return v7

    .line 422
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_0
    instance-of v3, p1, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    if-eqz v3, :cond_2

    .line 423
    check-cast p1, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    .line 424
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v4, v4, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 427
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v3

    .line 433
    :cond_1
    new-instance v3, Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v2, v5}, Lcom/android/settings_ex/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    .line 443
    .end local v2    # "profile":Lcom/android/internal/net/VpnProfile;
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 444
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settings_ex/vpn2/VpnDialog;->show()V

    goto :goto_0

    .line 436
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 437
    .local v0, "millis":J
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 438
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_2

    .line 440
    :cond_3
    new-instance v3, Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, p0, v5, v7}, Lcom/android/settings_ex/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 141
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mCreateNewVPNPreference:Landroid/preference/Preference;

    if-ne p2, v3, :cond_1

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 143
    .local v0, "millis":J
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 146
    :cond_0
    new-instance v3, Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, p0, v5, v2}, Lcom/android/settings_ex/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    .line 148
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 149
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settings_ex/vpn2/VpnDialog;->show()V

    .line 158
    .end local v0    # "millis":J
    :goto_1
    return v2

    .line 151
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVPNLockDownPreference:Landroid/preference/Preference;

    if-ne p2, v3, :cond_2

    .line 153
    invoke-static {p0}, Lcom/android/settings_ex/vpn2/VpnSettings$LockdownConfigFragment;->show(Lcom/android/settings_ex/vpn2/VpnSettings;)V

    goto :goto_1

    .line 158
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 173
    const-string v0, "persist.radio.imsregrequired"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const v0, 0x7f0f02bd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 176
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 215
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 217
    iget-boolean v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v9, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getView()Landroid/view/View;

    move-result-object v8

    const v9, 0x1020004

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 219
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 220
    if-eqz v1, :cond_0

    .line 221
    const v8, 0x7f0906d4

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 296
    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "android.net.vpn.PICK_LOCKDOWN"

    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 229
    .local v4, "pickLockdown":Z
    if-eqz v4, :cond_2

    .line 231
    invoke-static {p0}, Lcom/android/settings_ex/vpn2/VpnSettings$LockdownConfigFragment;->show(Lcom/android/settings_ex/vpn2/VpnSettings;)V

    .line 245
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v9}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v9

    if-nez v9, :cond_5

    .line 246
    iget-boolean v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v9, :cond_4

    .line 248
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 253
    :goto_1
    iget-boolean v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v9, :cond_3

    const/4 v8, 0x1

    :cond_3
    iput-boolean v8, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    goto :goto_0

    .line 251
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->finishFragment()V

    goto :goto_1

    .line 258
    :cond_5
    iput-boolean v8, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    .line 263
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-nez v9, :cond_6

    .line 264
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 266
    .local v2, "group":Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 267
    .local v0, "context":Landroid/content/Context;
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-array v10, v8, [I

    invoke-static {v9, v10}, Lcom/android/settings_ex/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v7

    .line 268
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/VpnProfile;

    .line 269
    .local v6, "profile":Lcom/android/internal/net/VpnProfile;
    new-instance v5, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    invoke-direct {v5, v0, v6}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;-><init>(Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 270
    .local v5, "pref":Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {v5, p0}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 271
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v10, v6, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVPNList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 274
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVPNList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 278
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "group":Landroid/preference/PreferenceGroup;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "pref":Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    .end local v6    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v7    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    :cond_6
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVPNList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "vpn_list"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/vpn2/VpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 279
    const-string v9, "vpn_list"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/vpn2/VpnSettings;->removePreference(Ljava/lang/String;)V

    .line 283
    :cond_7
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v9, :cond_8

    .line 284
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v9, p0}, Lcom/android/settings_ex/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 285
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v9}, Lcom/android/settings_ex/vpn2/VpnDialog;->show()V

    .line 289
    :cond_8
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-nez v9, :cond_9

    .line 290
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    .line 292
    :cond_9
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 295
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/vpn2/VpnSettings;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/vpn2/VpnDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 206
    .local v0, "profile":Lcom/android/internal/net/VpnProfile;
    const-string v1, "VpnKey"

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "VpnProfile"

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 208
    const-string v1, "VpnEditing"

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v2}, Lcom/android/settings_ex/vpn2/VpnDialog;->isEditing()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    .end local v0    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_0
    return-void
.end method
