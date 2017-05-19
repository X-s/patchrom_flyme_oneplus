.class public Lcom/android/server/am/OnePlusAppStartupManagerUtils;
.super Ljava/lang/Object;
.source "OnePlusAppStartupManagerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusAppStartupManagerUtils$FileObserverPolicy;
    }
.end annotation


# static fields
.field private static final ACTION_NAME:Ljava/lang/String; = "action"

.field private static final ACTIVITY_NAME:Ljava/lang/String; = "activity"

.field private static final BLACKGUARD_NAME:Ljava/lang/String; = "blackguard"

.field private static final ONEPLUS_STARTUP_MANAGER_FILE_PATH:Ljava/lang/String; = "/data/system/startup_manager.xml"

.field private static final ONEPLUS_SYSTEM_MANAGER_FILE_PATH:Ljava/lang/String; = "/system/bpm/startup_manager.xml"

.field private static final PROVIDER_NAME:Ljava/lang/String; = "provider"

.field private static final RECEIVER_NAME:Ljava/lang/String; = "receiver"

.field private static final SEVICECPN_NAME:Ljava/lang/String; = "sevicecpn"

.field private static final TAG:Ljava/lang/String;

.field private static mAsmUtils:Lcom/android/server/am/OnePlusAppStartupManagerUtils;


# instance fields
.field private DEBUG_DETAIL:Z

.field DEBUG_SWITCH:Z

.field mActionBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mActivityBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBlackguardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mProviderBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReceiverBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSeviceCpnBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartupManagerFileObserver:Lcom/android/server/am/OnePlusAppStartupManagerUtils$FileObserverPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mAsmUtils:Lcom/android/server/am/OnePlusAppStartupManagerUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-boolean v0, Lcom/android/server/am/OnePlusAppStartupManager;->DEBUG_DETAIL:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->DEBUG_DETAIL:Z

    .line 47
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->DEBUG_DETAIL:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->DEBUG_SWITCH:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mStartupManagerFileObserver:Lcom/android/server/am/OnePlusAppStartupManagerUtils$FileObserverPolicy;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mSeviceCpnBlacklist:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mReceiverBlackList:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mProviderBlackList:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mActivityBlackList:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mActionBlackList:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mBlackguardList:Ljava/util/List;

    .line 69
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->initDir()V

    .line 70
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->initFileObserver()V

    .line 71
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->readStartupManagerFile()V

    .line 72
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "fromFile"    # Ljava/lang/String;
    .param p2, "toFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    sget-object v2, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile():fromFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "sourceFile":Ljava/io/File;
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/am/OnePlusAppStartupManagerUtils;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mAsmUtils:Lcom/android/server/am/OnePlusAppStartupManagerUtils;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mAsmUtils:Lcom/android/server/am/OnePlusAppStartupManagerUtils;

    .line 78
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mAsmUtils:Lcom/android/server/am/OnePlusAppStartupManagerUtils;

    return-object v0
.end method

