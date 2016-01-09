.class public Lcom/android/server/OpBPMUtils;
.super Ljava/lang/Object;
.source "OpBPMUtils.java"


# static fields
.field private static final APP_WIDGET_PATH:Ljava/lang/String; = "/data/data_bpm/appwidgets.xml"

.field private static final BPM_PATH:Ljava/lang/String; = "/data/data_bpm/bpm.xml"

.field private static final BPM_STATUS_PATH:Ljava/lang/String; = "/data/data_bpm/bpm_sts.xml"

.field private static final TAG:Ljava/lang/String; = "OpBPMUtils"

.field private static mOpBPMUtils:Lcom/android/server/OpBPMUtils;


# instance fields
.field private LOCAL_LOGV:Z

.field private mAppWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLimitBgStats:Z

.field private mPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OpBPMUtils;->mOpBPMUtils:Lcom/android/server/OpBPMUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OpBPMUtils;->mPackageList:Ljava/util/List;

    .line 43
    iput-boolean v1, p0, Lcom/android/server/OpBPMUtils;->mLimitBgStats:Z

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OpBPMUtils;->mAppWidgetList:Ljava/util/List;

    .line 49
    return-void
.end method

.method public static getInstance()Lcom/android/server/OpBPMUtils;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/server/OpBPMUtils;->mOpBPMUtils:Lcom/android/server/OpBPMUtils;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/server/OpBPMUtils;

    invoke-direct {v0}, Lcom/android/server/OpBPMUtils;-><init>()V

    sput-object v0, Lcom/android/server/OpBPMUtils;->mOpBPMUtils:Lcom/android/server/OpBPMUtils;

    .line 55
    :cond_0
    sget-object v0, Lcom/android/server/OpBPMUtils;->mOpBPMUtils:Lcom/android/server/OpBPMUtils;

    return-object v0
.end method

