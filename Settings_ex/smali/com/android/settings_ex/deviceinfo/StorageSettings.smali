.class public Lcom/android/settings_ex/deviceinfo/StorageSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "StorageSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;,
        Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment;,
        Lcom/android/settings_ex/deviceinfo/StorageSettings$UnmountTask;,
        Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;
    }
.end annotation


# static fields
.field static final COLOR_PRIVATE:[I

.field static final COLOR_PUBLIC:I

.field static final COLOR_WARNING:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field static final TAG:Ljava/lang/String; = "StorageSettings"

.field private static final TAG_DISK_INIT:Ljava/lang/String; = "disk_init"

.field private static final TAG_VOLUME_UNMOUNTED:Ljava/lang/String; = "volume_unmounted"


# instance fields
.field private mExternalCategory:Landroid/preference/PreferenceCategory;

.field private mInternalCategory:Landroid/preference/PreferenceCategory;

.field private mInternalSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const-string v0, "#ff9e9e9e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    .line 68
    const-string v0, "#fff4511e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->COLOR_WARNING:I

    .line 75
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "#ff23a3f5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#ff23a3f5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "#fff2a600"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "#ffec407a"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#ffc0ca33"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    .line 446
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageSettings$2;

    invoke-direct {v0}, Lcom/android/settings_ex/deviceinfo/StorageSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 114
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings$1;-><init>(Lcom/android/settings_ex/deviceinfo/StorageSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 404
    return-void
.end method

.method static synthetic access$000(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->isInteresting(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/StorageSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageSettings;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->refresh()V

    return-void
.end method

.method private static isInteresting(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p0, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 129
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 127
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private refresh()V
    .locals 30

    .prologue
    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 136
    .local v9, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 142
    const/16 v17, 0x0

    .line 143
    .local v17, "privateCount":I
    const-wide/16 v22, 0x0

    .line 144
    .local v22, "privateUsedBytes":J
    const-wide/16 v20, 0x0

    .line 146
    .local v20, "privateTotalBytes":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v29

    .line 147
    .local v29, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 149
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/storage/VolumeInfo;

    .line 150
    .local v28, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {v28 .. v28}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 151
    sget-object v2, Lcom/android/settings_ex/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "privateCount":I
    .local v18, "privateCount":I
    sget-object v3, Lcom/android/settings_ex/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    array-length v3, v3

    rem-int v3, v17, v3

    aget v8, v2, v3

    .line 152
    .local v8, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    new-instance v3, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;

    move-object/from16 v0, v28

    invoke-direct {v3, v9, v0, v8}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;I)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 154
    invoke-virtual/range {v28 .. v28}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    invoke-virtual/range {v28 .. v28}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v15

    .line 156
    .local v15, "path":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    invoke-virtual {v15}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long v22, v22, v2

    .line 157
    invoke-virtual {v15}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    add-long v20, v20, v2

    .line 158
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zhuyang--privateUsedBytes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zhuyang--getTotalSpace:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zhuyang--getFreeSpace:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .end local v15    # "path":Ljava/io/File;
    :cond_1
    move/from16 v17, v18

    .line 162
    .end local v18    # "privateCount":I
    .restart local v17    # "privateCount":I
    goto/16 :goto_0

    .end local v8    # "color":I
    :cond_2
    invoke-virtual/range {v28 .. v28}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    new-instance v3, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;

    sget v4, Lcom/android/settings_ex/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    move-object/from16 v0, v28

    invoke-direct {v3, v9, v0, v4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;I)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 169
    .end local v28    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v24

    .line 170
    .local v24, "recs":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeRecord;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/storage/VolumeRecord;

    .line 171
    .local v19, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    if-nez v2, :cond_4

    .line 174
    const v2, 0x7f0200d5

    invoke-virtual {v9, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 175
    .local v14, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 176
    sget v2, Lcom/android/settings_ex/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    invoke-virtual {v14, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 178
    new-instance v16, Lcom/oneplus/widget/preference/OPPreference;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Lcom/oneplus/widget/preference/OPPreference;-><init>(Landroid/content/Context;)V

    .line 179
    .local v16, "pref":Lcom/oneplus/widget/preference/OPPreference;
    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/preference/OPPreference;->setKey(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/preference/OPPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    const v2, 0x104044a

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/preference/OPPreference;->setSummary(I)V

    .line 182
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/oneplus/widget/preference/OPPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 188
    .end local v14    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v16    # "pref":Lcom/oneplus/widget/preference/OPPreference;
    .end local v19    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v11

    .line 189
    .local v11, "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/DiskInfo;

    .line 190
    .local v10, "disk":Landroid/os/storage/DiskInfo;
    iget v2, v10, Landroid/os/storage/DiskInfo;->volumeCount:I

    if-nez v2, :cond_6

    iget-wide v2, v10, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 191
    new-instance v16, Lcom/oneplus/widget/preference/OPPreference;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Lcom/oneplus/widget/preference/OPPreference;-><init>(Landroid/content/Context;)V

    .line 192
    .restart local v16    # "pref":Lcom/oneplus/widget/preference/OPPreference;
    invoke-virtual {v10}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/preference/OPPreference;->setKey(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v10}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/preference/OPPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    const v2, 0x1040447

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/preference/OPPreference;->setSummary(I)V

    .line 195
    const v2, 0x7f0200d5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/preference/OPPreference;->setIcon(I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 200
    .end local v10    # "disk":Landroid/os/storage/DiskInfo;
    .end local v16    # "pref":Lcom/oneplus/widget/preference/OPPreference;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v27

    .line 201
    .local v27, "usedResult":Landroid/text/format/Formatter$BytesResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    const v3, 0x7f0c067a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v26

    .line 208
    .local v26, "totalResult":Landroid/text/format/Formatter$BytesResult;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sub-long v4, v20, v22

    const/4 v3, 0x0

    invoke-static {v2, v4, v5, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v12

    .line 209
    .local v12, "freeResult":Landroid/text/format/Formatter$BytesResult;
    const v2, 0x7f0c02bf

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v12, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 211
    .local v25, "summaryString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    const-string v2, "StorageSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ddj mInternalSummary.setSummary(summaryString):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_8

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 217
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 221
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_a

    .line 224
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 225
    .local v7, "args":Landroid/os/Bundle;
    const-string v2, "android.os.storage.extra.VOLUME_ID"

    const-string v3, "private"

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-class v2, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->finish()V

    .line 230
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_a
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 92
    const v0, 0x7f0c0bc2

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 101
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 102
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 104
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->addPreferencesFromResource(I)V

    .line 106
    const-string v1, "storage_internal"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    .line 107
    const-string v1, "storage_external"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    .line 109
    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    invoke-direct {v1, v0}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    .line 111
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->setHasOptionsMenu(Z)V

    .line 112
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 241
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 242
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 243
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 247
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, "key":Ljava/lang/String;
    instance-of v0, p2, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;

    if-eqz v0, :cond_5

    .line 250
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v6}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v7

    .line 251
    .local v7, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v7, :cond_0

    .line 252
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 253
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment;->show(Landroid/app/Fragment;Ljava/lang/String;)V

    move v4, v8

    .line 293
    .end local v7    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    :goto_0
    return v4

    .line 255
    .restart local v7    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 256
    const v0, 0x7f0c0685

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    move v4, v8

    .line 257
    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-ne v0, v8, :cond_3

    .line 261
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 262
    .local v5, "args":Landroid/os/Bundle;
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-class v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v4, v8

    .line 265
    goto :goto_0

    .line 267
    .end local v5    # "args":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->startActivity(Landroid/content/Intent;)V

    move v4, v8

    .line 270
    goto :goto_0

    .line 272
    :cond_4
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 273
    .restart local v5    # "args":Landroid/os/Bundle;
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-class v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v4, v8

    .line 275
    goto :goto_0

    .line 279
    .end local v5    # "args":Landroid/os/Bundle;
    .end local v7    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_5
    const-string v0, "disk:"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 281
    const v0, 0x7f0c0686

    invoke-static {p0, v0, v6}, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    move v4, v8

    .line 282
    goto :goto_0

    .line 286
    :cond_6
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 287
    .restart local v5    # "args":Landroid/os/Bundle;
    const-string v0, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-class v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c066b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v4, v8

    .line 290
    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 236
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings;->refresh()V

    .line 237
    return-void
.end method