.method private initDir()V
    .locals 5

    .prologue
    .line 82
    sget-object v2, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v3, "initDir start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/bpm/startup_manager.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 88
    :cond_0
    :try_start_0
    const-string v2, "/system/bpm/startup_manager.xml"

    const-string v3, "/data/system/startup_manager.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FO]initBPMConfigFiles(): failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initFileObserver()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils$FileObserverPolicy;

    const-string v1, "/data/system/startup_manager.xml"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusAppStartupManagerUtils$FileObserverPolicy;-><init>(Lcom/android/server/am/OnePlusAppStartupManagerUtils;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mStartupManagerFileObserver:Lcom/android/server/am/OnePlusAppStartupManagerUtils$FileObserverPolicy;

    .line 106
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mStartupManagerFileObserver:Lcom/android/server/am/OnePlusAppStartupManagerUtils$FileObserverPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppStartupManagerUtils$FileObserverPolicy;->startWatching()V

    .line 107
    return-void
.end method

.method private readFromFileLocked(Ljava/io/File;)V
    .locals 17
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 141
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->DEBUG_SWITCH:Z

    if-eqz v13, :cond_0

    .line 142
    sget-object v13, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v14, "readFromFileLocked start"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 147
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mReceiverBlackList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mReceiverBlackList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 150
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mProviderBlackList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 151
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mProviderBlackList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 153
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mActivityBlackList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 154
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mActivityBlackList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 156
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mActionBlackList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    .line 157
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mActionBlackList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 160
    :cond_5
    const/4 v9, 0x0

    .line 162
    .local v9, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .local v10, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 165
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v13, 0x0

    invoke-interface {v5, v10, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 169
    :cond_6
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .line 170
    .local v12, "type":I
    const/4 v13, 0x2

    if-ne v12, v13, :cond_8

    .line 171
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 172
    .local v11, "tagName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->DEBUG_SWITCH:Z

    if-eqz v13, :cond_7

    .line 173
    sget-object v13, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " readFromFileLocked tagName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_7
    const-string v13, "sevicecpn"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 177
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, "sevicecpn":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 179
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->DEBUG_SWITCH:Z

    if-eqz v13, :cond_8

    .line 181
    sget-object v13, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " readFromFileLocked sevicecpn = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 226
    .end local v8    # "sevicecpn":Ljava/lang/String;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_8
    :goto_0
    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 239
    if-eqz v10, :cond_9

    .line 240
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    :cond_9
    move-object v9, v10

    .line 246
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v12    # "type":I
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :cond_a
    :goto_1
    return-void

    .line 184
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_b
    :try_start_3
    const-string v13, "receiver"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 185
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, "receiver":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mReceiverBlackList:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->DEBUG_SWITCH:Z

    if-eqz v13, :cond_8

    .line 189
    sget-object v13, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " readFromFileLocked receiver = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 227
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "receiver":Ljava/lang/String;
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_0
    move-exception v4

    move-object v9, v10

    .line 228
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/lang/NullPointerException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    sget-object v13, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v14, "failed parsing "

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 239
    if-eqz v9, :cond_a

    .line 240
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 242
    :catch_1
    move-exception v4

    .line 243
    .local v4, "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to close state FileInputStream "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 192
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_c
    :try_start_6
    const-string v13, "provider"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 193
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, "provider":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 195
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mProviderBlackList:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->DEBUG_DETAIL:Z

    if-eqz v13, :cond_8

    .line 197
    sget-object v13, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " readFromFileLocked provider = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    .line 229
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "provider":Ljava/lang/String;
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_2
    move-exception v4

    move-object v9, v10

    .line 230
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_3
    :try_start_7
    sget-object v13, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v14, "failed parsing "

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 239
    if-eqz v9, :cond_a

    .line 240
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    .line 242
    :catch_3
    move-exception v4

    .line 243
    .local v4, "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to close state FileInputStream "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 200
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_d
    :try_start_9
    const-string v13, "activity"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 201
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "activity":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mActivityBlackList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->DEBUG_SWITCH:Z

    if-eqz v13, :cond_8

    .line 205
    sget-object v13, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " readFromFileLocked activity = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 231
    .end local v2    # "activity":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_4
    move-exception v4

    move-object v9, v10

    .line 232
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_4
    :try_start_a
    sget-object v13, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v14, "failed parsing "

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 239
    if-eqz v9, :cond_a

    .line 240
    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_1

    .line 242
    :catch_5
    move-exception v4

    .line 243
    .local v4, "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to close state FileInputStream "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 208
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_e
    :try_start_c
    const-string v13, "action"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 209
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "action":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mActionBlackList:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->DEBUG_SWITCH:Z

    if-eqz v13, :cond_8

    .line 213
    sget-object v13, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " readFromFileLocked action = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_0

    .line 233
    .end local v1    # "action":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_6
    move-exception v4

    move-object v9, v10

    .line 234
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_5
    :try_start_d
    sget-object v13, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v14, "failed IOException "

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 239
    if-eqz v9, :cond_a

    .line 240
    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_1

    .line 242
    :catch_7
    move-exception v4

    .line 243
    sget-object v13, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to close state FileInputStream "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 216
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_f
    :try_start_f
    const-string v13, "blackguard"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 217
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "blackguard":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mBlackguardList:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->DEBUG_SWITCH:Z

    if-eqz v13, :cond_8

    .line 221
    sget-object v13, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " readFromFileLocked blackguard = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_0

    .line 235
    .end local v3    # "blackguard":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_8
    move-exception v4

    move-object v9, v10

    .line 236
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_6
    :try_start_10
    sget-object v13, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v14, "failed parsing "

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 239
    if-eqz v9, :cond_a

    .line 240
    :try_start_11
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto/16 :goto_1

    .line 242
    :catch_9
    move-exception v4

    .line 243
    .local v4, "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to close state FileInputStream "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 242
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "type":I
    :catch_a
    move-exception v4

    .line 243
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to close state FileInputStream "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 245
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 238
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catchall_0
    move-exception v13

    .line 239
    :goto_7
    if-eqz v9, :cond_10

    .line 240
    :try_start_12
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 244
    :cond_10
    :goto_8
    throw v13

    .line 242
    :catch_b
    move-exception v4

    .line 243
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v14, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to close state FileInputStream "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 238
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v13

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 235
    :catch_c
    move-exception v4

    goto :goto_6

    .line 233
    :catch_d
    move-exception v4

    goto/16 :goto_5

    .line 231
    :catch_e
    move-exception v4

    goto/16 :goto_4

    .line 229
    :catch_f
    move-exception v4

    goto/16 :goto_3

    .line 227
    :catch_10
    move-exception v4

    goto/16 :goto_2
.end method


# virtual methods
.method public getActionBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mActionBlackList:Ljava/util/List;

    return-object v0
.end method

.method public getActivityBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mActivityBlackList:Ljava/util/List;

    return-object v0
.end method

.method public getBlackguardList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mBlackguardList:Ljava/util/List;

    return-object v0
.end method

.method public getProviderBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mProviderBlackList:Ljava/util/List;

    return-object v0
.end method

.method public getReceiverBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mReceiverBlackList:Ljava/util/List;

    return-object v0
.end method

.method public getSeviceCpnBlacklist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->mSeviceCpnBlacklist:Ljava/util/List;

    return-object v0
.end method

.method public readStartupManagerFile()V
    .locals 3

    .prologue
    .line 134
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_0

    .line 135
    sget-object v1, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v2, "readFile start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/startup_manager.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "startupManagerFile":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->readFromFileLocked(Ljava/io/File;)V

    .line 138
    return-void
.end method

.method public setDynamicDebugSwitch()V
    .locals 2

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->DEBUG_DETAIL:Z

    invoke-static {}, Lcom/android/server/am/OnePlusAppStartupManager;->getInstance()Lcom/android/server/am/OnePlusAppStartupManager;

    sget-boolean v1, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->DEBUG_SWITCH:Z

    .line 273
    return-void
.end method