.method private loadStateLocked()V
    .locals 6

    .prologue
    .line 141
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data_bpm/bpm.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "settingsFile":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/OpBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 145
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 146
    .local v2, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, v2}, Lcom/android/server/OpBPMUtils;->readStateFromFileLocked(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    if-eqz v2, :cond_0

    .line 150
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-void

    .line 151
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v3, :cond_0

    .line 153
    const-string v3, "OpBPMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close state FileInputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-boolean v3, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v3, :cond_0

    .line 158
    const-string v3, "OpBPMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadStatusLocked()V
    .locals 6

    .prologue
    .line 265
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data_bpm/bpm_sts.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, "settingsFile":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 268
    .local v2, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, v2}, Lcom/android/server/OpBPMUtils;->readStatusFromFile(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    if-eqz v2, :cond_0

    .line 272
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 282
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-void

    .line 273
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v3, :cond_0

    .line 275
    const-string v3, "OpBPMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close state FileInputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 278
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 279
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-boolean v3, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v3, :cond_0

    .line 280
    const-string v3, "OpBPMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readAppWidgetFromFileLocked(Ljava/io/FileInputStream;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .prologue
    .line 520
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 521
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v1, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 525
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 526
    .local v4, "type":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 527
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 528
    .local v3, "tag":Ljava/lang/String;
    const-string v5, "p"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 529
    const/4 v5, 0x0

    const-string v6, "att"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 531
    iget-object v5, p0, Lcom/android/server/OpBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 548
    if-eqz p1, :cond_2

    .line 549
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 554
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :cond_2
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v5, "OpBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 548
    if-eqz p1, :cond_2

    .line 549
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 551
    :catch_1
    move-exception v5

    goto :goto_0

    .line 538
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v5, "OpBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 548
    if-eqz p1, :cond_2

    .line 549
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 551
    :catch_3
    move-exception v5

    goto :goto_0

    .line 540
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v0

    .line 541
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string v5, "OpBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 548
    if-eqz p1, :cond_2

    .line 549
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 551
    :catch_5
    move-exception v5

    goto :goto_0

    .line 542
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v0

    .line 543
    .local v0, "e":Ljava/io/IOException;
    :try_start_8
    const-string v5, "OpBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 548
    if-eqz p1, :cond_2

    .line 549
    :try_start_9
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_0

    .line 551
    :catch_7
    move-exception v5

    goto :goto_0

    .line 544
    .end local v0    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_a
    const-string v5, "OpBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 548
    if-eqz p1, :cond_2

    .line 549
    :try_start_b
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_0

    .line 551
    :catch_9
    move-exception v5

    goto :goto_0

    .line 547
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v5

    .line 548
    if-eqz p1, :cond_3

    .line 549
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 552
    :cond_3
    :goto_1
    throw v5

    .line 551
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :catch_a
    move-exception v5

    goto :goto_0

    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catch_b
    move-exception v6

    goto :goto_1
.end method

.method private readStateFromFileLocked(Ljava/io/FileInputStream;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .prologue
    .line 228
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 229
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v1, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 233
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 234
    .local v4, "type":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 235
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "tag":Ljava/lang/String;
    const-string v5, "p"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 237
    const/4 v5, 0x0

    const-string v6, "att"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 239
    iget-object v5, p0, Lcom/android/server/OpBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 256
    if-eqz p1, :cond_2

    .line 257
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 262
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :cond_2
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v5, "OpBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    if-eqz p1, :cond_2

    .line 257
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 259
    :catch_1
    move-exception v5

    goto :goto_0

    .line 246
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v5, "OpBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 256
    if-eqz p1, :cond_2

    .line 257
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 259
    :catch_3
    move-exception v5

    goto :goto_0

    .line 248
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v0

    .line 249
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string v5, "OpBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 256
    if-eqz p1, :cond_2

    .line 257
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 259
    :catch_5
    move-exception v5

    goto :goto_0

    .line 250
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/IOException;
    :try_start_8
    const-string v5, "OpBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 256
    if-eqz p1, :cond_2

    .line 257
    :try_start_9
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_0

    .line 259
    :catch_7
    move-exception v5

    goto :goto_0

    .line 252
    .end local v0    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_a
    const-string v5, "OpBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 256
    if-eqz p1, :cond_2

    .line 257
    :try_start_b
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_0

    .line 259
    :catch_9
    move-exception v5

    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v5

    .line 256
    if-eqz p1, :cond_3

    .line 257
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 260
    :cond_3
    :goto_1
    throw v5

    .line 259
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :catch_a
    move-exception v5

    goto :goto_0

    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catch_b
    move-exception v6

    goto :goto_1
.end method

.method private readStatusFromFile(Ljava/io/FileInputStream;)V
    .locals 8
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .prologue
    const/4 v7, 0x1

    .line 342
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 343
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v1, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 347
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 348
    .local v4, "type":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 349
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "tag":Ljava/lang/String;
    const-string v5, "p"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 351
    const/4 v5, 0x0

    const-string v6, "att"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "sts":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 353
    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 354
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/OpBPMUtils;->mLimitBgStats:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    .end local v2    # "sts":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_1
    :goto_0
    if-ne v4, v7, :cond_0

    .line 374
    if-eqz p1, :cond_2

    .line 375
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 380
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :cond_2
    :goto_1
    return-void

    .line 356
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "sts":Ljava/lang/String;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "type":I
    :cond_3
    const/4 v5, 0x0

    :try_start_2
    iput-boolean v5, p0, Lcom/android/server/OpBPMUtils;->mLimitBgStats:Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 362
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "sts":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "type":I
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_3
    const-string v5, "OpBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 374
    if-eqz p1, :cond_2

    .line 375
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 377
    :catch_1
    move-exception v5

    goto :goto_1

    .line 364
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v5, "OpBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 374
    if-eqz p1, :cond_2

    .line 375
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 377
    :catch_3
    move-exception v5

    goto :goto_1

    .line 366
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v0

    .line 367
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_7
    const-string v5, "OpBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 374
    if-eqz p1, :cond_2

    .line 375
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 377
    :catch_5
    move-exception v5

    goto :goto_1

    .line 368
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v0

    .line 369
    .local v0, "e":Ljava/io/IOException;
    :try_start_9
    const-string v5, "OpBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 374
    if-eqz p1, :cond_2

    .line 375
    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_1

    .line 377
    :catch_7
    move-exception v5

    goto :goto_1

    .line 370
    .end local v0    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_b
    const-string v5, "OpBPMUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 374
    if-eqz p1, :cond_2

    .line 375
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_1

    .line 377
    :catch_9
    move-exception v5

    goto :goto_1

    .line 373
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v5

    .line 374
    if-eqz p1, :cond_4

    .line 375
    :try_start_d
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 378
    :cond_4
    :goto_2
    throw v5

    .line 377
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :catch_a
    move-exception v5

    goto :goto_1

    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catch_b
    move-exception v6

    goto :goto_2
.end method

.method private saveAppWidgetLocked()V
    .locals 9

    .prologue
    .line 452
    iget-object v5, p0, Lcom/android/server/OpBPMUtils;->mAppWidgetList:Ljava/util/List;

    monitor-enter v5

    .line 453
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data_bpm/appwidgets.xml"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 455
    .local v2, "stream":Ljava/io/FileOutputStream;
    iget-boolean v4, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_0

    .line 456
    const-string v4, "OpBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveAppWidgetLocked start, mAppWidgetList.size() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OpBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 461
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 462
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    :cond_2
    :goto_0
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 473
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/server/OpBPMUtils;->writeAppWidgetToFileLocked(Ljava/io/FileOutputStream;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 478
    if-eqz v3, :cond_6

    .line 480
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v3

    .line 487
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    :try_start_5
    monitor-exit v5

    .line 488
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 487
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 481
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 482
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6
    iget-boolean v4, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_4

    .line 483
    const-string v4, "OpBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    move-object v2, v3

    .line 484
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 474
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 476
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 478
    if-eqz v2, :cond_3

    .line 480
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 481
    :catch_3
    move-exception v0

    .line 482
    .local v0, "e":Ljava/io/IOException;
    :try_start_9
    iget-boolean v4, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_3

    .line 483
    const-string v4, "OpBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 478
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    :goto_3
    if-eqz v2, :cond_5

    .line 480
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 484
    :cond_5
    :goto_4
    :try_start_b
    throw v4

    .line 481
    :catch_4
    move-exception v0

    .line 482
    .restart local v0    # "e":Ljava/io/IOException;
    iget-boolean v6, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v6, :cond_5

    .line 483
    const-string v6, "OpBPMUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close state FileInputStream "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    .line 478
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 474
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :cond_6
    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private saveStateLocked()V
    .locals 8

    .prologue
    .line 163
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data_bpm/bpm.xml"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 165
    .local v2, "stream":Ljava/io/FileOutputStream;
    iget-boolean v4, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_0

    .line 166
    const-string v4, "OpBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveStateLocked start, mPackageList.size() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/OpBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 174
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_2
    :goto_0
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/OpBPMUtils;->writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 187
    if-eqz v3, :cond_6

    .line 189
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v3

    .line 196
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 191
    .restart local v0    # "e":Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_4

    .line 192
    const-string v4, "OpBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close state FileInputStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v2, v3

    .line 193
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 187
    if-eqz v2, :cond_3

    .line 189
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 190
    :catch_3
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_3

    .line 192
    const-string v4, "OpBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close state FileInputStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_5

    .line 189
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 193
    :cond_5
    :goto_4
    throw v4

    .line 190
    :catch_4
    move-exception v0

    .line 191
    .restart local v0    # "e":Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v5, :cond_5

    .line 192
    const-string v5, "OpBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 183
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :cond_6
    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private saveStatusLocked()V
    .locals 8

    .prologue
    .line 285
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data_bpm/bpm_sts.xml"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 288
    .local v2, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 289
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 290
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 294
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :cond_1
    :goto_0
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/OpBPMUtils;->writeStatusToFile(Ljava/io/FileOutputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 307
    if-eqz v3, :cond_5

    .line 309
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v3

    .line 316
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 310
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 311
    .restart local v0    # "e":Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_3

    .line 312
    const-string v4, "OpBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close state FileInputStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v2, v3

    .line 313
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 303
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 305
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 307
    if-eqz v2, :cond_2

    .line 309
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 310
    :catch_3
    move-exception v0

    .line 311
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_2

    .line 312
    const-string v4, "OpBPMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close state FileInputStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 307
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_4

    .line 309
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 313
    :cond_4
    :goto_4
    throw v4

    .line 310
    :catch_4
    move-exception v0

    .line 311
    .restart local v0    # "e":Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v5, :cond_4

    .line 312
    const-string v5, "OpBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 307
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 303
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :cond_5
    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private writeAppWidgetToFileLocked(Ljava/io/FileOutputStream;)Z
    .locals 8
    .param p1, "stream"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v5, 0x1

    .line 493
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 494
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v3, p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 495
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 496
    const/4 v6, 0x0

    const-string v7, "gs"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 498
    iget-object v6, p0, Lcom/android/server/OpBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 499
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 500
    iget-object v6, p0, Lcom/android/server/OpBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 501
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 502
    const/4 v6, 0x0

    const-string v7, "p"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 503
    const/4 v6, 0x0

    const-string v7, "att"

    invoke-interface {v3, v6, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 504
    const/4 v6, 0x0

    const-string v7, "p"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 499
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 508
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    const-string v7, "gs"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 509
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return v5

    .line 511
    :catch_0
    move-exception v1

    .line 512
    .local v1, "e":Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v5, :cond_2

    .line 513
    const-string v5, "OpBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    .locals 8
    .param p1, "stream"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v5, 0x1

    .line 201
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 202
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v3, p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 203
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 204
    const/4 v6, 0x0

    const-string v7, "gs"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    iget-object v6, p0, Lcom/android/server/OpBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 207
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 208
    iget-object v6, p0, Lcom/android/server/OpBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 209
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 210
    const/4 v6, 0x0

    const-string v7, "p"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    const/4 v6, 0x0

    const-string v7, "att"

    invoke-interface {v3, v6, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    const/4 v6, 0x0

    const-string v7, "p"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    const-string v7, "gs"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return v5

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v5, :cond_2

    .line 221
    const-string v5, "OpBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private writeStatusToFile(Ljava/io/FileOutputStream;)Z
    .locals 6
    .param p1, "stream"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v3, 0x1

    .line 320
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 321
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v4, "utf-8"

    invoke-interface {v1, p1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 322
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 323
    const/4 v4, 0x0

    const-string v5, "gs"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    iget-boolean v4, p0, Lcom/android/server/OpBPMUtils;->mLimitBgStats:Z

    if-eqz v4, :cond_0

    const-string v2, "true"

    .line 326
    .local v2, "sts":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    const-string v5, "p"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    const/4 v4, 0x0

    const-string v5, "att"

    invoke-interface {v1, v4, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    const/4 v4, 0x0

    const-string v5, "p"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 330
    const/4 v4, 0x0

    const-string v5, "gs"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 336
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v2    # "sts":Ljava/lang/String;
    :goto_1
    return v3

    .line 325
    .restart local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    const-string v2, "false"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v3, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v3, :cond_1

    .line 335
    const-string v3, "OpBPMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addPkgToAppWidgetList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/android/server/OpBPMUtils;->loadAppWidgetLocked()Ljava/util/List;

    .line 389
    if-nez p1, :cond_0

    .line 390
    const/4 v0, 0x0

    .line 395
    :goto_0
    return v0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/server/OpBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-direct {p0}, Lcom/android/server/OpBPMUtils;->saveAppWidgetLocked()V

    .line 395
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addPkgToTrustList(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/server/OpBPMUtils;->loadStateLocked()V

    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, "isExist":Z
    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v3

    .line 97
    :cond_1
    iget-object v4, p0, Lcom/android/server/OpBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    const/4 v1, 0x1

    .line 104
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_0

    .line 105
    iget-object v3, p0, Lcom/android/server/OpBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-direct {p0}, Lcom/android/server/OpBPMUtils;->saveStateLocked()V

    .line 107
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getLimitBgStats()Z
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/OpBPMUtils;->loadStatusLocked()V

    .line 77
    iget-boolean v0, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "OpBPMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLimitBgStats mLimitBgStats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OpBPMUtils;->mLimitBgStats:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/OpBPMUtils;->mLimitBgStats:Z

    return v0
.end method

.method public getTrustList()Ljava/util/List;
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
    .line 59
    invoke-direct {p0}, Lcom/android/server/OpBPMUtils;->loadStateLocked()V

    .line 60
    iget-object v0, p0, Lcom/android/server/OpBPMUtils;->mPackageList:Ljava/util/List;

    return-object v0
.end method

.method public loadAppWidgetLocked()Ljava/util/List;
    .locals 8
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
    .line 426
    iget-object v5, p0, Lcom/android/server/OpBPMUtils;->mAppWidgetList:Ljava/util/List;

    monitor-enter v5

    .line 427
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data_bpm/appwidgets.xml"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    .local v1, "settingsFile":Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/OpBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    const/4 v2, 0x0

    .line 432
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 433
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/OpBPMUtils;->readAppWidgetFromFileLocked(Ljava/io/FileInputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 438
    if-eqz v3, :cond_0

    .line 440
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 446
    :cond_0
    :goto_0
    :try_start_4
    iget-object v4, p0, Lcom/android/server/OpBPMUtils;->mAppWidgetList:Ljava/util/List;

    monitor-exit v5

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :goto_1
    return-object v4

    .line 441
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_0

    .line 443
    const-string v4, "OpBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "settingsFile":Ljava/io/File;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 434
    .restart local v1    # "settingsFile":Ljava/io/File;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 435
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    iget-boolean v4, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_1

    .line 436
    const-string v4, "OpBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 438
    :cond_1
    if-eqz v2, :cond_2

    .line 440
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 446
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    :try_start_7
    iget-object v4, p0, Lcom/android/server/OpBPMUtils;->mAppWidgetList:Ljava/util/List;

    monitor-exit v5

    goto :goto_1

    .line 441
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 442
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_2

    .line 443
    const-string v4, "OpBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 438
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    :goto_4
    if-eqz v2, :cond_3

    .line 440
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 446
    :cond_3
    :goto_5
    :try_start_9
    iget-object v4, p0, Lcom/android/server/OpBPMUtils;->mAppWidgetList:Ljava/util/List;

    monitor-exit v5

    goto :goto_1

    .line 441
    :catch_3
    move-exception v0

    .line 442
    .restart local v0    # "e":Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v4, :cond_3

    .line 443
    const-string v4, "OpBPMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 438
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 434
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public removePkgFromAppWidgetList(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 399
    invoke-virtual {p0}, Lcom/android/server/OpBPMUtils;->loadAppWidgetLocked()Ljava/util/List;

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "isExist":Z
    const/4 v2, 0x0

    .line 402
    .local v2, "location":I
    iget-object v6, p0, Lcom/android/server/OpBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 404
    .local v1, "listSize":I
    if-nez p1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v4

    .line 408
    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 409
    iget-object v6, p0, Lcom/android/server/OpBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 410
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 411
    const/4 v0, 0x1

    .line 416
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_2
    if-ne v0, v5, :cond_0

    .line 417
    iget-object v4, p0, Lcom/android/server/OpBPMUtils;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 418
    invoke-direct {p0}, Lcom/android/server/OpBPMUtils;->saveAppWidgetLocked()V

    move v4, v5

    .line 419
    goto :goto_0

    .line 408
    .restart local v3    # "pkg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public removePkgFromTrustList(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 114
    invoke-direct {p0}, Lcom/android/server/OpBPMUtils;->loadStateLocked()V

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "isExist":Z
    const/4 v2, 0x0

    .line 117
    .local v2, "location":I
    iget-object v6, p0, Lcom/android/server/OpBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 119
    .local v1, "listSize":I
    if-nez p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v4

    .line 123
    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 124
    iget-object v6, p0, Lcom/android/server/OpBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 125
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 126
    const/4 v0, 0x1

    .line 131
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_2
    if-ne v0, v5, :cond_0

    .line 132
    iget-object v4, p0, Lcom/android/server/OpBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 133
    invoke-direct {p0}, Lcom/android/server/OpBPMUtils;->saveStateLocked()V

    move v4, v5

    .line 134
    goto :goto_0

    .line 123
    .restart local v3    # "pkg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setLimitBgStats(Z)V
    .locals 3
    .param p1, "limitBgStats"    # Z

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "OpBPMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLimitBgStats limitBgStats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/OpBPMUtils;->mLimitBgStats:Z

    .line 86
    invoke-direct {p0}, Lcom/android/server/OpBPMUtils;->saveStatusLocked()V

    .line 87
    return-void
.end method

.method public setTrustList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "trustList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 65
    .local v1, "listNum":I
    iget-boolean v2, p0, Lcom/android/server/OpBPMUtils;->LOCAL_LOGV:Z

    if-eqz v2, :cond_0

    .line 66
    const-string v2, "OpBPMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTrustList begin, listNum : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/android/server/OpBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 69
    iget-object v2, p0, Lcom/android/server/OpBPMUtils;->mPackageList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/android/server/OpBPMUtils;->saveStateLocked()V

    .line 73
    return-void
.end method
