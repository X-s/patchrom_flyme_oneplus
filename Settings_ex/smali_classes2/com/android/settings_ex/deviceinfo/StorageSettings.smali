.class public Lcom/android/settings_ex/deviceinfo/StorageSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "StorageSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/StorageSettings$1;,
        Lcom/android/settings_ex/deviceinfo/StorageSettings$2;,
        Lcom/android/settings_ex/deviceinfo/StorageSettings$3;,
        Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;,
        Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;,
        Lcom/android/settings_ex/deviceinfo/StorageSettings$SummaryProvider;,
        Lcom/android/settings_ex/deviceinfo/StorageSettings$UnmountTask;,
        Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment;
    }
.end annotation


# static fields
.field static final COLOR_PRIVATE:[I

.field static final COLOR_PUBLIC:I

.field static final COLOR_WARNING:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

.field static final TAG:Ljava/lang/String; = "StorageSettings"

.field private static final TAG_DISK_INIT:Ljava/lang/String; = "disk_init"

.field private static final TAG_VOLUME_UNMOUNTED:Ljava/lang/String; = "volume_unmounted"


# instance fields
.field private mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mInternalSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

.field private mIsFinished:Z

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static synthetic -wrap0(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p0, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->isInteresting(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/deviceinfo/StorageSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->refresh()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const-string/jumbo v0, "#ff9e9e9e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    .line 75
    const-string/jumbo v0, "#fff4511e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->COLOR_WARNING:I

    .line 77
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 78
    const-string/jumbo v1, "#ff26a69a"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 79
    const-string/jumbo v1, "#ffab47bc"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 80
    const-string/jumbo v1, "#fff2a600"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 81
    const-string/jumbo v1, "#ffec407a"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 82
    const-string/jumbo v1, "#ffc0ca33"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 77
    sput-object v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    .line 520
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageSettings$2;

    invoke-direct {v0}, Lcom/android/settings_ex/deviceinfo/StorageSettings$2;-><init>()V

    .line 519
    sput-object v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 532
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageSettings$3;

    invoke-direct {v0}, Lcom/android/settings_ex/deviceinfo/StorageSettings$3;-><init>()V

    .line 531
    sput-object v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mIsFinished:Z

    .line 125
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings$1;-><init>(Lcom/android/settings_ex/deviceinfo/StorageSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 68
    return-void
.end method

.method private static isInteresting(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p0, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    const/4 v0, 0x0

    return v0

    .line 143
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private refresh()V
    .locals 31

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mIsFinished:Z

    if-eqz v2, :cond_0

    .line 152
    return-void

    .line 155
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    .line 157
    .local v10, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 163
    const/16 v18, 0x0

    .line 164
    .local v18, "privateCount":I
    const-wide/16 v22, 0x0

    .line 165
    .local v22, "privateUsedBytes":J
    const-wide/16 v20, 0x0

    .line 167
    .local v20, "privateTotalBytes":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v30

    .line 168
    .local v30, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 170
    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "vol$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/storage/VolumeInfo;

    .line 171
    .local v28, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {v28 .. v28}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 172
    sget-object v2, Lcom/android/settings_ex/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "privateCount":I
    .local v19, "privateCount":I
    sget-object v3, Lcom/android/settings_ex/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    array-length v3, v3

    rem-int v3, v18, v3

    aget v9, v2, v3

    .line 173
    .local v9, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 174
    new-instance v3, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;

    move-object/from16 v0, v28

    invoke-direct {v3, v10, v0, v9}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;I)V

    .line 173
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 175
    invoke-virtual/range {v28 .. v28}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 176
    invoke-virtual/range {v28 .. v28}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v16

    .line 177
    .local v16, "path":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    sub-long/2addr v2, v6

    add-long v22, v22, v2

    .line 178
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    add-long v20, v20, v2

    move/from16 v18, v19

    .end local v19    # "privateCount":I
    .restart local v18    # "privateCount":I
    goto :goto_0

    .line 180
    .end local v9    # "color":I
    .end local v16    # "path":Ljava/io/File;
    :cond_2
    invoke-virtual/range {v28 .. v28}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-nez v2, :cond_1

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 182
    new-instance v3, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;

    sget v5, Lcom/android/settings_ex/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    move-object/from16 v0, v28

    invoke-direct {v3, v10, v0, v5}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;I)V

    .line 181
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 187
    .end local v28    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v26

    .line 188
    .local v26, "recs":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeRecord;>;"
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "rec$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/storage/VolumeRecord;

    .line 189
    .local v24, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual/range {v24 .. v24}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual/range {v24 .. v24}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    if-nez v2, :cond_4

    .line 192
    const v2, 0x7f02016d

    invoke-virtual {v10, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 193
    .local v14, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 194
    sget v2, Lcom/android/settings_ex/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    invoke-virtual {v14, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 196
    new-instance v17, Landroid/support/v7/preference/Preference;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 197
    .local v17, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual/range {v24 .. v24}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {v24 .. v24}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    const v2, 0x1040463

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 200
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 206
    .end local v14    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v17    # "pref":Landroid/support/v7/preference/Preference;
    .end local v24    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v13

    .line 207
    .local v13, "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "disk$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/storage/DiskInfo;

    .line 208
    .local v11, "disk":Landroid/os/storage/DiskInfo;
    iget v2, v11, Landroid/os/storage/DiskInfo;->volumeCount:I

    if-nez v2, :cond_6

    iget-wide v2, v11, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_6

    .line 209
    new-instance v17, Landroid/support/v7/preference/Preference;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 210
    .restart local v17    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v11}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v11}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    const v2, 0x1040460

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 213
    const v2, 0x7f02016d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    .line 218
    .end local v11    # "disk":Landroid/os/storage/DiskInfo;
    .end local v17    # "pref":Landroid/support/v7/preference/Preference;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v27

    .line 219
    .local v27, "result":Landroid/text/format/Formatter$BytesResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    const v3, 0x7f0e08ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    .line 220
    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 219
    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 222
    move-wide/from16 v0, v20

    invoke-static {v10, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 221
    const v5, 0x7f0e08cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_8

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 227
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 231
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_a

    .line 235
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mIsFinished:Z

    .line 237
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 238
    .local v4, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "android.os.storage.extra.VOLUME_ID"

    const-string/jumbo v3, "private"

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 240
    const-class v3, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const v6, 0x7f0e0f52

    const/4 v7, 0x0

    .line 241
    const/4 v8, 0x0

    .line 239
    invoke-static/range {v2 .. v8}, Lcom/android/settings_ex/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v15

    .line 243
    .local v15, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "show_drawer_menu"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->finish()V

    .line 149
    .end local v4    # "args":Landroid/os/Bundle;
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_a
    return-void

    .end local v12    # "disk$iterator":Ljava/util/Iterator;
    .end local v13    # "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    .end local v18    # "privateCount":I
    .end local v25    # "rec$iterator":Ljava/util/Iterator;
    .end local v26    # "recs":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeRecord;>;"
    .end local v27    # "result":Landroid/text/format/Formatter$BytesResult;
    .restart local v9    # "color":I
    .restart local v19    # "privateCount":I
    .restart local v28    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_b
    move/from16 v18, v19

    .end local v19    # "privateCount":I
    .restart local v18    # "privateCount":I
    goto/16 :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f0e0d9e

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 112
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 113
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 115
    const v1, 0x7f080029

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->addPreferencesFromResource(I)V

    .line 117
    const-string/jumbo v1, "storage_internal"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 118
    const-string/jumbo v1, "storage_external"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 120
    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    .line 122
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->setHasOptionsMenu(Z)V

    .line 107
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 260
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 258
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 265
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, "key":Ljava/lang/String;
    instance-of v0, p1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;

    if-eqz v0, :cond_5

    .line 268
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v6}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v7

    .line 270
    .local v7, "vol":Landroid/os/storage/VolumeInfo;
    if-nez v7, :cond_0

    .line 271
    return v4

    .line 274
    :cond_0
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 275
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment;->show(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 276
    return v8

    .line 277
    :cond_1
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 278
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e08d5

    invoke-static {p0, v1, v0}, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    .line 279
    return v8

    .line 282
    :cond_2
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-ne v0, v8, :cond_3

    .line 283
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 284
    .local v5, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-class v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 287
    return v8

    .line 289
    .end local v5    # "args":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_7

    .line 290
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 291
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->startActivity(Landroid/content/Intent;)V

    .line 292
    return v8

    .line 294
    :cond_4
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 295
    .restart local v5    # "args":Landroid/os/Bundle;
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-class v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 298
    return v8

    .line 302
    .end local v5    # "args":Landroid/os/Bundle;
    .end local v7    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_5
    const-string/jumbo v0, "disk:"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 304
    const v0, 0x7f0e08d6

    invoke-static {p0, v0, v6}, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    .line 305
    return v8

    .line 309
    :cond_6
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 310
    .restart local v5    # "args":Landroid/os/Bundle;
    const-string/jumbo v0, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-class v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 312
    const v3, 0x7f0e08b9

    move-object v0, p0

    move-object v1, p0

    .line 311
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 313
    return v8

    .line 316
    .end local v5    # "args":Landroid/os/Bundle;
    .restart local v7    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_7
    return v4
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 253
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 254
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->refresh()V

    .line 251
    return-void
.end method
