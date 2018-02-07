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
    const v4, 0x7f0e08ae

    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 121
    const/4 v1, 0x0

    aput v4, v0, v1

    .line 120
    sput-object v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    .line 126
    const v0, 0x7f0e08af

    .line 127
    const v1, 0x7f0e08b0

    .line 128
    const v2, 0x7f0e08b1

    .line 129
    const v3, 0x7f0e08b3

    .line 124
    filled-new-array {v4, v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 144
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    .line 145
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCalculateUsedTimes:I

    .line 638
    new-instance v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$1;-><init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 646
    new-instance v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$2;-><init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mLoadMediaCallback:Lcom/oneplus/settings/storage/OPMediaProvider$Callback;

    .line 819
    new-instance v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$3;-><init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->setRetainInstance(Z)V

    .line 167
    return-void
.end method

.method private addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 4
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 327
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    iget v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 334
    .local v0, "category":Landroid/support/v7/preference/PreferenceCategory;
    :goto_0
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 335
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 336
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 337
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 338
    return-object v0

    .line 330
    .end local v0    # "category":Landroid/support/v7/preference/PreferenceCategory;
    :cond_0
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 331
    const v3, 0x101008c

    .line 330
    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 332
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
    .line 216
    new-instance v0, Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCleanPref:Landroid/support/v7/preference/Preference;

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCleanPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCleanPref:Landroid/support/v7/preference/Preference;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCleanPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 215
    return-void
.end method

.method private addDetailItems(Landroid/support/v7/preference/PreferenceGroup;ZI)V
    .locals 4
    .param p1, "category"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "showShared"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 342
    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    .line 343
    .local v1, "itemsToAdd":[I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 344
    aget v2, v1, v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, p3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 342
    .end local v0    # "i":I
    .end local v1    # "itemsToAdd":[I
    :cond_0
    sget-object v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    .restart local v1    # "itemsToAdd":[I
    goto :goto_0

    .line 341
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
    .line 350
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 351
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    iget v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 356
    .local v0, "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    :goto_0
    if-eqz p3, :cond_1

    .line 357
    invoke-virtual {v0, p3}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 358
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 363
    :goto_1
    const v1, 0x7f0e0869

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 364
    iput p4, v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    .line 365
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 366
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 348
    return-void

    .line 353
    .end local v0    # "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->buildItem()Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v0

    .line 354
    .restart local v0    # "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 361
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
    .line 223
    new-instance v0, Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 225
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 222
    return-void
.end method

.method private addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 321
    const v0, 0x7fffffff

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 322
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 320
    return-void
.end method

.method private buildAction(I)Landroid/support/v7/preference/Preference;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    .line 375
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 376
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 377
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 378
    return-object v0
.end method

.method private buildItem()Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .locals 2

    .prologue
    .line 370
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    .line 371
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

    .line 799
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, v3, :cond_0

    .line 800
    iget v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_2

    .line 801
    iget v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v3, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v2, v3, :cond_1

    .line 799
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 801
    goto :goto_0

    :cond_2
    move v0, v1

    .line 800
    goto :goto_0
.end method

.method private isVolumeValid()Z
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTitle()V
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e02a3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 229
    return-void
.end method

.method private startStorageCleanupActivity()V
    .locals 4

    .prologue
    .line 503
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 504
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v2, "com.qti.storagecleaner"

    const-string/jumbo v3, "com.qti.storagecleaner.CleanerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 506
    :catch_0
    move-exception v0

    .line 507
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
    .line 805
    const-wide/16 v2, 0x0

    .line 806
    .local v2, "total":J
    iget-object v4, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 807
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v1, :cond_1

    .line 808
    const/4 v4, 0x0

    array-length v6, p2

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v0, p2, v5

    .line 809
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 810
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 808
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 814
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

    .line 816
    :cond_2
    return-wide v2
.end method

.method private update()V
    .locals 29

    .prologue
    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v24

    if-nez v24, :cond_0

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->finish()V

    .line 239
    return-void

    .line 242
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->setTitle()V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 248
    .local v6, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v14

    .line 250
    .local v14, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v14}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 252
    new-instance v9, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;-><init>(Landroid/content/Context;)V

    .line 253
    .local v9, "headerMargin":Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
    invoke-virtual {v14, v9}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 254
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    aput v25, v24, v26

    invoke-static/range {v24 .. v24}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v24

    if-nez v24, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const-string/jumbo v25, "com.oneplus.security"

    invoke-static/range {v24 .. v25}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 255
    const v24, 0x7f0e03d6

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v14, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addCleanPreference(Landroid/support/v7/preference/PreferenceScreen;I)V

    .line 257
    :cond_1
    const v24, 0x7f0e0f29

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v14, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addMemoryPreference(Landroid/support/v7/preference/PreferenceScreen;I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v14, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 262
    .local v5, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v17

    .line 263
    .local v17, "userCount":I
    const/16 v24, 0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-le v0, v1, :cond_3

    const/4 v15, 0x1

    .line 264
    .local v15, "showHeaders":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v16

    .line 266
    :goto_1
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 267
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 269
    const/4 v4, 0x0

    .line 271
    .local v4, "addedUserCount":I
    const/16 v22, 0x0

    .local v22, "userIndex":I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 272
    move/from16 v0, v22

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/UserInfo;

    .line 273
    .local v23, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 274
    if-eqz v15, :cond_5

    .line 275
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v14, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v7

    .line 276
    .local v7, "details":Landroid/support/v7/preference/PreferenceGroup;
    :goto_3
    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v24

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addDetailItems(Landroid/support/v7/preference/PreferenceGroup;ZI)V

    .line 277
    add-int/lit8 v4, v4, 0x1

    .line 271
    .end local v7    # "details":Landroid/support/v7/preference/PreferenceGroup;
    :cond_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 263
    .end local v4    # "addedUserCount":I
    .end local v15    # "showHeaders":Z
    .end local v22    # "userIndex":I
    .end local v23    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    const/4 v15, 0x0

    .restart local v15    # "showHeaders":Z
    goto :goto_0

    .line 264
    :cond_4
    const/16 v16, 0x0

    .local v16, "showShared":Z
    goto :goto_1

    .line 275
    .end local v16    # "showShared":Z
    .restart local v4    # "addedUserCount":I
    .restart local v22    # "userIndex":I
    .restart local v23    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    move-object v7, v14

    .restart local v7    # "details":Landroid/support/v7/preference/PreferenceGroup;
    goto :goto_3

    .line 282
    .end local v7    # "details":Landroid/support/v7/preference/PreferenceGroup;
    .end local v23    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    sub-int v24, v17, v4

    if-lez v24, :cond_8

    .line 284
    const v24, 0x7f0e0898

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    .line 283
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v14, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v12

    .line 285
    .local v12, "otherUsers":Landroid/support/v7/preference/PreferenceGroup;
    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 286
    move/from16 v0, v22

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/UserInfo;

    .line 287
    .restart local v23    # "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 288
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 285
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 293
    .end local v12    # "otherUsers":Landroid/support/v7/preference/PreferenceGroup;
    .end local v23    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_8
    const v24, 0x7f0e08b2

    const/16 v25, 0x0

    const/16 v26, -0x2710

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 295
    if-eqz v16, :cond_9

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/support/v7/preference/Preference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v14, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 299
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v8

    .line 300
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v18

    .line 303
    .local v18, "totalBytes":J
    invoke-virtual {v8}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v10

    .line 304
    .local v10, "freeBytes":J
    sub-long v20, v18, v10

    .line 305
    .local v20, "usedBytes":J
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageUsed:J

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v13

    .line 309
    .local v13, "result":Landroid/text/format/Formatter$BytesResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    move-object/from16 v24, v0

    const v25, 0x7f0e089c

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v25

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    .line 310
    iget-object v0, v13, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v27, v26, v28

    iget-object v0, v13, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aput-object v27, v26, v28

    .line 309
    invoke-static/range {v25 .. v26}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    .line 312
    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    .line 311
    const v26, 0x7f0e089d

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x64

    mul-long v26, v26, v20

    div-long v26, v26, v18

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setPercent(I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->forceMeasure()V

    .line 316
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mNeedsUpdate:Z

    .line 236
    return-void
.end method

.method private updateDetails(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 32
    .param p1, "details"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 659
    const-wide/16 v12, 0x0

    .line 660
    .local v12, "mStorageApp":J
    const-wide/16 v18, 0x0

    .line 661
    .local v18, "mStorageImg":J
    const-wide/16 v22, 0x0

    .line 662
    .local v22, "mStorageVideo":J
    const-wide/16 v14, 0x0

    .line 663
    .local v14, "mStorageAudio":J
    const-wide/16 v16, 0x0

    .line 664
    .local v16, "mStorageCache":J
    const-wide/16 v20, 0x0

    .line 665
    .local v20, "mStorageUsers":J
    const/4 v9, 0x0

    .line 666
    .local v9, "itemOther":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    const-wide/16 v24, 0x0

    .line 667
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

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 669
    .local v8, "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    iget v11, v8, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    .line 672
    .local v11, "userId":I
    :try_start_0
    invoke-virtual {v8}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 676
    .local v10, "itemTitleId":I
    :goto_1
    sparse-switch v10, :sswitch_data_0

    .line 667
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 673
    .end local v10    # "itemTitleId":I
    :catch_0
    move-exception v6

    .line 674
    .local v6, "e":Ljava/lang/NumberFormatException;
    const/4 v10, 0x0

    .restart local v10    # "itemTitleId":I
    goto :goto_1

    .line 678
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v28

    add-long v12, v12, v28

    .line 679
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12, v13}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 706
    :sswitch_1
    move-object v9, v8

    .line 707
    .local v9, "itemOther":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v24

    .line 708
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 711
    .end local v9    # "itemOther":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    :sswitch_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-wide/from16 v28, v0

    add-long v16, v16, v28

    .line 712
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 715
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v26

    .line 716
    .local v26, "userSize":J
    add-long v20, v20, v26

    .line 717
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 721
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

    .line 722
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

    .line 724
    add-long v28, v12, v16

    add-long v28, v28, v20

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageExceptMediaUsed:J

    .line 725
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

    .line 726
    .local v4, "calculateUsed":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageUsed:J

    move-wide/from16 v28, v0

    cmp-long v28, v28, v4

    if-lez v28, :cond_1

    .line 731
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageUsed:J

    move-wide/from16 v28, v0

    sub-long v24, v28, v4

    .line 732
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 654
    .end local v4    # "calculateUsed":J
    :cond_1
    return-void

    .line 676
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x7f0e08ae -> :sswitch_0
        0x7f0e08b2 -> :sswitch_2
        0x7f0e08b3 -> :sswitch_1
    .end sparse-switch
.end method

.method private updateMediaDetails(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;J)V
    .locals 18
    .param p1, "type"    # Lcom/oneplus/settings/storage/OPMediaProvider$FileType;
    .param p2, "size"    # J

    .prologue
    .line 740
    const/4 v9, 0x0

    .line 741
    .local v9, "itemOther":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    const-wide/16 v12, 0x0

    .line 742
    .local v12, "tempStorageOther":J
    const/4 v7, 0x0

    .end local v9    # "itemOther":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    if-ge v7, v14, :cond_1

    .line 743
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 744
    .local v8, "item":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    iget v11, v8, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    .line 747
    .local v11, "userId":I
    :try_start_0
    invoke-virtual {v8}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 751
    .local v10, "itemTitleId":I
    :goto_1
    packed-switch v10, :pswitch_data_0

    .line 742
    :cond_0
    :goto_2
    :pswitch_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 748
    .end local v10    # "itemTitleId":I
    :catch_0
    move-exception v6

    .line 749
    .local v6, "e":Ljava/lang/NumberFormatException;
    const/4 v10, 0x0

    .restart local v10    # "itemTitleId":I
    goto :goto_1

    .line 753
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1
    sget-object v14, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Image:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_0

    .line 754
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageMediaImage:J

    .line 755
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageMediaImage:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v15}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 760
    :pswitch_2
    sget-object v14, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Video:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_0

    .line 761
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageMediaVideo:J

    .line 762
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageMediaVideo:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v15}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 767
    :pswitch_3
    sget-object v14, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Audio:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_0

    .line 768
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageMediaAudio:J

    .line 769
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageMediaAudio:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v15}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 774
    :pswitch_4
    move-object v9, v8

    .line 775
    .local v9, "itemOther":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    goto :goto_2

    .line 779
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

    .line 780
    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCalculateUsedTimes:I

    sget-object v15, Lcom/oneplus/settings/storage/OPMediaProvider;->sTypeArray:[Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    array-length v15, v15

    if-le v14, v15, :cond_2

    .line 781
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

    .line 782
    .local v4, "calculateUsed":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageUsed:J

    cmp-long v14, v14, v4

    if-lez v14, :cond_2

    .line 787
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageUsed:J

    sub-long v12, v14, v4

    .line 788
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12, v13}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 739
    .end local v4    # "calculateUsed":J
    :cond_2
    return-void

    .line 751
    :pswitch_data_0
    .packed-switch 0x7f0e08af
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
    .line 795
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 794
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 173
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 178
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 182
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    .line 185
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    .line 186
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 192
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 194
    new-instance v1, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    .line 195
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v1, v2}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 197
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 199
    return-void

    .line 202
    :cond_0
    const v1, 0x7f08002a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->addPreferencesFromResource(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 205
    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    .line 206
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    .line 208
    const v1, 0x7f0e088d

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->buildAction(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/support/v7/preference/Preference;

    .line 210
    iput-boolean v4, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mNeedsUpdate:Z

    .line 212
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->setHasOptionsMenu(Z)V

    .line 177
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 421
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 422
    const v0, 0x7f140006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 420
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 413
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 414
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->onDestroy()V

    .line 412
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 470
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 471
    .local v6, "context":Landroid/content/Context;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 472
    .local v5, "args":Landroid/os/Bundle;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 498
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 474
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;->show(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)V

    .line 475
    return v8

    .line 477
    :pswitch_1
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v6, v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 478
    return v8

    .line 480
    :pswitch_2
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-class v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeUnmount;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 482
    const v3, 0x7f0e0886

    move-object v0, p0

    move-object v1, p0

    .line 481
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 483
    return v8

    .line 485
    :pswitch_3
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-class v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 487
    const v3, 0x7f0e0887

    move-object v0, p0

    move-object v1, p0

    .line 486
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 488
    return v8

    .line 490
    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {v7, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 491
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    .line 493
    return v8

    .line 495
    .end local v7    # "intent":Landroid/content/Intent;
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startStorageCleanupActivity()V

    .line 496
    return v8

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x7f110410
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
    .line 407
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 408
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 406
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 17
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 515
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_1

    move-object/from16 v1, p1

    .line 516
    check-cast v1, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    iget v0, v1, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    move/from16 v16, v0

    .line 519
    .local v16, "userId":I
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 523
    .local v15, "itemTitleId":I
    :goto_1
    const/4 v13, 0x0

    .line 524
    .local v13, "intent":Landroid/content/Intent;
    sparse-switch v15, :sswitch_data_0

    .line 623
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_2
    if-eqz v13, :cond_7

    .line 625
    const/4 v1, -0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_6

    .line 626
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 633
    :goto_3
    const/4 v1, 0x1

    return v1

    .line 516
    .end local v15    # "itemTitleId":I
    .end local v16    # "userId":I
    :cond_1
    const/16 v16, -0x1

    .restart local v16    # "userId":I
    goto :goto_0

    .line 520
    :catch_0
    move-exception v12

    .line 521
    .local v12, "e":Ljava/lang/NumberFormatException;
    const/4 v15, 0x0

    .restart local v15    # "itemTitleId":I
    goto :goto_1

    .line 528
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v13    # "intent":Landroid/content/Intent;
    :sswitch_0
    :try_start_2
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v1, "com.oneplus.security.action.CLEAN_ACTIVITY"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 529
    .local v14, "intent":Landroid/content/Intent;
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v13    # "intent":Landroid/content/Intent;
    move-object v13, v14

    .line 533
    .end local v14    # "intent":Landroid/content/Intent;
    :goto_4
    const/4 v1, 0x1

    return v1

    .line 530
    .restart local v13    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v11

    .line 531
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

    .line 536
    .end local v11    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v13    # "intent":Landroid/content/Intent;
    :sswitch_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 537
    .local v6, "args":Landroid/os/Bundle;
    const-class v1, Lcom/android/settings_ex/applications/ProcessStatsSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 538
    const v4, 0x7f0e0f29

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    .line 537
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 539
    const/4 v1, 0x1

    return v1

    .line 543
    .end local v6    # "args":Landroid/os/Bundle;
    :sswitch_2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 544
    .restart local v6    # "args":Landroid/os/Bundle;
    const-string/jumbo v1, "classname"

    .line 545
    const-class v2, Lcom/android/settings_ex/Settings$StorageUseActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 544
    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string/jumbo v1, "volumeUuid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string/jumbo v1, "volumeName"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 549
    const-class v1, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const v8, 0x7f0e0f24

    const/4 v9, 0x0

    .line 550
    const/4 v10, 0x0

    .line 548
    invoke-static/range {v4 .. v10}, Lcom/android/settings_ex/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v13

    .local v13, "intent":Landroid/content/Intent;
    goto/16 :goto_2

    .line 555
    .end local v6    # "args":Landroid/os/Bundle;
    .local v13, "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v13, Landroid/content/Intent;

    .end local v13    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.provider.action.BROWSE"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-static {v1, v13, v2}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 557
    const-string/jumbo v1, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const-string/jumbo v1, "browser_type"

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 562
    :goto_6
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 560
    :cond_2
    const-string/jumbo v1, "com.android.providers.media.documents"

    const-string/jumbo v2, "images_root"

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_6

    .line 567
    .local v13, "intent":Landroid/content/Intent;
    :sswitch_4
    new-instance v13, Landroid/content/Intent;

    .end local v13    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.provider.action.BROWSE"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-static {v1, v13, v2}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 569
    const-string/jumbo v1, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const-string/jumbo v1, "browser_type"

    const/4 v2, 0x2

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 574
    :goto_7
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 572
    :cond_3
    const-string/jumbo v1, "com.android.providers.media.documents"

    const-string/jumbo v2, "videos_root"

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_7

    .line 579
    .local v13, "intent":Landroid/content/Intent;
    :sswitch_5
    new-instance v13, Landroid/content/Intent;

    .end local v13    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.provider.action.BROWSE"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-static {v1, v13, v2}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 581
    const-string/jumbo v1, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string/jumbo v1, "browser_type"

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 586
    :goto_8
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 584
    :cond_4
    const-string/jumbo v1, "com.android.providers.media.documents"

    const-string/jumbo v2, "audio_root"

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_8

    .line 591
    .local v13, "intent":Landroid/content/Intent;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-static {v1, v13, v2}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 592
    new-instance v13, Landroid/content/Intent;

    .end local v13    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.ONEPLUS_BROWSER_DIR"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    .line 594
    const/4 v1, 0x1

    return v1

    .line 596
    .local v13, "intent":Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 596
    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/storage/VolumeInfo;)V

    .line 598
    const/4 v1, 0x1

    return v1

    .line 603
    :sswitch_7
    invoke-static/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->show(Landroid/app/Fragment;)V

    .line 604
    const/4 v1, 0x1

    return v1

    .line 610
    :sswitch_8
    new-instance v13, Landroid/content/Intent;

    .end local v13    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.ONEPLUS_BROWSER_DIR"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.intent.action.ONEPLUS_BROWSER_DIR"

    invoke-static {v1, v13, v2}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 613
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v13

    goto/16 :goto_2

    .line 618
    .local v13, "intent":Landroid/content/Intent;
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 619
    const/4 v1, 0x1

    return v1

    .line 628
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

    .line 630
    :catch_2
    move-exception v11

    .line 631
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

    .line 635
    .end local v11    # "e":Landroid/content/ActivityNotFoundException;
    :cond_7
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    .line 530
    .restart local v14    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v11

    .restart local v11    # "e":Landroid/content/ActivityNotFoundException;
    move-object v13, v14

    .end local v14    # "intent":Landroid/content/Intent;
    .local v13, "intent":Landroid/content/Intent;
    goto/16 :goto_5

    .line 524
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x7f0e03d6 -> :sswitch_0
        0x7f0e088d -> :sswitch_8
        0x7f0e08ae -> :sswitch_2
        0x7f0e08af -> :sswitch_3
        0x7f0e08b0 -> :sswitch_4
        0x7f0e08b1 -> :sswitch_5
        0x7f0e08b2 -> :sswitch_7
        0x7f0e08b3 -> :sswitch_6
        0x7f0e0f29 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 427
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v8

    if-nez v8, :cond_0

    return-void

    .line 429
    :cond_0
    const v8, 0x7f110410

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 430
    .local v5, "rename":Landroid/view/MenuItem;
    const v8, 0x7f110411

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 431
    .local v3, "mount":Landroid/view/MenuItem;
    const v8, 0x7f110412

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 432
    .local v7, "unmount":Landroid/view/MenuItem;
    const v8, 0x7f110413

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 433
    .local v1, "format":Landroid/view/MenuItem;
    const v8, 0x7f110414

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 434
    .local v2, "migrate":Landroid/view/MenuItem;
    const v8, 0x7f110415

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 437
    .local v0, "cleanUp":Landroid/view/MenuItem;
    const v8, 0x7f110416

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 438
    .local v6, "storageFree":Landroid/view/MenuItem;
    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 443
    const-string/jumbo v8, "private"

    iget-object v11, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v11}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 444
    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 445
    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 446
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 447
    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 455
    :goto_0
    const v8, 0x7f0e0888

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 458
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v4

    .line 461
    .local v4, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v4, :cond_1

    .line 462
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v8

    if-ne v8, v9, :cond_1

    .line 463
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {v8, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 461
    :cond_1
    :goto_1
    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 465
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0025

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 426
    return-void

    .line 449
    .end local v4    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v8

    if-ne v8, v9, :cond_3

    move v8, v9

    :goto_2
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 450
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v8

    if-nez v8, :cond_4

    move v8, v9

    :goto_3
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 451
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 452
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v8, v10

    .line 449
    goto :goto_2

    :cond_4
    move v8, v10

    .line 450
    goto :goto_3

    .restart local v4    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_5
    move v10, v9

    .line 463
    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 383
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 386
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 387
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 389
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 394
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mNeedsUpdate:Z

    if-eqz v0, :cond_1

    .line 395
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->update()V

    .line 401
    :goto_0
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->All:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mLoadMediaCallback:Lcom/oneplus/settings/storage/OPMediaProvider$Callback;

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/storage/OPMediaProvider;->startLoadInfo(Landroid/content/Context;Lcom/oneplus/settings/storage/OPMediaProvider$FileType;Lcom/oneplus/settings/storage/OPMediaProvider$Callback;)V

    .line 382
    return-void

    .line 397
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->setTitle()V

    goto :goto_0
.end method
