.class public Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$1;,
        Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$2;,
        Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$3;,
        Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;,
        Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;,
        Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;,
        Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;,
        Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$UserInfoFragment;
    }
.end annotation


# static fields
.field private static final AUTHORITY_MEDIA:Ljava/lang/String; = "com.android.providers.media.documents"

.field public static final BROWSER_TYPE:Ljava/lang/String; = "browser_type"

.field private static final DIRECTORY_VIDEO:Ljava/lang/String; = "Video"

.field public static final FILETYPE_AUDIO:I = 0x1

.field public static final FILETYPE_IMAGE:I = 0x0

.field public static final FILETYPE_VIDEO:I = 0x2

.field private static final ITEMS_NO_SHOW_SHARED:[I

.field private static final ITEMS_SHOW_SHARED:[I

.field public static final NEW_FILEMANAGE_ACTION:Ljava/lang/String; = "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

.field public static final ONEPLUS_FILEMANAGE_DIR_INTENT:Ljava/lang/String; = "android.intent.action.ONEPLUS_BROWSER_DIR"

.field private static final STORAGE_CLEANUP_PACKAGE:Ljava/lang/String; = "com.qti.storagecleaner"

.field private static final STORAGE_CLENUP_CLASS:Ljava/lang/String; = "com.qti.storagecleaner.CleanerActivity"

.field private static final TAG_CONFIRM_CLEAR_CACHE:Ljava/lang/String; = "confirmClearCache"

.field private static final TAG_OTHER_INFO:Ljava/lang/String; = "otherInfo"

.field private static final TAG_RENAME:Ljava/lang/String; = "rename"

.field private static final TAG_USER_INFO:Ljava/lang/String; = "userInfo"


# instance fields
.field private mCalculateUsedTimes:I

.field private mCleanPref:Landroid/support/v7/preference/Preference;

.field mContext:Landroid/content/Context;

.field private mCurrentUser:Landroid/content/pm/UserInfo;

.field private mExplore:Landroid/support/v7/preference/Preference;

.field private mHeaderPoolIndex:I

.field private mHeaderPreferencePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mLoadMediaCallback:Lcom/oneplus/settings/storage/OPMediaProvider$Callback;

.field private mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

.field private mMemoryPreference:Landroid/support/v7/preference/Preference;

.field private mNeedsUpdate:Z

.field private final mReceiver:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private mSharedVolume:Landroid/os/storage/VolumeInfo;

.field private mStorageExceptMediaUsed:J

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageMediaAudio:J

.field private mStorageMediaImage:J

.field private mStorageMediaVideo:J

.field private mStorageUsed:J

.field private mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

.field private mUserManager:Landroid/os/UserManager;

.field private mVolume:Landroid/os/storage/VolumeInfo;

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0
    .param p1, "details"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updateDetails(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;Lcom/oneplus/settings/storage/OPMediaProvider$FileType;J)V
    .locals 0
    .param p1, "type"    # Lcom/oneplus/settings/storage/OPMediaProvider$FileType;
    .param p2, "size"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updateMediaDetails(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;J)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->update()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x7f0e08dc

    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 123
    const/4 v1, 0x0

    aput v4, v0, v1

    .line 122
    sput-object v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    .line 128
    const v0, 0x7f0e08dd

    .line 129
    const v1, 0x7f0e08de

    .line 130
    const v2, 0x7f0e08df

    .line 131
    const v3, 0x7f0e08e1

    .line 126
    filled-new-array {v4, v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 146
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    .line 147
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCalculateUsedTimes:I

    .line 669
    new-instance v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$1;-><init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 677
    new-instance v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$2;-><init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mLoadMediaCallback:Lcom/oneplus/settings/storage/OPMediaProvider$Callback;

    .line 850
    new-instance v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$3;-><init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->setRetainInstance(Z)V

    .line 169
    return-void
.end method

.method private addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 4
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 358
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 359
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    iget v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 365
    .local v0, "category":Landroid/support/v7/preference/PreferenceCategory;
    :goto_0
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 366
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 367
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 368
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 369
    return-object v0

    .line 361
    .end local v0    # "category":Landroid/support/v7/preference/PreferenceCategory;
    :cond_0
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 362
    const v3, 0x101008c

    .line 361
    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 363
    .restart local v0    # "category":Landroid/support/v7/preference/PreferenceCategory;
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addCleanPreference(Landroid/support/v7/preference/PreferenceScreen;I)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;
    .param p2, "titleRes"    # I

    .prologue
    .line 218
    new-instance v0, Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCleanPref:Landroid/support/v7/preference/Preference;

    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCleanPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCleanPref:Landroid/support/v7/preference/Preference;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCleanPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 217
    return-void
.end method

.method private addDetailItems(Landroid/support/v7/preference/PreferenceGroup;ZI)V
    .locals 4
    .param p1, "category"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "showShared"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 373
    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    .line 374
    .local v1, "itemsToAdd":[I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 375
    aget v2, v1, v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, p3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 373
    .end local v0    # "i":I
    .end local v1    # "itemsToAdd":[I
    :cond_0
    sget-object v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    .restart local v1    # "itemsToAdd":[I
    goto :goto_0

    .line 372
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V
    .locals 3
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "titleRes"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "userId"    # I

    .prologue
    .line 381
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 382
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    iget v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 387
    .local v0, "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    :goto_0
    if-eqz p3, :cond_1

    .line 388
    invoke-virtual {v0, p3}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 389
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 394
    :goto_1
    const v1, 0x7f0e0897

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 395
    iput p4, v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    .line 396
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 397
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 379
    return-void

    .line 384
    .end local v0    # "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->buildItem()Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v0

    .line 385
    .restart local v0    # "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 391
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 392
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private addMemoryPreference(Landroid/support/v7/preference/PreferenceScreen;I)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;
    .param p2, "titleRes"    # I

    .prologue
    .line 225
    new-instance v0, Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 224
    return-void
.end method

.method private addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 352
    const v0, 0x7fffffff

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 353
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 351
    return-void
.end method

.method private buildAction(I)Landroid/support/v7/preference/Preference;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    .line 406
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 407
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 408
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 409
    return-object v0
.end method

.method private buildItem()Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .locals 2

    .prologue
    .line 401
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    .line 402
    .local v0, "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    return-object v0
.end method

.method private isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 4
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .param p2, "profile"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 830
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, v3, :cond_0

    .line 831
    iget v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_2

    .line 832
    iget v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v3, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v2, v3, :cond_1

    .line 830
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 832
    goto :goto_0

    :cond_2
    move v0, v1

    .line 831
    goto :goto_0
.end method

.method private isVolumeValid()Z
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTitle()V
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 235
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 236
    const v1, 0x7f0e02a3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 231
    :cond_0
    return-void
.end method

.method private startStorageCleanupActivity()V
    .locals 4

    .prologue
    .line 534
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 535
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v2, "com.qti.storagecleaner"

    const-string/jumbo v3, "com.qti.storagecleaner.CleanerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "StorageSettings"

    const-string/jumbo v3, "Can\'t start storage cleanup activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static varargs totalValues(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J
    .locals 10
    .param p0, "details"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;
    .param p1, "userId"    # I
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 836
    const-wide/16 v2, 0x0

    .line 837
    .local v2, "total":J
    iget-object v4, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 838
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v1, :cond_1

    .line 839
    const/4 v4, 0x0

    array-length v6, p2

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v0, p2, v5

    .line 840
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 841
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 839
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 845
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "StorageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MeasurementDetails mediaSize array does not have key for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_2
    return-wide v2
.end method

.method private update()V
    .locals 30

    .prologue
    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v25

    if-nez v25, :cond_0

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->finish()V

    .line 244
    return-void

    .line 247
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->setTitle()V

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 253
    .local v6, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v15

    .line 255
    .local v15, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v15}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 257
    new-instance v9, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;-><init>(Landroid/content/Context;)V

    .line 258
    .local v9, "headerMargin":Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
    invoke-virtual {v15, v9}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 259
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/16 v27, 0x0

    aput v26, v25, v27

    invoke-static/range {v25 .. v25}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v25

    if-nez v25, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string/jumbo v26, "com.oneplus.security"

    invoke-static/range {v25 .. v26}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 260
    const v25, 0x7f0e03d6

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v15, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addCleanPreference(Landroid/support/v7/preference/PreferenceScreen;I)V

    .line 262
    :cond_1
    const v25, 0x7f0e0f57

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v15, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addMemoryPreference(Landroid/support/v7/preference/PreferenceScreen;I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v15, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 267
    .local v5, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v22

    .line 268
    .local v22, "userCount":I
    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    const/16 v16, 0x1

    .line 269
    .local v16, "showHeaders":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v17

    .line 271
    :goto_1
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 272
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 274
    const/4 v4, 0x0

    .line 276
    .local v4, "addedUserCount":I
    const/4 v13, 0x0

    .line 277
    .local v13, "profileCount":I
    const/4 v7, 0x0

    .line 278
    .local v7, "details":Landroid/support/v7/preference/PreferenceGroup;
    const/16 v23, 0x0

    .end local v7    # "details":Landroid/support/v7/preference/PreferenceGroup;
    .local v23, "userIndex":I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 279
    move/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/UserInfo;

    .line 280
    .local v24, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 281
    add-int/lit8 v13, v13, 0x1

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->hasMultiAppProfiles()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 284
    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    const/16 v26, 0x3e7

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    .line 285
    if-eqz v16, :cond_6

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v15, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v7

    .line 287
    :cond_2
    :goto_3
    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    const/16 v26, 0x3e7

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 288
    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-direct {v0, v15, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addDetailItems(Landroid/support/v7/preference/PreferenceGroup;ZI)V

    .line 278
    :cond_3
    :goto_4
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 268
    .end local v4    # "addedUserCount":I
    .end local v13    # "profileCount":I
    .end local v16    # "showHeaders":Z
    .end local v23    # "userIndex":I
    .end local v24    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4
    const/16 v16, 0x0

    .restart local v16    # "showHeaders":Z
    goto/16 :goto_0

    .line 269
    :cond_5
    const/16 v17, 0x0

    .local v17, "showShared":Z
    goto/16 :goto_1

    .line 285
    .end local v17    # "showShared":Z
    .restart local v4    # "addedUserCount":I
    .restart local v13    # "profileCount":I
    .restart local v23    # "userIndex":I
    .restart local v24    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    move-object v7, v15

    .local v7, "details":Landroid/support/v7/preference/PreferenceGroup;
    goto :goto_3

    .line 291
    .end local v7    # "details":Landroid/support/v7/preference/PreferenceGroup;
    :cond_7
    if-eqz v16, :cond_8

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v15, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v7

    .line 292
    .restart local v7    # "details":Landroid/support/v7/preference/PreferenceGroup;
    :goto_5
    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addDetailItems(Landroid/support/v7/preference/PreferenceGroup;ZI)V

    .line 293
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 291
    .end local v7    # "details":Landroid/support/v7/preference/PreferenceGroup;
    :cond_8
    move-object v7, v15

    .restart local v7    # "details":Landroid/support/v7/preference/PreferenceGroup;
    goto :goto_5

    .line 299
    .end local v7    # "details":Landroid/support/v7/preference/PreferenceGroup;
    .end local v24    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_9
    sub-int v25, v22, v4

    if-lez v25, :cond_b

    .line 301
    const v25, 0x7f0e08c6

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v25

    .line 300
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v15, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v12

    .line 302
    .local v12, "otherUsers":Landroid/support/v7/preference/PreferenceGroup;
    const/16 v23, 0x0

    :goto_6
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 303
    move/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/UserInfo;

    .line 304
    .restart local v24    # "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v25

    if-nez v25, :cond_a

    .line 305
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 302
    :cond_a
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 310
    .end local v12    # "otherUsers":Landroid/support/v7/preference/PreferenceGroup;
    .end local v24    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_b
    const v25, 0x7f0e08e0

    const/16 v26, 0x0

    const/16 v27, -0x2710

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 312
    if-eqz v17, :cond_c

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/support/v7/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v15, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 316
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v8

    .line 317
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v18

    .line 320
    .local v18, "totalBytes":J
    invoke-virtual {v8}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v10

    .line 321
    .local v10, "freeBytes":J
    sub-long v20, v18, v10

    .line 322
    .local v20, "usedBytes":J
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageUsed:J

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v14

    .line 326
    .local v14, "result":Landroid/text/format/Formatter$BytesResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0e08ca

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v26

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    .line 327
    iget-object v0, v14, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v28, v27, v29

    iget-object v0, v14, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aput-object v28, v27, v29

    .line 326
    invoke-static/range {v26 .. v27}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    .line 329
    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    aput-object v27, v26, v28

    .line 328
    const v27, 0x7f0e08cb

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    move-object/from16 v25, v0

    const-wide/16 v26, 0x64

    mul-long v26, v26, v20

    div-long v26, v26, v18

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setPercent(I)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->forceMeasure()V

    .line 333
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mNeedsUpdate:Z

    .line 241
    return-void
.end method

.method private updateDetails(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 32
    .param p1, "details"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 690
    const-wide/16 v12, 0x0

    .line 691
    .local v12, "mStorageApp":J
    const-wide/16 v18, 0x0

    .line 692
    .local v18, "mStorageImg":J
    const-wide/16 v22, 0x0

    .line 693
    .local v22, "mStorageVideo":J
    const-wide/16 v14, 0x0

    .line 694
    .local v14, "mStorageAudio":J
    const-wide/16 v16, 0x0

    .line 695
    .local v16, "mStorageCache":J
    const-wide/16 v20, 0x0

    .line 696
    .local v20, "mStorageUsers":J
    const/4 v9, 0x0

    .line 697
    .local v9, "itemOther":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    const-wide/16 v24, 0x0

    .line 698
    .local v24, "tempStorageOther":J
    const/4 v7, 0x0

    .end local v9    # "itemOther":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v7, v0, :cond_0

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 700
    .local v8, "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    iget v11, v8, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    .line 703
    .local v11, "userId":I
    :try_start_0
    invoke-virtual {v8}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 707
    .local v10, "itemTitleId":I
    :goto_1
    sparse-switch v10, :sswitch_data_0

    .line 698
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 704
    .end local v10    # "itemTitleId":I
    :catch_0
    move-exception v6

    .line 705
    .local v6, "e":Ljava/lang/NumberFormatException;
    const/4 v10, 0x0

    .restart local v10    # "itemTitleId":I
    goto :goto_1

    .line 709
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v28

    add-long v12, v12, v28

    .line 710
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12, v13}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 737
    :sswitch_1
    move-object v9, v8

    .line 738
    .local v9, "itemOther":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v24

    .line 739
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 742
    .end local v9    # "itemOther":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    :sswitch_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-wide/from16 v28, v0

    add-long v16, v16, v28

    .line 743
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 746
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v26

    .line 747
    .local v26, "userSize":J
    add-long v20, v20, v26

    .line 748
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 752
    .end local v8    # "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .end local v10    # "itemTitleId":I
    .end local v11    # "userId":I
    .end local v26    # "userSize":J
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCalculateUsedTimes:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCalculateUsedTimes:I

    .line 753
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCalculateUsedTimes:I

    move/from16 v28, v0

    sget-object v29, Lcom/oneplus/settings/storage/OPMediaProvider;->sTypeArray:[Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_1

    .line 755
    add-long v28, v12, v16

    add-long v28, v28, v20

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageExceptMediaUsed:J

    .line 756
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageExceptMediaUsed:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageMediaImage:J

    move-wide/from16 v30, v0

    add-long v28, v28, v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageMediaVideo:J

    move-wide/from16 v30, v0

    add-long v28, v28, v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageMediaAudio:J

    move-wide/from16 v30, v0

    add-long v4, v28, v30

    .line 757
    .local v4, "calculateUsed":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageUsed:J

    move-wide/from16 v28, v0

    cmp-long v28, v28, v4

    if-lez v28, :cond_1

    .line 762
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageUsed:J

    move-wide/from16 v28, v0

    sub-long v24, v28, v4

    .line 763
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 685
    .end local v4    # "calculateUsed":J
    :cond_1
    return-void

    .line 707
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x7f0e08dc -> :sswitch_0
        0x7f0e08e0 -> :sswitch_2
        0x7f0e08e1 -> :sswitch_1
    .end sparse-switch
.end method

.method private updateMediaDetails(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;J)V
    .locals 18
    .param p1, "type"    # Lcom/oneplus/settings/storage/OPMediaProvider$FileType;
    .param p2, "size"    # J

    .prologue
    .line 771
    const/4 v9, 0x0

    .line 772
    .local v9, "itemOther":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    const-wide/16 v12, 0x0

    .line 773
    .local v12, "tempStorageOther":J
    const/4 v7, 0x0

    .end local v9    # "itemOther":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    if-ge v7, v14, :cond_1

    .line 774
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 775
    .local v8, "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    iget v11, v8, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    .line 778
    .local v11, "userId":I
    :try_start_0
    invoke-virtual {v8}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 782
    .local v10, "itemTitleId":I
    :goto_1
    packed-switch v10, :pswitch_data_0

    .line 773
    :cond_0
    :goto_2
    :pswitch_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 779
    .end local v10    # "itemTitleId":I
    :catch_0
    move-exception v6

    .line 780
    .local v6, "e":Ljava/lang/NumberFormatException;
    const/4 v10, 0x0

    .restart local v10    # "itemTitleId":I
    goto :goto_1

    .line 784
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1
    sget-object v14, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Image:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_0

    .line 785
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageMediaImage:J

    .line 786
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageMediaImage:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v15}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 791
    :pswitch_2
    sget-object v14, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Video:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_0

    .line 792
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageMediaVideo:J

    .line 793
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageMediaVideo:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v15}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 798
    :pswitch_3
    sget-object v14, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Audio:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_0

    .line 799
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageMediaAudio:J

    .line 800
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageMediaAudio:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v15}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 805
    :pswitch_4
    move-object v9, v8

    .line 806
    .local v9, "itemOther":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    goto :goto_2

    .line 810
    .end local v8    # "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .end local v9    # "itemOther":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .end local v10    # "itemTitleId":I
    .end local v11    # "userId":I
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCalculateUsedTimes:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCalculateUsedTimes:I

    .line 811
    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCalculateUsedTimes:I

    sget-object v15, Lcom/oneplus/settings/storage/OPMediaProvider;->sTypeArray:[Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    array-length v15, v15

    if-le v14, v15, :cond_2

    .line 812
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageExceptMediaUsed:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageMediaImage:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageMediaVideo:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageMediaAudio:J

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    .line 813
    .local v4, "calculateUsed":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageUsed:J

    cmp-long v14, v14, v4

    if-lez v14, :cond_2

    .line 818
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageUsed:J

    sub-long v12, v14, v4

    .line 819
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12, v13}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 770
    .end local v4    # "calculateUsed":J
    :cond_2
    return-void

    .line 782
    :pswitch_data_0
    .packed-switch 0x7f0e08dd
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V
    .locals 2
    .param p1, "pref"    # Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .param p2, "size"    # J

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 825
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 175
    const/16 v0, 0x2a

    return v0
.end method

.method public hasMultiAppProfiles()Z
    .locals 5

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "hasMultiAppProfiles":Z
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "user$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 342
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_0

    .line 343
    const/4 v0, 0x1

    .line 347
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 180
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 184
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    .line 187
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    .line 188
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 194
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 196
    new-instance v1, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    .line 197
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v1, v2}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 199
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 201
    return-void

    .line 204
    :cond_0
    const v1, 0x7f08002a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreferencesFromResource(I)V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 207
    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    .line 208
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    .line 210
    const v1, 0x7f0e08bb

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->buildAction(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/support/v7/preference/Preference;

    .line 212
    iput-boolean v4, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mNeedsUpdate:Z

    .line 214
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->setHasOptionsMenu(Z)V

    .line 179
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 452
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 453
    const v0, 0x7f140006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 451
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 444
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 445
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->onDestroy()V

    .line 443
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 501
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 502
    .local v6, "context":Landroid/content/Context;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 503
    .local v5, "args":Landroid/os/Bundle;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 529
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 505
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;->show(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)V

    .line 506
    return v8

    .line 508
    :pswitch_1
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v6, v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 509
    return v8

    .line 511
    :pswitch_2
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-class v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeUnmount;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 513
    const v3, 0x7f0e08b4

    move-object v0, p0

    move-object v1, p0

    .line 512
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 514
    return v8

    .line 516
    :pswitch_3
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-class v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 518
    const v3, 0x7f0e08b5

    move-object v0, p0

    move-object v1, p0

    .line 517
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 519
    return v8

    .line 521
    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {v7, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    .line 524
    return v8

    .line 526
    .end local v7    # "intent":Landroid/content/Intent;
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startStorageCleanupActivity()V

    .line 527
    return v8

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x7f11041f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 438
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 439
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 437
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 17
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 546
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_1

    move-object/from16 v1, p1

    .line 547
    check-cast v1, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    iget v0, v1, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    move/from16 v16, v0

    .line 550
    .local v16, "userId":I
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 554
    .local v15, "itemTitleId":I
    :goto_1
    const/4 v13, 0x0

    .line 555
    .local v13, "intent":Landroid/content/Intent;
    sparse-switch v15, :sswitch_data_0

    .line 654
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_2
    if-eqz v13, :cond_7

    .line 656
    const/4 v1, -0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_6

    .line 657
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 664
    :goto_3
    const/4 v1, 0x1

    return v1

    .line 547
    .end local v15    # "itemTitleId":I
    .end local v16    # "userId":I
    :cond_1
    const/16 v16, -0x1

    .restart local v16    # "userId":I
    goto :goto_0

    .line 551
    :catch_0
    move-exception v12

    .line 552
    .local v12, "e":Ljava/lang/NumberFormatException;
    const/4 v15, 0x0

    .restart local v15    # "itemTitleId":I
    goto :goto_1

    .line 559
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v13    # "intent":Landroid/content/Intent;
    :sswitch_0
    :try_start_2
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v1, "com.oneplus.security.action.CLEAN_ACTIVITY"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 560
    .local v14, "intent":Landroid/content/Intent;
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v13    # "intent":Landroid/content/Intent;
    move-object v13, v14

    .line 564
    .end local v14    # "intent":Landroid/content/Intent;
    :goto_4
    const/4 v1, 0x1

    return v1

    .line 561
    .restart local v13    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v11

    .line 562
    .end local v13    # "intent":Landroid/content/Intent;
    .local v11, "e":Landroid/content/ActivityNotFoundException;
    :goto_5
    const-string/jumbo v1, "StorageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No activity found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 567
    .end local v11    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v13    # "intent":Landroid/content/Intent;
    :sswitch_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 568
    .local v6, "args":Landroid/os/Bundle;
    const-class v1, Lcom/android/settings_ex/applications/ProcessStatsSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 569
    const v4, 0x7f0e0f57

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    .line 568
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 570
    const/4 v1, 0x1

    return v1

    .line 574
    .end local v6    # "args":Landroid/os/Bundle;
    :sswitch_2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 575
    .restart local v6    # "args":Landroid/os/Bundle;
    const-string/jumbo v1, "classname"

    .line 576
    const-class v2, Lcom/android/settings_ex/Settings$StorageUseActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 575
    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string/jumbo v1, "volumeUuid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string/jumbo v1, "volumeName"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 580
    const-class v1, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const v8, 0x7f0e0f52

    const/4 v9, 0x0

    .line 581
    const/4 v10, 0x0

    .line 579
    invoke-static/range {v4 .. v10}, Lcom/android/settings_ex/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v13

    .local v13, "intent":Landroid/content/Intent;
    goto/16 :goto_2

    .line 586
    .end local v6    # "args":Landroid/os/Bundle;
    .local v13, "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v13, Landroid/content/Intent;

    .end local v13    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.provider.action.BROWSE"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-static {v1, v13, v2}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 588
    const-string/jumbo v1, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    const-string/jumbo v1, "browser_type"

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 593
    :goto_6
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 591
    :cond_2
    const-string/jumbo v1, "com.android.providers.media.documents"

    const-string/jumbo v2, "images_root"

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_6

    .line 598
    .local v13, "intent":Landroid/content/Intent;
    :sswitch_4
    new-instance v13, Landroid/content/Intent;

    .end local v13    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.provider.action.BROWSE"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-static {v1, v13, v2}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 600
    const-string/jumbo v1, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const-string/jumbo v1, "browser_type"

    const/4 v2, 0x2

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 605
    :goto_7
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 603
    :cond_3
    const-string/jumbo v1, "com.android.providers.media.documents"

    const-string/jumbo v2, "videos_root"

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_7

    .line 610
    .local v13, "intent":Landroid/content/Intent;
    :sswitch_5
    new-instance v13, Landroid/content/Intent;

    .end local v13    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.provider.action.BROWSE"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-static {v1, v13, v2}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 612
    const-string/jumbo v1, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const-string/jumbo v1, "browser_type"

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 617
    :goto_8
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 615
    :cond_4
    const-string/jumbo v1, "com.android.providers.media.documents"

    const-string/jumbo v2, "audio_root"

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_8

    .line 622
    .local v13, "intent":Landroid/content/Intent;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-static {v1, v13, v2}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 623
    new-instance v13, Landroid/content/Intent;

    .end local v13    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.ONEPLUS_BROWSER_DIR"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 624
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    .line 625
    const/4 v1, 0x1

    return v1

    .line 627
    .local v13, "intent":Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 627
    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/storage/VolumeInfo;)V

    .line 629
    const/4 v1, 0x1

    return v1

    .line 634
    :sswitch_7
    invoke-static/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->show(Landroid/app/Fragment;)V

    .line 635
    const/4 v1, 0x1

    return v1

    .line 641
    :sswitch_8
    new-instance v13, Landroid/content/Intent;

    .end local v13    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.ONEPLUS_BROWSER_DIR"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.intent.action.ONEPLUS_BROWSER_DIR"

    invoke-static {v1, v13, v2}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v13

    goto/16 :goto_2

    .line 649
    .local v13, "intent":Landroid/content/Intent;
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 650
    const/4 v1, 0x1

    return v1

    .line 659
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_6
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    move/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v13, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 661
    :catch_2
    move-exception v11

    .line 662
    .restart local v11    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "StorageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No activity found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 666
    .end local v11    # "e":Landroid/content/ActivityNotFoundException;
    :cond_7
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    .line 561
    .restart local v14    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v11

    .restart local v11    # "e":Landroid/content/ActivityNotFoundException;
    move-object v13, v14

    .end local v14    # "intent":Landroid/content/Intent;
    .local v13, "intent":Landroid/content/Intent;
    goto/16 :goto_5

    .line 555
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x7f0e03d6 -> :sswitch_0
        0x7f0e08bb -> :sswitch_8
        0x7f0e08dc -> :sswitch_2
        0x7f0e08dd -> :sswitch_3
        0x7f0e08de -> :sswitch_4
        0x7f0e08df -> :sswitch_5
        0x7f0e08e0 -> :sswitch_7
        0x7f0e08e1 -> :sswitch_6
        0x7f0e0f57 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 458
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v8

    if-nez v8, :cond_0

    return-void

    .line 460
    :cond_0
    const v8, 0x7f11041f

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 461
    .local v5, "rename":Landroid/view/MenuItem;
    const v8, 0x7f110420

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 462
    .local v3, "mount":Landroid/view/MenuItem;
    const v8, 0x7f110421

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 463
    .local v7, "unmount":Landroid/view/MenuItem;
    const v8, 0x7f110422

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 464
    .local v1, "format":Landroid/view/MenuItem;
    const v8, 0x7f110423

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 465
    .local v2, "migrate":Landroid/view/MenuItem;
    const v8, 0x7f110424

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 468
    .local v0, "cleanUp":Landroid/view/MenuItem;
    const v8, 0x7f110425

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 469
    .local v6, "storageFree":Landroid/view/MenuItem;
    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 474
    const-string/jumbo v8, "private"

    iget-object v11, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v11}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 475
    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 476
    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 477
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 478
    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 486
    :goto_0
    const v8, 0x7f0e08b6

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 489
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v4

    .line 492
    .local v4, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v4, :cond_1

    .line 493
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v8

    if-ne v8, v9, :cond_1

    .line 494
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {v8, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 492
    :cond_1
    :goto_1
    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 496
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0025

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 457
    return-void

    .line 480
    .end local v4    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v8

    if-ne v8, v9, :cond_3

    move v8, v9

    :goto_2
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 481
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v8

    if-nez v8, :cond_4

    move v8, v9

    :goto_3
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 482
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 483
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v8, v10

    .line 480
    goto :goto_2

    :cond_4
    move v8, v10

    .line 481
    goto :goto_3

    .restart local v4    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_5
    move v10, v9

    .line 494
    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 414
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 417
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 418
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 420
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 425
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mNeedsUpdate:Z

    if-eqz v0, :cond_1

    .line 426
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->update()V

    .line 432
    :goto_0
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->All:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mLoadMediaCallback:Lcom/oneplus/settings/storage/OPMediaProvider$Callback;

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/storage/OPMediaProvider;->startLoadInfo(Landroid/content/Context;Lcom/oneplus/settings/storage/OPMediaProvider$FileType;Lcom/oneplus/settings/storage/OPMediaProvider$Callback;)V

    .line 413
    return-void

    .line 428
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->setTitle()V

    goto :goto_0
.end method
