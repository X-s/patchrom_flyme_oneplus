.class public Lcom/android/settings_ex/recover/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSettingsDB(Ljava/lang/String;)V
    .locals 3
    .param p0, "dbpath"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v1, Lcom/android/settings_ex/recover/BackupRestoreSrv;

    invoke-direct {v1}, Lcom/android/settings_ex/recover/BackupRestoreSrv;-><init>()V

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/recover/BackupRestoreSrv;->cleardir(Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, "deleteSettingsDBResult":I
    if-gez v0, :cond_0

    .line 56
    const-string v1, "FileUtils"

    const-string v2, "delete settings db fail !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void
.end method

.method public static deleteFileOrFolder(Ljava/io/File;)Z
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 30
    const/4 v5, 0x1

    .line 31
    .local v5, "result":Z
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v5

    .line 49
    :goto_0
    return v6

    .line 34
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 35
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v6

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 37
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 38
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_3

    .line 39
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 40
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lcom/android/settings_ex/recover/FileUtils;->deleteFileOrFolder(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 41
    const/4 v5, 0x0

    .line 39
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 45
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_4

    .line 46
    const/4 v5, 0x0

    .end local v2    # "files":[Ljava/io/File;
    :cond_4
    move v6, v5

    .line 49
    goto :goto_0
.end method
