.class public Lcom/android/server/am/AutostartManager;
.super Ljava/lang/Object;
.source "AutostartManager.java"


# static fields
.field static final DEB:Z = false

.field private static final FILE_BOOT:Ljava/lang/String; = "//data//data//com.oneplus.security//shared_prefs//autostartlist.xml"

.field static final NODE_NAME:Ljava/lang/String; = "string"

.field static final TAG:Ljava/lang/String; = "AutostartManager"


# instance fields
.field private bInitFinish:Z

.field private mFile:Ljava/io/File;

.field private mForbidAutostartPackage:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AutostartManager;->bInitFinish:Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    .line 37
    invoke-virtual {p0}, Lcom/android/server/am/AutostartManager;->init()V

    .line 38
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    if-nez v1, :cond_1

    .line 123
    :cond_0
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public filterReceivers(Ljava/util/List;)V
    .locals 5
    .param p1, "receivers"    # Ljava/util/List;

    .prologue
    .line 75
    const/4 v2, 0x0

    .line 76
    .local v2, "iIndex":I
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 77
    .local v0, "NT":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 78
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 79
    .local v3, "temp":Ljava/lang/Object;
    instance-of v4, v3, Landroid/content/pm/ResolveInfo;

    if-nez v4, :cond_1

    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 82
    goto :goto_0

    .line 76
    .end local v0    # "NT":I
    .end local v3    # "temp":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "NT":I
    .restart local v3    # "temp":Ljava/lang/Object;
    :cond_1
    move-object v1, v3

    .line 84
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 86
    .local v1, "curt1":Landroid/content/pm/ResolveInfo;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/am/AutostartManager;->isContain(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 87
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 88
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 92
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "curt1":Landroid/content/pm/ResolveInfo;
    .end local v3    # "temp":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 127
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "//data//data//com.oneplus.security//shared_prefs//autostartlist.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/AutostartManager;->mFile:Ljava/io/File;

    .line 128
    iget-object v1, p0, Lcom/android/server/am/AutostartManager;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    const-string v1, "AutostartManager"

    const-string v2, "file is not exist [//data//data//com.oneplus.security//shared_prefs//autostartlist.xml]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/AutostartManager;->mFile:Ljava/io/File;

    .line 131
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/AutostartManager;->bInitFinish:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AutostartManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init file err, err is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-boolean v4, p0, Lcom/android/server/am/AutostartManager;->bInitFinish:Z

    .line 137
    iput-object v5, p0, Lcom/android/server/am/AutostartManager;->mFile:Ljava/io/File;

    goto :goto_0

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "AutostartManager"

    const-string v2, "init file success."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/AutostartManager;->bInitFinish:Z

    goto :goto_0
.end method

.method public isContain(Ljava/lang/String;)Z
    .locals 3
    .param p1, "p_strPackageName"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    .line 100
    :cond_1
    const/4 v0, 0x0

    .line 101
    .local v0, "bRes":Z
    iget-object v2, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    monitor-enter v2

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 103
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readData()V
    .locals 12

    .prologue
    .line 44
    iget-object v8, p0, Lcom/android/server/am/AutostartManager;->mFile:Ljava/io/File;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/server/am/AutostartManager;->bInitFinish:Z

    if-nez v8, :cond_1

    .line 45
    :cond_0
    const-string v8, "AutostartManager"

    const-string v9, "file is null or don\'t init !"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v9, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    monitor-enter v9

    .line 49
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 51
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 52
    .local v5, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v0, 0x0

    .line 53
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v1, 0x0

    .line 55
    .local v1, "doc":Lorg/w3c/dom/Document;
    :try_start_1
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 56
    iget-object v8, p0, Lcom/android/server/am/AutostartManager;->mFile:Ljava/io/File;

    invoke-virtual {v0, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 67
    :try_start_2
    const-string v8, "string"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 68
    .local v7, "nl":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 69
    iget-object v8, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 57
    .end local v6    # "i":I
    .end local v7    # "nl":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v2

    .line 58
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v8, "AutostartManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parse error ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    monitor-exit v9

    goto :goto_0

    .line 71
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 60
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_1
    move-exception v3

    .line 61
    .local v3, "e1":Lorg/xml/sax/SAXException;
    :try_start_3
    const-string v8, "AutostartManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parse error ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    monitor-exit v9

    goto/16 :goto_0

    .line 63
    .end local v3    # "e1":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v4

    .line 64
    .local v4, "e2":Ljava/io/IOException;
    const-string v8, "AutostartManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parse error ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    monitor-exit v9

    goto/16 :goto_0

    .line 71
    .end local v4    # "e2":Ljava/io/IOException;
    .restart local v6    # "i":I
    .restart local v7    # "nl":Lorg/w3c/dom/NodeList;
    :cond_2
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public removeElement(Ljava/lang/String;)V
    .locals 2
    .param p1, "p_strPackageName"    # Ljava/lang/String;

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 114
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
