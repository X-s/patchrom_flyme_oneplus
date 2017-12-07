.class public Lcom/android/server/am/OnePlusPerfManager;
.super Ljava/lang/Object;
.source "OnePlusPerfManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusPerfManager$MyConfigUpdater;,
        Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    }
.end annotation


# static fields
.field private static final CONFIG_NAME:Ljava/lang/String; = "OPPerf"

.field public static DEBUG:Z = false

.field public static ENABLE:Z = false

.field private static INSTANCE:Lcom/android/server/am/OnePlusPerfManager; = null

.field private static final OPPERF_FILE:Ljava/lang/String; = "/system/etc/opperf.xml"

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.opperf.debug"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.opperf.enable"

.field public static final TAG:Ljava/lang/String; = "OPPerf"

.field private static final XML_ATTR_NAME:Ljava/lang/String; = "name"

.field private static final XML_ATTR_PERFLOCK:Ljava/lang/String; = "perflock"

.field private static final XML_ATTR_SWITCH:Ljava/lang/String; = "switch"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_NAMESPACE:Ljava/lang/String; = ""

.field private static final XML_TAG_PERF:Ljava/lang/String; = "perf"

.field private static final XML_TAG_PKG:Ljava/lang/String; = "pkg"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPerfManager$PerfInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/am/OnePlusPerfManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPerfManager;->resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    .line 183
    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    .line 184
    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mHandler:Landroid/os/Handler;

    .line 92
    const-string/jumbo v0, "persist.sys.opperf.enable"

    sget-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    .line 93
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    const-string/jumbo v0, "persist.sys.opperf.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    .line 96
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->readXml()I

    .line 91
    return-void
.end method

.method private forceUpdateOnlineConfigImmediately()V
    .locals 3

    .prologue
    .line 205
    sget-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "forceUpdateOnlineConfigImmediately"

    invoke-static {v1}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 206
    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "OPPerf"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 207
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusPerfManager;->resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V

    .line 204
    return-void
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusPerfManager;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/server/am/OnePlusPerfManager;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusPerfManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    .line 88
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    return-object v0
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 157
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPPerf"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    return-void
.end method

.method private readXml()I
    .locals 15

    .prologue
    .line 117
    sget-boolean v12, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string/jumbo v12, "# readXml"

    invoke-static {v12}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 118
    :cond_0
    const/4 v11, 0x0

    .line 119
    .local v11, "ret":I
    new-instance v3, Ljava/io/File;

    const-string/jumbo v12, "/system/etc/opperf.xml"

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 121
    sget-boolean v12, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v12, :cond_1

    const-string/jumbo v12, "# readXml # file not exists"

    invoke-static {v12}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 122
    :cond_1
    const/4 v12, -0x1

    return v12

    .line 124
    :cond_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 125
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v0, 0x0

    .line 126
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v1, 0x0

    .line 128
    .local v1, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 129
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 131
    .local v1, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v12, "pkg"

    invoke-interface {v1, v12}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 132
    .local v6, "nl":Lorg/w3c/dom/NodeList;
    if-nez v6, :cond_3

    .line 133
    const-string/jumbo v12, "OPPerf"

    const-string/jumbo v13, "# readXml # error # nl = null"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v12, -0x2

    return v12

    .line 136
    :cond_3
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v5, v12, :cond_5

    .line 137
    invoke-interface {v6, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 138
    .local v7, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v12, "name"

    invoke-interface {v7, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 139
    .local v10, "pkgName":Ljava/lang/String;
    const-string/jumbo v12, "perflock"

    invoke-interface {v7, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 141
    .local v9, "perfLockStr":Ljava/lang/String;
    sget-boolean v12, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v12, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " # perflock "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 142
    :cond_4
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 143
    .local v8, "perfLock":I
    iget-object v12, p0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    new-instance v13, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;

    invoke-direct {v13, v10, v8}, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v12, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    add-int/lit8 v11, v11, 0x1

    .line 136
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "i":I
    .end local v6    # "nl":Lorg/w3c/dom/NodeList;
    .end local v7    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "perfLock":I
    .end local v9    # "perfLockStr":Ljava/lang/String;
    .end local v10    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "OPPerf"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "# readXml # parse error ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    const/4 v12, -0x3

    return v12

    .line 153
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "i":I
    .restart local v6    # "nl":Lorg/w3c/dom/NodeList;
    :cond_5
    return v11
.end method

.method private resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 14
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 211
    sget-boolean v10, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "resolvePerfConfigFromJSON "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 212
    :cond_0
    if-nez p1, :cond_1

    .line 213
    return-void

    .line 216
    :cond_1
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_6

    .line 217
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 218
    .local v4, "json":Lorg/json/JSONObject;
    const-string/jumbo v10, "name"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "PkgMap"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 219
    const-string/jumbo v10, "value"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 220
    .local v7, "pkgInfoJsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_5

    .line 221
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 222
    .local v8, "pkgInfoJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 223
    .local v9, "pkgName":Ljava/lang/String;
    const-string/jumbo v10, "perflock"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, "perflock":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 225
    if-eqz v9, :cond_2

    .line 226
    :try_start_1
    iget-object v10, p0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;

    .line 227
    .local v6, "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    if-eqz v6, :cond_4

    .line 228
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v6, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    .line 233
    .end local v6    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    :cond_2
    :goto_2
    sget-boolean v10, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "resolvePerfConfigFromJSON # "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    .restart local v6    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    :cond_4
    :try_start_3
    iget-object v10, p0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    new-instance v12, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v12, v9, v13}, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 224
    .end local v6    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    :catchall_0
    move-exception v10

    :try_start_4
    monitor-exit v11

    throw v10
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 239
    .end local v2    # "i":I
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "perflock":Ljava/lang/String;
    .end local v7    # "pkgInfoJsonArray":Lorg/json/JSONArray;
    .end local v8    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v9    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v10, "OPPerf"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[OnlineConfig] OPPerf JSONException:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_3
    return-void

    .line 216
    .restart local v4    # "json":Lorg/json/JSONObject;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 238
    .end local v4    # "json":Lorg/json/JSONObject;
    :cond_6
    :try_start_5
    const-string/jumbo v10, "OPPerf"

    const-string/jumbo v11, "[OnlineConfig] OPPerf updated complete"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 241
    :catch_1
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "OPPerf"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[OnlineConfig] OPPerf Exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public getPkgPerfLock(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 100
    sget-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    if-nez v1, :cond_0

    return v2

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;

    .line 102
    .local v0, "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    if-eqz v0, :cond_1

    .line 103
    iget v1, v0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    return v1

    .line 105
    :cond_1
    return v2
.end method

.method public initOnlineConfig(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 194
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "initOnlineConfig"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 195
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    if-nez v0, :cond_1

    return-void

    .line 196
    :cond_1
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    .line 197
    iput-object p2, p0, Lcom/android/server/am/OnePlusPerfManager;->mHandler:Landroid/os/Handler;

    .line 198
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/OnePlusPerfManager$MyConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusPerfManager$MyConfigUpdater;-><init>(Lcom/android/server/am/OnePlusPerfManager;)V

    const-string/jumbo v4, "OPPerf"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 199
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 201
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->forceUpdateOnlineConfigImmediately()V

    .line 193
    return-void
.end method
