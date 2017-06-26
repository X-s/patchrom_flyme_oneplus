.class public Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;
.super Landroid/preference/Preference;
.source "StorageVolumePreference.java"


# instance fields
.field private mColor:I

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mUnmountListener:Landroid/view/View$OnClickListener;

.field private mUsedPercent:I

.field private final mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;I)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/VolumeInfo;
    .param p3, "color"    # I

    .prologue
    .line 49
    invoke-direct/range {p0 .. p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v12, -0x1

    iput v12, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    .line 119
    new-instance v12, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference$1;

    invoke-direct {v12, p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference$1;-><init>(Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;)V

    iput-object v12, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    .line 51
    const-class v12, Landroid/os/storage/StorageManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageManager;

    iput-object v12, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 52
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 53
    move/from16 v0, p3

    iput v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->mColor:I

    .line 55
    const v12, 0x7f04011d

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->setLayoutResource(I)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->setKey(Ljava/lang/String;)V

    .line 58
    iget-object v12, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    const-string v12, "private"

    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 62
    const v12, 0x7f0200ca

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 67
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v5

    .line 70
    .local v5, "path":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    .line 71
    .local v2, "freeBytes":J
    invoke-virtual {v5}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v8

    .line 72
    .local v8, "totalBytes":J
    sub-long v10, v8, v2

    .line 74
    .local v10, "usedBytes":J
    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "used":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, "total":Ljava/lang/String;
    const v12, 0x7f0c0679

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const/4 v14, 0x1

    aput-object v6, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    const-wide/16 v12, 0x64

    mul-long/2addr v12, v10

    div-long/2addr v12, v8

    long-to-int v12, v12

    iput v12, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    .line 79
    iget-object v12, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v12, v5}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v12

    cmp-long v12, v2, v12

    if-gez v12, :cond_0

    .line 80
    sget v12, Lcom/android/settings_ex/deviceinfo/StorageSettings;->COLOR_WARNING:I

    iput v12, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->mColor:I

    .line 81
    const v12, 0x7f0200ee

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 89
    .end local v2    # "freeBytes":J
    .end local v5    # "path":Ljava/io/File;
    .end local v6    # "total":Ljava/lang/String;
    .end local v7    # "used":Ljava/lang/String;
    .end local v8    # "totalBytes":J
    .end local v10    # "usedBytes":J
    :cond_0
    :goto_1
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 90
    iget v12, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->mColor:I

    invoke-virtual {v4, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 91
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 95
    const v12, 0x7f0400dc

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->setWidgetLayoutResource(I)V

    .line 97
    :cond_1
    return-void

    .line 64
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    const v12, 0x7f0200d5

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .restart local v4    # "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getStateDescription()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->setSummary(I)V

    .line 86
    const/4 v12, -0x1

    iput v12, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 101
    const v2, 0x7f1201a5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 102
    .local v1, "unmount":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 103
    const-string v2, "#8a000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 104
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    :cond_0
    const v2, 0x102000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 108
    .local v0, "progress":Landroid/widget/ProgressBar;
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 109
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 110
    iget v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 111
    iget v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->mColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 116
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 117
    return-void

    .line 113
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
