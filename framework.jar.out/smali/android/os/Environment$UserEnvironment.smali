.class public Landroid/os/Environment$UserEnvironment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserEnvironment"
.end annotation


# instance fields
.field private final mEmulatedDirForDirect:Ljava/io/File;

.field private final mExternalDirsForApp:[Ljava/io/File;

.field private final mExternalDirsForVold:[Ljava/io/File;

.field private final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 19
    .param p1, "userId"    # I

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/os/Environment$UserEnvironment;->mUserId:I

    .line 124
    const-string v17, "EXTERNAL_STORAGE"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 125
    .local v12, "rawExternalStorage":Ljava/lang/String;
    const-string v17, "EMULATED_STORAGE_SOURCE"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, "rawEmulatedSource":Ljava/lang/String;
    const-string v17, "EMULATED_STORAGE_TARGET"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 128
    .local v11, "rawEmulatedTarget":Ljava/lang/String;
    const-string v17, "MEDIA_STORAGE"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 129
    .local v13, "rawMediaStorage":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 130
    const-string v13, "/data/media"

    .line 133
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 134
    .local v6, "externalForVold":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 136
    .local v5, "externalForApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 139
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 140
    .local v15, "rawUserId":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v3, "emulatedSourceBase":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v4, "emulatedTargetBase":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v9, "mediaBase":Ljava/io/File;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mEmulatedDirForDirect:Ljava/io/File;

    .line 165
    .end local v3    # "emulatedSourceBase":Ljava/io/File;
    .end local v4    # "emulatedTargetBase":Ljava/io/File;
    .end local v9    # "mediaBase":Ljava/io/File;
    .end local v15    # "rawUserId":Ljava/lang/String;
    :goto_0
    const-string v17, "SECONDARY_STORAGE"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 166
    .local v14, "rawSecondaryStorage":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    if-nez p1, :cond_3

    .line 167
    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v16, v2, v7

    .line 168
    .local v16, "secondaryPath":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 152
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v14    # "rawSecondaryStorage":Ljava/lang/String;
    .end local v16    # "secondaryPath":Ljava/lang/String;
    :cond_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 153
    const-string v17, "Environment"

    const-string v18, "EXTERNAL_STORAGE undefined; falling back to default"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v12, "/storage/sdcard0"

    .line 158
    :cond_2
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mEmulatedDirForDirect:Ljava/io/File;

    goto :goto_0

    .line 173
    .restart local v14    # "rawSecondaryStorage":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    .line 174
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    .line 176
    return-void
.end method


# virtual methods
.method public buildExternalStorageAndroidDataDirs()[Ljava/io/File;
    .locals 4

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAndroidObbDirs()[Ljava/io/File;
    .locals 4

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAndroidObbDirsForVold()[Ljava/io/File;
    .locals 4

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->tryCorrectExternalPath()V

    .line 248
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string v3, "cache"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppDataDirsForVold(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->tryCorrectExternalPath()V

    .line 257
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string v3, "files"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "media"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppMediaDirsForVold(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->tryCorrectExternalPath()V

    .line 266
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "media"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppObbDirsForVold(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->tryCorrectExternalPath()V

    .line 275
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalDirs()[Ljava/io/File;
    .locals 5

    .prologue
    .line 191
    iget v3, p0, Landroid/os/Environment$UserEnvironment;->mUserId:I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 193
    .local v2, "volumes":[Landroid/os/storage/StorageVolume;
    array-length v3, v2

    new-array v0, v3, [Ljava/io/File;

    .line 194
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 195
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v3

    aput-object v3, v0, v1

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return-object v0
.end method

.method public getExternalDirsForApp()[Ljava/io/File;
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->tryCorrectExternalPath()V

    .line 227
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    return-object v0
.end method

.method public getExternalDirsForVold()[Ljava/io/File;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->tryCorrectExternalPath()V

    .line 222
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    return-object v0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMediaDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mEmulatedDirForDirect:Ljava/io/File;

    return-object v0
.end method

.method public getSecondaryStorageDirectory()Ljava/io/File;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 207
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->tryCorrectExternalPath()V

    .line 210
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    array-length v0, v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method tryCorrectExternalPath()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 180
    :try_start_0
    # invokes: Landroid/os/Environment;->getNoEmulatedVolume()Landroid/os/storage/StorageVolume;
    invoke-static {}, Landroid/os/Environment;->access$000()Landroid/os/storage/StorageVolume;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "volumeId":Ljava/lang/String;
    iget-object v2, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    array-length v2, v2

    if-le v2, v3, :cond_0

    iget-object v2, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    array-length v2, v2

    if-le v2, v3, :cond_0

    .line 182
    iget-object v2, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    const/4 v3, 0x1

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/storage/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 183
    iget-object v2, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v3, 0x1

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/storage/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v1    # "volumeId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Environment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error happened while correct the external path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
