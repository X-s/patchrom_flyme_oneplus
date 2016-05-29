.class public Lcom/android/settings_ex/location/LocationMode;
.super Lcom/android/settings_ex/location/LocationSettingsBase;
.source "LocationMode.java"

# interfaces
.implements Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/location/LocationMode$XTServiceConnection;
    }
.end annotation


# static fields
.field private static final IZat_MENU_TEXT:I = 0x0

.field private static final IZat_SUB_TITLE_TEXT:I = 0x1

.field private static final KEY_BATTERY_SAVING:Ljava/lang/String; = "battery_saving"

.field private static final KEY_HIGH_ACCURACY:Ljava/lang/String; = "high_accuracy"

.field private static final KEY_LOCATION_IZAT:Ljava/lang/String; = "location_izat"

.field private static final KEY_SENSORS_ONLY:Ljava/lang/String; = "sensors_only"

.field private static final POPUP_BOX_AGREE:I = 0x1

.field private static final POPUP_BOX_DISAGREE:I = 0x0

.field private static final PRINT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocationMode"


# instance fields
.field private izatConnResult:Z

.field private mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mCallback:Lcom/android/location/XT/IXTSrvCb;

.field mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mHandler:Landroid/os/Handler;

.field private mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mIZat:Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;

.field private mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mServiceConn:Lcom/android/settings_ex/location/LocationMode$XTServiceConnection;

.field private mXTService:Lcom/android/location/XT/IXTSrv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    .line 81
    iput-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mServiceConn:Lcom/android/settings_ex/location/LocationMode$XTServiceConnection;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationMode;->izatConnResult:Z

    .line 86
    new-instance v0, Lcom/android/settings_ex/location/LocationMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/location/LocationMode$1;-><init>(Lcom/android/settings_ex/location/LocationMode;)V

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/android/settings_ex/location/LocationMode$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/location/LocationMode$2;-><init>(Lcom/android/settings_ex/location/LocationMode;)V

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mCallback:Lcom/android/location/XT/IXTSrvCb;

    .line 148
    new-instance v0, Lcom/android/settings_ex/location/LocationMode$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/location/LocationMode$3;-><init>(Lcom/android/settings_ex/location/LocationMode;)V

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/location/LocationMode;)Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/location/LocationMode;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mIZat:Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/location/LocationMode;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/location/LocationMode;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/location/LocationMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/location/LocationMode;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationMode;->initUserPrefService()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/location/LocationMode;)Lcom/android/location/XT/IXTSrv;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/location/LocationMode;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/location/LocationMode;Lcom/android/location/XT/IXTSrv;)Lcom/android/location/XT/IXTSrv;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/location/LocationMode;
    .param p1, "x1"    # Lcom/android/location/XT/IXTSrv;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings_ex/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/location/LocationMode;)Lcom/android/location/XT/IXTSrvCb;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/location/LocationMode;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mCallback:Lcom/android/location/XT/IXTSrvCb;

    return-object v0
.end method

