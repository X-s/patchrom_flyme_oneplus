.class public final Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;
.super Landroid/app/DialogFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ARG_DEVICE_ADDRESS:Ljava/lang/String; = "device_address"

.field private static final KEY_PBAP_SERVER:Ljava/lang/String; = "PBAP Server"

.field private static final KEY_PROFILE_CONTAINER:Ljava/lang/String; = "profile_container"

.field private static final KEY_UNPAIR:Ljava/lang/String; = "unpair"

.field private static final OK_BUTTON:I = -0x1

.field private static final TAG:Ljava/lang/String; = "DeviceProfilesSettings"


# instance fields
.field private final mAutoConnectPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;",
            "Landroid/support/v7/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

.field private mDeviceNamePref:Landroid/support/v7/preference/EditTextPreference;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

.field private mProfileContainer:Landroid/view/ViewGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileLabel:Landroid/widget/TextView;

.field private mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

.field private mRootView:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Landroid/widget/CheckBox;
    .locals 1
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;Landroid/widget/CheckBox;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .param p1, "profilePref"    # Landroid/widget/CheckBox;
    .param p2, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mAutoConnectPrefs:Ljava/util/HashMap;

    .line 54
    return-void
.end method

.method private addPreferencesForProfiles()V
    .locals 12

    .prologue
    .line 180
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 181
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "profile$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 184
    .local v6, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    instance-of v9, v6, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    if-nez v9, :cond_1

    .line 185
    instance-of v9, v6, Lcom/android/settings_exlib/bluetooth/MapProfile;

    .line 184
    :goto_1
    if-nez v9, :cond_0

    .line 186
    invoke-direct {p0, v6}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v5

    .line 187
    .local v5, "pref":Landroid/widget/CheckBox;
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 184
    .end local v5    # "pref":Landroid/widget/CheckBox;
    :cond_1
    const/4 v9, 0x1

    goto :goto_1

    .line 192
    .end local v6    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v3

    .line 193
    .local v3, "pbapPermission":I
    const-string/jumbo v9, "DeviceProfilesSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "addPreferencesForProfiles: pbapPermission = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-eqz v3, :cond_3

    .line 196
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v9}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    move-result-object v8

    .line 197
    .local v8, "psp":Lcom/android/settings_exlib/bluetooth/PbapServerProfile;
    invoke-direct {p0, v8}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v4

    .line 198
    .local v4, "pbapPref":Landroid/widget/CheckBox;
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 201
    .end local v4    # "pbapPref":Landroid/widget/CheckBox;
    .end local v8    # "psp":Lcom/android/settings_exlib/bluetooth/PbapServerProfile;
    :cond_3
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v9}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/settings_exlib/bluetooth/MapProfile;

    move-result-object v2

    .line 202
    .local v2, "mapProfile":Lcom/android/settings_exlib/bluetooth/MapProfile;
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v0

    .line 203
    .local v0, "mapPermission":I
    const-string/jumbo v9, "DeviceProfilesSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "addPreferencesForProfiles: mapPermission = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    if-eqz v0, :cond_4

    .line 205
    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v1

    .line 206
    .local v1, "mapPreference":Landroid/widget/CheckBox;
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 209
    .end local v1    # "mapPreference":Landroid/widget/CheckBox;
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 179
    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .line 303
    .local v0, "device":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 305
    const v6, 0x7f0e0542

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 308
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, "profileName":Ljava/lang/String;
    const v6, 0x7f0e053f

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 311
    .local v5, "title":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 312
    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    .line 311
    const v7, 0x7f0e0540

    invoke-virtual {p1, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "message":Ljava/lang/String;
    new-instance v1, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    .line 335
    .local v1, "disconnectListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    .line 334
    invoke-static {p1, v6, v1, v5, v7}, Lcom/android/settings_ex/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 300
    return-void
.end method

.method private createProfilePreference(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;
    .locals 2
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 234
    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 235
    .local v0, "pref":Landroid/widget/CheckBox;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 236
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 237
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    .line 241
    return-object v0
.end method

.method private findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;
    .locals 1
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method private getProfileOf(Landroid/view/View;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 429
    instance-of v2, p1, Landroid/widget/CheckBox;

    if-nez v2, :cond_0

    .line 430
    return-object v3

    .line 432
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 433
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v3

    .line 436
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    return-object v3
.end method

.method private onProfileClicked(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;Landroid/widget/CheckBox;)V
    .locals 5
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .param p2, "profilePref"    # Landroid/widget/CheckBox;

    .prologue
    const/4 v4, 0x1

    .line 256
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 267
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v1, "DeviceProfilesSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProfileClicked connect able:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " check status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    invoke-virtual {p2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 272
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    .line 255
    :goto_0
    return-void

    .line 274
    :cond_0
    instance-of v1, p1, Lcom/android/settings_exlib/bluetooth/MapProfile;

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v4}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 278
    :cond_1
    instance-of v1, p1, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v4}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 280
    invoke-direct {p0, p2, p1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    .line 281
    return-void

    .line 284
    :cond_2
    invoke-interface {p1, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 286
    instance-of v1, p1, Lcom/android/settings_exlib/bluetooth/PanProfile;

    if-eqz v1, :cond_3

    .line 287
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    .line 295
    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 289
    :cond_3
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_1

    .line 292
    :cond_4
    invoke-interface {p1, v0, v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 293
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 344
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v2, 0x7f110145

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 345
    .local v0, "deviceNameField":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 346
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    .line 343
    return-void
.end method

.method private refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V
    .locals 6
    .param p1, "profilePref"    # Landroid/widget/CheckBox;
    .param p2, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 392
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 395
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 397
    instance-of v2, p2, Lcom/android/settings_exlib/bluetooth/MapProfile;

    if-eqz v2, :cond_2

    .line 398
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v2

    if-ne v2, v4, :cond_1

    :goto_1
    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 391
    :goto_2
    return-void

    :cond_0
    move v2, v4

    .line 395
    goto :goto_0

    :cond_1
    move v4, v3

    .line 398
    goto :goto_1

    .line 401
    :cond_2
    instance-of v2, p2, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    if-eqz v2, :cond_4

    .line 402
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v2

    if-ne v2, v4, :cond_3

    :goto_3
    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_3
    move v4, v3

    goto :goto_3

    .line 405
    :cond_4
    instance-of v2, p2, Lcom/android/settings_exlib/bluetooth/PanProfile;

    if-eqz v2, :cond_6

    .line 406
    invoke-interface {p2, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ne v2, v5, :cond_5

    :goto_4
    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_5
    move v4, v3

    goto :goto_4

    .line 411
    :cond_6
    instance-of v2, p2, Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    if-eqz v2, :cond_8

    .line 412
    invoke-interface {p2, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ne v2, v5, :cond_7

    move v1, v4

    .line 414
    .local v1, "isConnected":Z
    :goto_5
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 415
    invoke-interface {p2, v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_2

    .end local v1    # "isConnected":Z
    :cond_7
    move v1, v3

    .line 412
    goto :goto_5

    .line 416
    :cond_8
    instance-of v2, p2, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;

    if-eqz v2, :cond_a

    .line 417
    invoke-interface {p2, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ne v2, v5, :cond_9

    move v1, v4

    .line 419
    .restart local v1    # "isConnected":Z
    :goto_6
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 420
    invoke-interface {p2, v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_2

    .end local v1    # "isConnected":Z
    :cond_9
    move v1, v3

    .line 417
    goto :goto_6

    .line 424
    :cond_a
    invoke-interface {p2, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method private refreshProfiles()V
    .locals 8

    .prologue
    .line 353
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "profile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 354
    .local v2, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v4

    .line 355
    .local v4, "profilePref":Landroid/widget/CheckBox;
    if-nez v4, :cond_0

    .line 356
    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v4

    .line 357
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 359
    :cond_0
    invoke-direct {p0, v4, v2}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 362
    .end local v2    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .end local v4    # "profilePref":Landroid/widget/CheckBox;
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 363
    .restart local v2    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v4

    .line 364
    .restart local v4    # "profilePref":Landroid/widget/CheckBox;
    if-eqz v4, :cond_2

    .line 366
    instance-of v5, v2, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    if-eqz v5, :cond_3

    .line 367
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    .line 368
    .local v1, "pbapPermission":I
    const-string/jumbo v5, "DeviceProfilesSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "refreshProfiles: pbapPermission = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    if-nez v1, :cond_2

    .line 372
    .end local v1    # "pbapPermission":I
    :cond_3
    instance-of v5, v2, Lcom/android/settings_exlib/bluetooth/MapProfile;

    if-eqz v5, :cond_4

    .line 373
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v0

    .line 374
    .local v0, "mapPermission":I
    const-string/jumbo v5, "DeviceProfilesSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "refreshProfiles: mapPermission = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    if-nez v0, :cond_2

    .line 378
    .end local v0    # "mapPermission":I
    :cond_4
    const-string/jumbo v5, "DeviceProfilesSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Removing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " from profile list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 383
    .end local v2    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .end local v4    # "profilePref":Landroid/widget/CheckBox;
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 352
    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 213
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 214
    .local v0, "numProfiles":I
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 220
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 119
    packed-switch p2, :pswitch_data_0

    .line 118
    :goto_0
    :pswitch_0
    return-void

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f110145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 122
    .local v6, "deviceName":Landroid/widget/EditText;
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v6    # "deviceName":Landroid/widget/EditText;
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    const-class v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 128
    const v3, 0x7f0e06b2

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 129
    const v4, 0x7f020141

    const/4 v5, 0x0

    .line 126
    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/bluetooth/Utils;->updateSearchIndex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 246
    instance-of v1, p1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 247
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/view/View;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 248
    .local v0, "prof":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    if-eqz v0, :cond_1

    .line 249
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;Landroid/widget/CheckBox;)V

    .line 245
    .end local v0    # "prof":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_0
    :goto_0
    return-void

    .line 251
    .restart local v0    # "prof":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    const-string/jumbo v1, "DeviceProfilesSettings"

    const-string/jumbo v2, "Error: Can\'t get the profile for the preference"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    .line 88
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    .line 90
    .local v1, "deviceManager":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "device_address"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "address":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 93
    .local v2, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .line 94
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    if-nez v3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    .line 96
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    .line 95
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .line 98
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    .line 84
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04006e

    .line 104
    const/4 v3, 0x0

    .line 103
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    .line 105
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v2, 0x7f110148

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    .line 106
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v2, 0x7f110147

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    .line 107
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v2, 0x7f110145

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 108
    .local v0, "deviceName":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 109
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    .line 109
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 111
    const v2, 0x7f0e05c3

    .line 109
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 112
    const v2, 0x7f0e05c1

    .line 109
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 113
    const v2, 0x7f0e06d0

    .line 109
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 139
    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 135
    :cond_1
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 339
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 168
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->dismiss()V

    .line 160
    return-void

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    .line 163
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 152
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 147
    return-void
.end method
