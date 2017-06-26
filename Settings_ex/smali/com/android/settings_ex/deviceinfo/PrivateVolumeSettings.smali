.class public Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;,
        Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;,
        Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$UserInfoFragment;,
        Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;,
        Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;
    }
.end annotation


# static fields
.field private static final AUTHORITY_MEDIA:Ljava/lang/String; = "com.android.providers.media.documents"

.field public static final BROWSER_TYPE:Ljava/lang/String; = "browser_type"

.field public static final FILETYPE_AUDIO:I = 0x1

.field public static final FILETYPE_IMAGE:I = 0x0

.field public static final FILETYPE_VIDEO:I = 0x2

.field private static final ITEMS_NO_SHOW_SHARED:[I

.field private static final ITEMS_SHOW_SHARED:[I

.field private static final KEY_USB_CONNECT_PC:Ljava/lang/String; = "usb_connect_pc"

.field public static final NEW_FILEMANAGE_ACTION:Ljava/lang/String; = "android.intent.action.ONEPLUS_FILEMANAGER_BROWSER_DIR"

.field private static final TAG_CONFIRM_CLEAR_CACHE:Ljava/lang/String; = "confirmClearCache"

.field private static final TAG_OTHER_INFO:Ljava/lang/String; = "otherInfo"

.field private static final TAG_RENAME:Ljava/lang/String; = "rename"

.field private static final TAG_USER_INFO:Ljava/lang/String; = "userInfo"


# instance fields
.field private context:Landroid/content/Context;

.field private mCurrentUser:Landroid/content/pm/UserInfo;

.field private mExplore:Landroid/preference/Preference;

.field private mHeaderPoolIndex:I

.field private mHeaderPreferencePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUsbConnected:Z

.field private mItemPoolIndex:I

.field private mItemPreferencePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

.field private final mReceiver:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private mSharedVolume:Landroid/os/storage/VolumeInfo;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

.field private mUSBConnectPC:Landroid/preference/Preference;

.field private mUsbConnectReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;

.field private mVolume:Landroid/os/storage/VolumeInfo;

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0c068c

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    .line 98
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    return-void

    :array_0
    .array-data 4
        0x7f0c068c
        0x7f0c068d
        0x7f0c068e
        0x7f0c068f
        0x7f0c0691
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 118
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    .line 119
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mIsUsbConnected:Z

    .line 141
    new-instance v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$1;-><init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUsbConnectReceiver:Landroid/content/BroadcastReceiver;

    .line 540
    new-instance v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$2;-><init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 613
    new-instance v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$3;-><init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 789
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mIsUsbConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mIsUsbConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUSBConnectPC:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
    .param p1, "x1"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updateDetails(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private addCategory(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;
    .locals 4
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 289
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    iget v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 296
    .local v0, "category":Landroid/preference/PreferenceCategory;
    :goto_0
    invoke-virtual {v0, p2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 297
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 298
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 299
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 300
    return-object v0

    .line 292
    .end local v0    # "category":Landroid/preference/PreferenceCategory;
    :cond_0
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x101008c

    invoke-direct {v0, v1, v2, v3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 294
    .restart local v0    # "category":Landroid/preference/PreferenceCategory;
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addDetailItems(Landroid/preference/PreferenceGroup;ZI)V
    .locals 4
    .param p1, "category"    # Landroid/preference/PreferenceGroup;
    .param p2, "showShared"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 304
    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    .line 305
    .local v1, "itemsToAdd":[I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 306
    aget v2, v1, v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, p3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 304
    .end local v0    # "i":I
    .end local v1    # "itemsToAdd":[I
    :cond_0
    sget-object v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    goto :goto_0

    .line 308
    .restart local v0    # "i":I
    .restart local v1    # "itemsToAdd":[I
    :cond_1
    return-void
.end method

.method private addItem(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V
    .locals 3
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "titleRes"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "userId"    # I

    .prologue
    .line 312
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 313
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    iget v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 318
    .local v0, "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    :goto_0
    if-eqz p3, :cond_1

    .line 319
    invoke-virtual {v0, p3}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 323
    :goto_1
    const v1, 0x7f0c0649

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 324
    iput p4, v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    .line 325
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 326
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 327
    return-void

    .line 315
    .end local v0    # "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->buildItem()Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v0

    .line 316
    .restart local v0    # "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto :goto_1
.end method

.method private addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 1
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 283
    const v0, 0x7fffffff

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 284
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 285
    return-void
.end method

.method private buildAction(I)Landroid/preference/Preference;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    .line 335
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 336
    .local v0, "pref":Landroid/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(I)V

    .line 337
    return-object v0
.end method

.method private buildItem()Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .locals 2

    .prologue
    .line 330
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    .line 331
    .local v0, "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    return-object v0
.end method

.method private isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 2
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .param p2, "profile"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 593
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v1, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVolumeValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 151
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static varargs totalValues(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J
    .locals 10
    .param p0, "details"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;
    .param p1, "userId"    # I
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 599
    const-wide/16 v6, 0x0

    .line 600
    .local v6, "total":J
    iget-object v5, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 601
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v4, :cond_1

    .line 602
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 603
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 604
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 602
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "len$":I
    :cond_1
    const-string v5, "StorageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MeasurementDetails mediaSize array does not have key for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_2
    return-wide v6
.end method

.method private updateDetails(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 17
    .param p1, "details"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 548
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    if-ge v4, v14, :cond_0

    .line 549
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 550
    .local v5, "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    iget v9, v5, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    .line 551
    .local v9, "userId":I
    invoke-virtual {v5}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->getTitleRes()I

    move-result v8

    .line 552
    .local v8, "itemTitleId":I
    sparse-switch v8, :sswitch_data_0

    .line 548
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 554
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v9}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 557
    :sswitch_1
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v6

    .line 560
    .local v6, "imagesSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 563
    .end local v6    # "imagesSize":J
    :sswitch_2
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v12

    .line 565
    .local v12, "videosSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 568
    .end local v12    # "videosSize":J
    :sswitch_3
    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x3

    sget-object v16, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x4

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v2

    .line 572
    .local v2, "audioSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 575
    .end local v2    # "audioSize":J
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v9}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 578
    :sswitch_5
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto/16 :goto_1

    .line 581
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v9}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    .line 582
    .local v10, "userSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v11}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto/16 :goto_1

    .line 586
    .end local v5    # "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .end local v8    # "itemTitleId":I
    .end local v9    # "userId":I
    .end local v10    # "userSize":J
    :cond_0
    return-void

    .line 552
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x7f0c068c -> :sswitch_0
        0x7f0c068d -> :sswitch_1
        0x7f0c068e -> :sswitch_2
        0x7f0c068f -> :sswitch_3
        0x7f0c0690 -> :sswitch_5
        0x7f0c0691 -> :sswitch_4
    .end sparse-switch
.end method

.method private updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V
    .locals 2
    .param p1, "pref"    # Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .param p2, "size"    # J

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 590
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 157
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 162
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->context:Landroid/content/Context;

    .line 166
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->context:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    .line 167
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->context:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 169
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 173
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 175
    new-instance v1, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    .line 176
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v1, v2}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 178
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 196
    :goto_0
    return-void

    .line 183
    :cond_0
    const v1, 0x7f08001e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreferencesFromResource(I)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 186
    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    .line 187
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    .line 189
    const v1, 0x7f0c066d

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->buildAction(I)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/preference/Preference;

    .line 191
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->setHasOptionsMenu(Z)V

    .line 194
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "usbFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUsbConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 373
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 374
    const v0, 0x7f140006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 375
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 363
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 365
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUsbConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 366
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->onDestroy()V

    .line 369
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 413
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 414
    .local v6, "context":Landroid/content/Context;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 415
    .local v5, "args":Landroid/os/Bundle;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 438
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 417
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;->show(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)V

    move v0, v8

    .line 418
    goto :goto_0

    .line 420
    :pswitch_1
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v6, v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v8

    .line 421
    goto :goto_0

    .line 423
    :pswitch_2
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-class v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeUnmount;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0666

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v0, v8

    .line 426
    goto :goto_0

    .line 428
    :pswitch_3
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-class v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0667

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v0, v8

    .line 431
    goto :goto_0

    .line 433
    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {v7, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 434
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v8

    .line 436
    goto :goto_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x7f12031a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 357
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 358
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 359
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUSBConnectPC:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 448
    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 449
    .local v10, "usbChooseIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 450
    const/4 v0, 0x1

    .line 537
    .end local v10    # "usbChooseIntent":Landroid/content/Intent;
    :goto_0
    return v0

    .line 452
    :cond_0
    instance-of v0, p2, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    iget v11, v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    .line 454
    .local v11, "userId":I
    :goto_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v9

    .line 455
    .local v9, "itemTitleId":I
    const/4 v8, 0x0

    .line 456
    .local v8, "intent":Landroid/content/Intent;
    sparse-switch v9, :sswitch_data_0

    .line 525
    :cond_1
    :goto_2
    if-eqz v8, :cond_7

    .line 527
    const/4 v0, -0x1

    if-ne v11, v0, :cond_6

    .line 528
    :try_start_0
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    .line 452
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "itemTitleId":I
    .end local v11    # "userId":I
    :cond_2
    const/4 v11, -0x1

    goto :goto_1

    .line 458
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "itemTitleId":I
    .restart local v11    # "userId":I
    :sswitch_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 459
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "classname"

    const-class v1, Lcom/android/settings_ex/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v0, "volumeUuid"

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v0, "volumeName"

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const v4, 0x7f0c0d3d

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v8

    .line 466
    goto :goto_2

    .line 468
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_1
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-string v0, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .restart local v8    # "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->context:Landroid/content/Context;

    const-string v1, "android.intent.action.ONEPLUS_FILEMANAGER_BROWSER_DIR"

    invoke-static {v0, v8, v1}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 470
    const-string v0, "android.intent.action.ONEPLUS_FILEMANAGER_BROWSER_DIR"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v0, "browser_type"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    :goto_4
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 473
    :cond_3
    const-string v0, "com.android.providers.media.documents"

    const-string v1, "images_root"

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_4

    .line 479
    :sswitch_2
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-string v0, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .restart local v8    # "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->context:Landroid/content/Context;

    const-string v1, "android.intent.action.ONEPLUS_FILEMANAGER_BROWSER_DIR"

    invoke-static {v0, v8, v1}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 481
    const-string v0, "android.intent.action.ONEPLUS_FILEMANAGER_BROWSER_DIR"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string v0, "browser_type"

    const/4 v1, 0x2

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    :goto_5
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 484
    :cond_4
    const-string v0, "com.android.providers.media.documents"

    const-string v1, "videos_root"

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_5

    .line 490
    :sswitch_3
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-string v0, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .restart local v8    # "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->context:Landroid/content/Context;

    const-string v1, "android.intent.action.ONEPLUS_FILEMANAGER_BROWSER_DIR"

    invoke-static {v0, v8, v1}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 492
    const-string v0, "android.intent.action.ONEPLUS_FILEMANAGER_BROWSER_DIR"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v0, "browser_type"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 497
    :goto_6
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 495
    :cond_5
    const-string v0, "com.android.providers.media.documents"

    const-string v1, "audio_root"

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_6

    .line 502
    :sswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/storage/VolumeInfo;)V

    .line 503
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 507
    :sswitch_5
    invoke-static {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->show(Landroid/app/Fragment;)V

    .line 508
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 512
    :sswitch_6
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v8

    .line 514
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->context:Landroid/content/Context;

    const-string v1, "android.intent.action.ONEPLUS_FILEMANAGER_BROWSER_DIR"

    invoke-static {v0, v8, v1}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    const-string v0, "android.intent.action.ONEPLUS_FILEMANAGER_BROWSER_DIR"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 520
    :sswitch_7
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 521
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 530
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v8, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 532
    :catch_0
    move-exception v7

    .line 533
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    const-string v0, "StorageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 537
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_0

    .line 456
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x7f0c066d -> :sswitch_6
        0x7f0c068c -> :sswitch_0
        0x7f0c068d -> :sswitch_1
        0x7f0c068e -> :sswitch_2
        0x7f0c068f -> :sswitch_3
        0x7f0c0690 -> :sswitch_5
        0x7f0c0691 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 379
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v6

    if-nez v6, :cond_0

    .line 409
    :goto_0
    return-void

    .line 381
    :cond_0
    const v6, 0x7f12031a

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 382
    .local v4, "rename":Landroid/view/MenuItem;
    const v6, 0x7f12031b

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 383
    .local v2, "mount":Landroid/view/MenuItem;
    const v6, 0x7f12031c

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 384
    .local v5, "unmount":Landroid/view/MenuItem;
    const v6, 0x7f12031d

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 385
    .local v0, "format":Landroid/view/MenuItem;
    const v6, 0x7f12031e

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 389
    .local v1, "migrate":Landroid/view/MenuItem;
    const-string v6, "private"

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v9}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 390
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 391
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 392
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 393
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 401
    :goto_1
    const v6, 0x7f0c0668

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 404
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 406
    .local v3, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {v6, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :goto_2
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 395
    .end local v3    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    :goto_3
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 396
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v6

    if-nez v6, :cond_3

    move v6, v7

    :goto_4
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 397
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 398
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    move v6, v8

    .line 395
    goto :goto_3

    :cond_3
    move v6, v8

    .line 396
    goto :goto_4

    .restart local v3    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_4
    move v7, v8

    .line 406
    goto :goto_2
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 342
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 345
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 346
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 352
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->update()V

    goto :goto_0
.end method

.method public update()V
    .locals 31

    .prologue
    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v26

    if-nez v26, :cond_0

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->finish()V

    .line 280
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 210
    .local v6, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 212
    .local v13, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v13, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 217
    .local v5, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v23

    .line 218
    .local v23, "userCount":I
    const/16 v26, 0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-le v0, v1, :cond_2

    const/4 v14, 0x1

    .line 219
    .local v14, "showHeaders":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v26

    if-eqz v26, :cond_3

    const/4 v15, 0x1

    .line 221
    .local v15, "showShared":Z
    :goto_2
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 222
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 224
    const/4 v4, 0x0

    .line 226
    .local v4, "addedUserCount":I
    const/16 v24, 0x0

    .local v24, "userIndex":I
    :goto_3
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 227
    move/from16 v0, v24

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/UserInfo;

    .line 228
    .local v25, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 229
    if-eqz v14, :cond_4

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v13, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;

    move-result-object v7

    .line 231
    .local v7, "details":Landroid/preference/PreferenceGroup;
    :goto_4
    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v7, v15, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addDetailItems(Landroid/preference/PreferenceGroup;ZI)V

    .line 232
    add-int/lit8 v4, v4, 0x1

    .line 226
    .end local v7    # "details":Landroid/preference/PreferenceGroup;
    :cond_1
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 218
    .end local v4    # "addedUserCount":I
    .end local v14    # "showHeaders":Z
    .end local v15    # "showShared":Z
    .end local v24    # "userIndex":I
    .end local v25    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 219
    .restart local v14    # "showHeaders":Z
    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    .restart local v4    # "addedUserCount":I
    .restart local v15    # "showShared":Z
    .restart local v24    # "userIndex":I
    .restart local v25    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4
    move-object v7, v13

    .line 229
    goto :goto_4

    .line 237
    .end local v25    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    sub-int v26, v23, v4

    if-lez v26, :cond_7

    .line 238
    const v26, 0x7f0c0676

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v13, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;

    move-result-object v12

    .line 240
    .local v12, "otherUsers":Landroid/preference/PreferenceGroup;
    const/16 v24, 0x0

    :goto_5
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 241
    move/from16 v0, v24

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/UserInfo;

    .line 242
    .restart local v25    # "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 243
    const/16 v26, 0x0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 240
    :cond_6
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 248
    .end local v12    # "otherUsers":Landroid/preference/PreferenceGroup;
    .end local v25    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_7
    const v26, 0x7f0c0690

    const/16 v27, 0x0

    const/16 v28, -0x2710

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 250
    if-eqz v15, :cond_8

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/preference/Preference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v13, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 254
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v8

    .line 255
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v18

    .line 256
    .local v18, "totalBytes":J
    invoke-virtual {v8}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v10

    .line 257
    .local v10, "freeBytes":J
    sub-long v20, v18, v10

    .line 259
    .local v20, "usedBytes":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v22

    .line 260
    .local v22, "usedResult":Landroid/text/format/Formatter$BytesResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    move-object/from16 v26, v0

    const v27, 0x7f0c067a

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v28, v29

    const/16 v29, 0x1

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v17

    .line 266
    .local v17, "totalResult":Landroid/text/format/Formatter$BytesResult;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v0, v10, v11, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v9

    .line 267
    .local v9, "freeResult":Landroid/text/format/Formatter$BytesResult;
    const v26, 0x7f0c02bf

    const/16 v27, 0x3

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v9, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget-object v0, v9, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 269
    .local v16, "summaryString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    const-string v26, "StorageSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mSummary.setSummary(summaryString):"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    move-object/from16 v26, v0

    const-wide/16 v28, 0x64

    mul-long v28, v28, v20

    div-long v28, v28, v18

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setPercent(I)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->forceMeasure()V

    .line 275
    new-instance v26, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUSBConnectPC:Landroid/preference/Preference;

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUSBConnectPC:Landroid/preference/Preference;

    move-object/from16 v26, v0

    const-string v27, "usb_connect_pc"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUSBConnectPC:Landroid/preference/Preference;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0c01cd

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUSBConnectPC:Landroid/preference/Preference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v13, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUSBConnectPC:Landroid/preference/Preference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mIsUsbConnected:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0
.end method
