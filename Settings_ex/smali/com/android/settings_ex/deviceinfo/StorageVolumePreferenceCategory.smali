.class public Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
    }
.end annotation


# static fields
.field public static final KEY_CACHE:Ljava/lang/String; = "cache"

.field private static final MSG_UI_UPDATE_APPROXIMATE:I = 0x1

.field private static final MSG_UI_UPDATE_DETAILS:I = 0x2

.field private static final ORDER_STORAGE_LOW:I = -0x1

.field private static final ORDER_USAGE_BAR:I = -0x2


# instance fields
.field private mAndriodSystem:J

.field private mContext:Landroid/content/Context;

.field private mFormatPreference:Landroid/preference/Preference;

.field private mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemSys:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mReceiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private final mResources:Landroid/content/res/Resources;

.field private mStorageLow:Landroid/preference/Preference;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mTotalSize:J

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

.field private mUsbConnected:Z

.field private mUsbFunction:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    .line 107
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 779
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$2;-><init>(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 146
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 149
    invoke-static {p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 152
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 153
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    .line 156
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    return-void

    .line 156
    :cond_0
    const v0, 0x7f090624

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static buildForInternal(Landroid/content/Context;)Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method public static buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 139
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method private buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .locals 2
    .param p1, "titleRes"    # I
    .param p2, "colorRes"    # I

    .prologue
    .line 161
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;
    .locals 4
    .param p1, "excluding"    # Landroid/content/pm/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 865
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 866
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 867
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 868
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v3, :cond_0

    .line 869
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 872
    :cond_1
    return-object v1
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->invalidate()V

    .line 744
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->measure()V

    .line 745
    return-void
.end method

.method private static varargs totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J
    .locals 8
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 643
    .local v4, "total":J
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 644
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 645
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 643
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method private updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V
    .locals 8
    .param p1, "pref"    # Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .param p2, "size"    # J

    .prologue
    const-wide/16 v6, 0x400

    .line 729
    invoke-direct {p0, p2, p3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 730
    invoke-virtual {p1}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v0

    .line 732
    .local v0, "order":I
    iget-wide v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updateTotalStorage(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "GB"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    mul-long/2addr v4, v6

    mul-long v2, v4, v6

    .line 734
    .local v2, "totalSize":J
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    long-to-float v4, p2

    long-to-float v5, v2

    div-float/2addr v4, v5

    iget v5, p1, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 740
    return-void
.end method

.method private updatePreferencesFromState()V
    .locals 10

    .prologue
    const v9, 0x7f09050b

    const v8, 0x7f090511

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 350
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v4, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    const/4 v3, 0x0

    .line 356
    .local v3, "titleResId":I
    const/4 v2, 0x0

    .line 358
    .local v2, "summaryResId":I
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 360
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 362
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 365
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "state":Ljava/lang/String;
    const-string v4, "mounted_ro"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 368
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    const v5, 0x7f0904d4

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 373
    :goto_1
    const-string v4, "mounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 376
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 378
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 381
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 382
    const v3, 0x7f0904e7

    .line 383
    const v2, 0x7f0904e8

    .line 394
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 395
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 402
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f09015d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 404
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 468
    :cond_5
    :goto_3
    iget-boolean v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    if-eqz v4, :cond_14

    const-string v4, "mtp"

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "ptp"

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 471
    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 472
    const-string v4, "mounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 474
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 478
    :cond_8
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 479
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 480
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 370
    :cond_9
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    const v5, 0x7f0904d3

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto/16 :goto_1

    .line 385
    :cond_a
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 386
    const v3, 0x7f0904ee

    .line 387
    const v2, 0x7f0904ef

    goto/16 :goto_2

    .line 390
    :cond_b
    const v3, 0x7f0904de

    .line 391
    const v2, 0x7f0904df

    goto/16 :goto_2

    .line 412
    :cond_c
    const-string v4, "unmounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "nofs"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "unmountable"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 416
    :cond_d
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 418
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 421
    :cond_e
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 422
    const v3, 0x7f0904eb

    .line 423
    const v2, 0x7f0904ec

    .line 434
    :goto_4
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 461
    :goto_5
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 463
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    const v5, 0x7f090103

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 464
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    const v5, 0x7f090104

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 465
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 425
    :cond_f
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 426
    const v3, 0x7f0904f2

    .line 427
    const v2, 0x7f0904f3

    goto :goto_4

    .line 430
    :cond_10
    const v3, 0x7f0904e1

    .line 431
    const v2, 0x7f0904e2

    goto :goto_4

    .line 440
    :cond_11
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 442
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 443
    const v3, 0x7f0904eb

    .line 444
    const v2, 0x7f0904ed

    .line 455
    :goto_6
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 446
    :cond_12
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 447
    const v3, 0x7f0904f2

    .line 448
    const v2, 0x7f0904f4

    goto :goto_6

    .line 451
    :cond_13
    const v3, 0x7f0904e1

    .line 452
    const v2, 0x7f0904e0

    goto :goto_6

    .line 483
    :cond_14
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 484
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 486
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 487
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v5, 0x7f0904ea

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 489
    :cond_15
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 490
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v5, 0x7f0904f1

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 493
    :cond_16
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v5, 0x7f0904e4

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0
.end method

.method private updateTotalStorage(J)Ljava/lang/String;
    .locals 9
    .param p1, "totalSize"    # J

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x400

    .line 599
    div-long v4, p1, v6

    div-long/2addr v4, v6

    div-long v0, v4, v6

    .line 628
    .local v0, "storage":J
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/settings/SettingsUtils;->getMemoryStatus(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, "values":[Ljava/lang/String;
    const-string v3, "DEV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "values[0] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values[1] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 24

    .prologue
    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 167
    .local v6, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removeAll()V

    .line 171
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 176
    .local v9, "currentUser":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;

    move-result-object v14

    .line 177
    .local v14, "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v21, v0

    if-nez v21, :cond_3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_3

    const/16 v17, 0x1

    .line 179
    .local v17, "showUsers":Z
    :goto_0
    new-instance v21, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    move-object/from16 v21, v0

    const/16 v22, -0x2

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->setOrder(I)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getTitle()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f09015d

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 187
    :cond_0
    const v21, 0x7f090103

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 188
    const v21, 0x7f0904d3

    const v22, 0x7f080008

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 192
    const v21, 0x7f0900e5

    const v22, 0x7f08000f

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemSys:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 195
    const v21, 0x7f0904d7

    const v22, 0x7f080009

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 197
    const v21, 0x7f0904da

    const v22, 0x7f08000b

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 198
    const v21, 0x7f0904db

    const v22, 0x7f08000c

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 200
    const v21, 0x7f0904d9

    const v22, 0x7f08000a

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 202
    const v21, 0x7f0904dd

    const v22, 0x7f08000d

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 204
    const v21, 0x7f0904dc

    const v22, 0x7f08000e

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v21, v0

    const-string v22, "cache"

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v21

    if-eqz v21, :cond_4

    :cond_1
    const/16 v16, 0x1

    .line 210
    .local v16, "showDetails":Z
    :goto_1
    if-eqz v16, :cond_6

    .line 211
    if-eqz v17, :cond_2

    .line 212
    new-instance v21, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    iget-object v0, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v6, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 222
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemSys:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 236
    if-eqz v17, :cond_6

    .line 237
    new-instance v21, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    const v22, 0x7f09051d

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v6, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 240
    const/4 v7, 0x0

    .line 241
    .local v7, "count":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 242
    .local v12, "info":Landroid/content/pm/UserInfo;
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "count":I
    .local v8, "count":I
    rem-int/lit8 v21, v7, 0x2

    if-nez v21, :cond_5

    const v5, 0x7f080010

    .line 244
    .local v5, "colorRes":I
    :goto_3
    new-instance v20, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v21

    iget-object v0, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 246
    .local v20, "userPref":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move v7, v8

    .line 248
    .end local v8    # "count":I
    .restart local v7    # "count":I
    goto :goto_2

    .line 172
    .end local v5    # "colorRes":I
    .end local v7    # "count":I
    .end local v9    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Landroid/content/pm/UserInfo;
    .end local v14    # "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v16    # "showDetails":Z
    .end local v17    # "showUsers":Z
    .end local v20    # "userPref":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    :catch_0
    move-exception v10

    .line 173
    .local v10, "e":Landroid/os/RemoteException;
    new-instance v21, Ljava/lang/RuntimeException;

    const-string v22, "Failed to get current user"

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 177
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v9    # "currentUser":Landroid/content/pm/UserInfo;
    .restart local v14    # "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 209
    .restart local v17    # "showUsers":Z
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 242
    .restart local v8    # "count":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "info":Landroid/content/pm/UserInfo;
    .restart local v16    # "showDetails":Z
    :cond_5
    const v5, 0x7f080011

    goto :goto_3

    .line 252
    .end local v8    # "count":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Landroid/content/pm/UserInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v13

    .line 254
    .local v13, "isRemovable":Z
    :goto_4
    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 258
    :cond_7
    new-instance v21, Landroid/preference/Preference;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 262
    const/16 v19, 0x0

    .line 263
    .local v19, "titleResId":I
    const/16 v18, 0x0

    .line 265
    .local v18, "summaryResId":I
    if-eqz v13, :cond_8

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v6}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 269
    const v19, 0x7f0904e7

    .line 270
    const v18, 0x7f0904e8

    .line 281
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 287
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    const/4 v4, 0x1

    .line 288
    .local v4, "allowFormat":Z
    :goto_6
    if-eqz v4, :cond_9

    .line 289
    new-instance v21, Landroid/preference/Preference;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v6}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 293
    const v19, 0x7f0904e9

    .line 294
    const v18, 0x7f0904ea

    .line 305
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 312
    :cond_9
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v15

    .line 314
    .local v15, "pm":Landroid/content/pm/IPackageManager;
    :try_start_1
    invoke-interface {v15}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v21

    if-eqz v21, :cond_12

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getTitle()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f09015d

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_11

    .line 318
    new-instance v21, Landroid/preference/Preference;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setOrder(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v21, v0

    const v22, 0x7f090513

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setTitle(I)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v21, v0

    const v22, 0x7f090514

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setSummary(I)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 342
    :cond_a
    :goto_8
    return-void

    .line 252
    .end local v4    # "allowFormat":Z
    .end local v13    # "isRemovable":Z
    .end local v15    # "pm":Landroid/content/pm/IPackageManager;
    .end local v18    # "summaryResId":I
    .end local v19    # "titleResId":I
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 272
    .restart local v13    # "isRemovable":Z
    .restart local v18    # "summaryResId":I
    .restart local v19    # "titleResId":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v6}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 273
    const v19, 0x7f0904ee

    .line 274
    const v18, 0x7f0904ef

    goto/16 :goto_5

    .line 277
    :cond_d
    const v19, 0x7f0904de

    .line 278
    const v18, 0x7f0904df

    goto/16 :goto_5

    .line 287
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 296
    .restart local v4    # "allowFormat":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v6}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 297
    const v19, 0x7f0904f0

    .line 298
    const v18, 0x7f0904f1

    goto/16 :goto_7

    .line 301
    :cond_10
    const v19, 0x7f0904e3

    .line 302
    const v18, 0x7f0904e4

    goto/16 :goto_7

    .line 324
    .restart local v15    # "pm":Landroid/content/pm/IPackageManager;
    :cond_11
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v21, v0

    const v22, 0x7f090513

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto :goto_8

    .line 340
    :catch_1
    move-exception v21

    goto :goto_8

    .line 329
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getTitle()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f09015d

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_13

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 333
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    goto/16 :goto_8

    .line 335
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v21, v0

    const v22, 0x7f090103

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_8
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 6
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 800
    const/4 v1, 0x0

    .line 806
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 807
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v3, :cond_1

    .line 808
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 809
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/settings_ex/MediaFormat;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 811
    const-string v3, "storage_volume"

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 839
    :cond_0
    :goto_0
    return-object v1

    .line 812
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_2

    .line 813
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 814
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/settings_ex/Settings$ManageApplicationsActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 816
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_3

    .line 817
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 819
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_4

    .line 820
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 821
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "audio/mp3"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 822
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_6

    .line 823
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 825
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mContext:Landroid/content/Context;

    const-string v4, "com.oneplus.gallery"

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 826
    const-string v3, "com.oneplus.gallery"

    const-string v4, "com.oneplus.gallery.OPGalleryActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    :goto_1
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 828
    :cond_5
    const-string v3, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 833
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_0

    .line 834
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 835
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 836
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "storage_volume"

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCacheCleared()V
    .locals 0

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 769
    return-void
.end method

.method public onMediaScannerFinished()V
    .locals 0

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 765
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 773
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 749
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 750
    return-void
.end method

.method public onStorageStateChanged()V
    .locals 0

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 754
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 755
    return-void
.end method

.method public onUsbStateChanged(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isUsbConnected"    # Z
    .param p2, "usbFunction"    # Ljava/lang/String;

    .prologue
    .line 758
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    .line 759
    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    .line 760
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 761
    return-void
.end method

.method public updateApproximate(JJ)V
    .locals 15
    .param p1, "totalSize"    # J
    .param p3, "availSize"    # J

    .prologue
    .line 506
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-direct/range {p0 .. p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 515
    move-wide/from16 v0, p1

    iput-wide v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    .line 517
    sub-long v8, p1, p3

    .line 522
    .local v8, "usedSize":J
    invoke-direct/range {p0 .. p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updateTotalStorage(J)Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, "Device":Ljava/lang/String;
    const-string v5, ""

    .line 525
    .local v5, "systemSpace":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 527
    const-string v7, "GB"

    const-string v10, ""

    invoke-virtual {v2, v7, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "arry1":Ljava/lang/String;
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v2

    .line 535
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 536
    :try_start_0
    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_0

    .line 537
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x400

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x400

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x400

    mul-long/2addr v10, v12

    sub-long v10, v10, p3

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 551
    .end local v3    # "arry1":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0900e2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0900e3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f090b7b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0900e3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f090b7c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct/range {p0 .. p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 559
    .local v6, "tug":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {v7, v6}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 561
    move-wide/from16 v0, p3

    long-to-float v7, v0

    move-wide/from16 v0, p1

    long-to-float v10, v0

    div-float v4, v7, v10

    .line 562
    .local v4, "percent":F
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tug : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " percent : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 563
    float-to-double v10, v4

    const-wide v12, 0x3fa999999999999aL    # 0.05

    cmpg-double v7, v10, v12

    if-gtz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f09015d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 567
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    const v10, 0x7f090513

    invoke-virtual {v7, v10}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 573
    :goto_1
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    if-eqz v7, :cond_2

    .line 574
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f09015d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 575
    const-wide/16 v10, 0x0

    cmp-long v7, p1, v10

    if-eqz v7, :cond_1

    .line 576
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0900e2

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0900e3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f090b7b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0900e3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f090b7c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct/range {p0 .. p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updateTotalStorage(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->setMemoryDetail(Ljava/lang/String;)V

    .line 584
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v7}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->clear()V

    .line 585
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    const/4 v10, 0x0

    long-to-float v11, v8

    move-wide/from16 v0, p1

    long-to-float v12, v0

    div-float/2addr v11, v12

    const v12, -0x777778

    invoke-virtual {v7, v10, v11, v12}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 586
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v7}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->commit()V

    .line 588
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 589
    return-void

    .line 569
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    const v10, 0x7f090103

    invoke-virtual {v7, v10}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto/16 :goto_1

    .line 543
    .end local v4    # "percent":F
    .end local v6    # "tug":Ljava/lang/String;
    .restart local v3    # "arry1":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method public updateDetails(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 26
    .param p1, "details"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v20

    if-eqz v20, :cond_1

    :cond_0
    const/16 v16, 0x1

    .line 653
    .local v16, "showDetails":Z
    :goto_0
    if-nez v16, :cond_2

    .line 725
    :goto_1
    return-void

    .line 652
    .end local v16    # "showDetails":Z
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 665
    .restart local v16    # "showDetails":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->clear()V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 678
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v23, v21, v22

    const/16 v22, 0x1

    sget-object v23, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v23, v21, v22

    const/16 v22, 0x2

    sget-object v23, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v6

    .line 681
    .local v6, "dcimSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6, v7}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 683
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v23, v21, v22

    const/16 v22, 0x1

    sget-object v23, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v23, v21, v22

    const/16 v22, 0x2

    sget-object v23, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v23, v21, v22

    const/16 v22, 0x3

    sget-object v23, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v23, v21, v22

    const/16 v22, 0x4

    sget-object v23, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v12

    .line 687
    .local v12, "musicSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v12, v13}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 689
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v8

    .line 691
    .local v8, "downloadsSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8, v9}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 696
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updateTotalStorage(J)Ljava/lang/String;

    move-result-object v4

    .line 697
    .local v4, "Device":Ljava/lang/String;
    const-string v20, "GB"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x400

    mul-long v20, v20, v22

    const-wide/16 v22, 0x400

    mul-long v20, v20, v22

    const-wide/16 v22, 0x400

    mul-long v14, v20, v22

    .line 709
    .local v14, "phonesize":J
    const-wide/16 v10, 0x0

    .line 710
    .local v10, "mUserSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 713
    .local v17, "userPref":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v18

    .line 714
    .local v18, "userSize":J
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 715
    add-long v10, v10, v18

    .line 716
    goto :goto_2

    .line 718
    .end local v17    # "userPref":Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .end local v18    # "userSize":J
    :cond_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-wide/from16 v20, v0

    sub-long v20, v14, v20

    add-long v22, v6, v12

    add-long v22, v22, v8

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    add-long v22, v22, v10

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mAndriodSystem:J

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemSys:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mAndriodSystem:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->commit()V

    goto/16 :goto_1
.end method