.method private checkGsPresence()Z
    .locals 12

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 116
    .local v10, "res":Landroid/content/res/Resources;
    const v11, 0x7f0b007f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "GS_PACKAGE_NAMES":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 119
    .local v2, "gsExists":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 120
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v8

    .line 121
    .local v8, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 122
    .local v6, "packageInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v2, :cond_2

    .line 123
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v7, v1, v4

    .line 124
    .local v7, "packageName":Ljava/lang/String;
    iget-object v11, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 125
    const/4 v2, 0x1

    .line 126
    goto :goto_0

    .line 123
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 133
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 222
    .local v3, "root":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_0

    .line 223
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 225
    :cond_0
    const v4, 0x7f06002b

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/location/LocationMode;->addPreferencesFromResource(I)V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 228
    const-string v4, "high_accuracy"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v4, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 229
    const-string v4, "battery_saving"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v4, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 230
    const-string v4, "sensors_only"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v4, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 231
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;)V

    .line 232
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;)V

    .line 233
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;)V

    .line 236
    const-string v4, "location_izat"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;

    iput-object v4, p0, Lcom/android/settings_ex/location/LocationMode;->mIZat:Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;

    .line 237
    iget-boolean v4, p0, Lcom/android/settings_ex/location/LocationMode;->izatConnResult:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationMode;->checkGsPresence()Z

    move-result v4

    if-nez v4, :cond_3

    .line 252
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationMode;->mIZat:Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;

    if-eqz v4, :cond_2

    .line 253
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationMode;->mIZat:Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;

    new-instance v5, Lcom/android/settings_ex/location/LocationMode$4;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/location/LocationMode$4;-><init>(Lcom/android/settings_ex/location/LocationMode;)V

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 279
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationMode;->refreshLocationMode()V

    .line 281
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationMode;->mIZat:Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 283
    return-object v3

    .line 241
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    if-eqz v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/location/XT/IXTSrv;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "izatMenuTitle":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/location/XT/IXTSrv;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "izatSubtitle":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationMode;->mIZat:Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationMode;->mIZat:Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationMode;->mIZat:Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;

    iget-object v5, p0, Lcom/android/settings_ex/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    invoke-interface {v5}, Lcom/android/location/XT/IXTSrv;->getStatus()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    .end local v1    # "izatMenuTitle":Ljava/lang/String;
    .end local v2    # "izatSubtitle":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "LocationMode"

    const-string v5, "Service connection error!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initUserPrefService()V
    .locals 4

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mServiceConn:Lcom/android/settings_ex/location/LocationMode$XTServiceConnection;

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Lcom/android/settings_ex/location/LocationMode$XTServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/location/LocationMode$XTServiceConnection;-><init>(Lcom/android/settings_ex/location/LocationMode;Lcom/android/settings_ex/location/LocationMode$1;)V

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mServiceConn:Lcom/android/settings_ex/location/LocationMode$XTServiceConnection;

    .line 143
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/location/XT/IXTSrv;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.qualcomm.location.XT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/location/LocationMode;->mServiceConn:Lcom/android/settings_ex/location/LocationMode$XTServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/location/LocationMode;->izatConnResult:Z

    .line 146
    return-void
.end method

.method private updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V
    .locals 3
    .param p1, "activated"    # Lcom/android/settings_ex/location/RadioButtonPreference;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 287
    if-nez p1, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 290
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 293
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 294
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 297
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 298
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 302
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 346
    const v0, 0x7f090a26

    return v0
.end method

.method public onModeChanged(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    .line 321
    packed-switch p1, :pswitch_data_0

    .line 338
    :goto_0
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 339
    .local v0, "enabled":Z
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setEnabled(Z)V

    .line 340
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setEnabled(Z)V

    .line 341
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setEnabled(Z)V

    .line 342
    return-void

    .line 323
    .end local v0    # "enabled":Z
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationMode;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    goto :goto_0

    .line 326
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationMode;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    goto :goto_0

    .line 329
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationMode;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    goto :goto_0

    .line 332
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationMode;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    goto :goto_0

    .line 338
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 217
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onPause()V

    .line 218
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings_ex/location/RadioButtonPreference;)V
    .locals 2
    .param p1, "emiter"    # Lcom/android/settings_ex/location/RadioButtonPreference;

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v1, :cond_1

    .line 310
    const/4 v0, 0x3

    .line 316
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/location/LocationMode;->setLocationMode(I)V

    .line 317
    return-void

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v1, :cond_2

    .line 312
    const/4 v0, 0x2

    goto :goto_0

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v1, :cond_0

    .line 314
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onResume()V

    .line 212
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationMode;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 213
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onStart()V

    .line 200
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationMode;->initUserPrefService()V

    .line 201
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onStop()V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mServiceConn:Lcom/android/settings_ex/location/LocationMode$XTServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 207
    return-void
.end method
