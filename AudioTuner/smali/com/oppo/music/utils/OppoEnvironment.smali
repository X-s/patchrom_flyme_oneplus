.class public Lcom/oppo/music/utils/OppoEnvironment;
.super Landroid/os/Environment;
.source "OppoEnvironment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoEnvironment"

.field public static final VISTOR_MODE_STATE:Ljava/lang/String; = "oppo_vistor_mode_state"

.field private static defaultStorage:Ljava/io/File;

.field private static externalSdDir:Ljava/lang/String;

.field private static internalSdDir:Ljava/lang/String;

.field private static mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/oppo/music/utils/OppoEnvironment;->defaultStorage:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Environment;-><init>()V

    return-void
.end method

.method public static getExternalSdDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/oppo/music/utils/OppoEnvironment;->update(Landroid/content/Context;)V

    .line 62
    sget-object v0, Lcom/oppo/music/utils/OppoEnvironment;->externalSdDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalSdState(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-static {p0}, Lcom/oppo/music/utils/OppoEnvironment;->update(Landroid/content/Context;)V

    .line 72
    sget-object v0, Lcom/oppo/music/utils/OppoEnvironment;->externalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oppo/music/utils/OppoEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v1, Lcom/oppo/music/utils/OppoEnvironment;->externalSdDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInternalSdDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/oppo/music/utils/OppoEnvironment;->update(Landroid/content/Context;)V

    .line 56
    sget-object v0, Lcom/oppo/music/utils/OppoEnvironment;->internalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oppo/music/utils/OppoEnvironment;->defaultStorage:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oppo/music/utils/OppoEnvironment;->internalSdDir:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getInternalSdState(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/oppo/music/utils/OppoEnvironment;->update(Landroid/content/Context;)V

    .line 67
    sget-object v0, Lcom/oppo/music/utils/OppoEnvironment;->internalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oppo/music/utils/OppoEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v1, Lcom/oppo/music/utils/OppoEnvironment;->internalSdDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isExternalSDRemoved(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/oppo/music/utils/OppoEnvironment;->update(Landroid/content/Context;)V

    .line 87
    sget-object v0, Lcom/oppo/music/utils/OppoEnvironment;->externalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    .line 90
    :cond_0
    const-string v0, "OppoEnvironment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the state of volume is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oppo/music/utils/OppoEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v3, Lcom/oppo/music/utils/OppoEnvironment;->externalSdDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v0, "removed"

    sget-object v1, Lcom/oppo/music/utils/OppoEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v2, Lcom/oppo/music/utils/OppoEnvironment;->externalSdDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isExternalSdMounted(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-static {p0}, Lcom/oppo/music/utils/OppoEnvironment;->getExternalSdState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "res":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isInternalSdMounted(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/oppo/music/utils/OppoEnvironment;->getInternalSdState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "res":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isInternalSdStorage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p0}, Lcom/oppo/music/utils/OppoEnvironment;->update(Landroid/content/Context;)V

    .line 98
    const-string v0, "OppoEnvironment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInternalSdStorage =:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oppo/music/utils/OppoEnvironment;->internalSdDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v0, Lcom/oppo/music/utils/OppoEnvironment;->internalSdDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 100
    sget-object v0, Lcom/oppo/music/utils/OppoEnvironment;->internalSdDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVisitorModeOn(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oppo_vistor_mode_state"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 111
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 107
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    move v1, v2

    .line 111
    goto :goto_0
.end method

.method public static numberOfStorages(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 116
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    sput-object v1, Lcom/oppo/music/utils/OppoEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 117
    sget-object v1, Lcom/oppo/music/utils/OppoEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    move v1, v2

    .line 125
    :goto_0
    return v1

    .line 120
    :cond_0
    sget-object v1, Lcom/oppo/music/utils/OppoEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 122
    .local v0, "volumes":[Landroid/os/storage/StorageVolume;
    if-nez v0, :cond_1

    move v1, v2

    .line 123
    goto :goto_0

    .line 125
    :cond_1
    array-length v1, v0

    goto :goto_0
.end method

.method private static update(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const-string v2, "storage"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    sput-object v2, Lcom/oppo/music/utils/OppoEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 35
    sget-object v2, Lcom/oppo/music/utils/OppoEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v2, :cond_1

    .line 52
    :cond_0
    return-void

    .line 38
    :cond_1
    sget-object v2, Lcom/oppo/music/utils/OppoEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 40
    .local v1, "volumes":[Landroid/os/storage/StorageVolume;
    const-string v2, "OppoEnvironment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the length of volumes[] is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,expected is 1 or 2 !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    if-eqz v1, :cond_0

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 45
    const-string v2, "OppoEnvironment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volumes["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oppo/music/utils/OppoEnvironment;->externalSdDir:Ljava/lang/String;

    .line 44
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_2
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oppo/music/utils/OppoEnvironment;->internalSdDir:Ljava/lang/String;

    goto :goto_1
.end method
