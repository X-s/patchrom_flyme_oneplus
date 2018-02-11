.class public Lcom/oneplus/settings/OPOnlineConfigManager;
.super Ljava/lang/Object;
.source "OPOnlineConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPOnlineConfigManager$BackgroundConfigUpdater;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static localMultiAppWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lock:Ljava/lang/Object;

.field private static final multiAppWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static onlineConfigManager:Lcom/oneplus/settings/OPOnlineConfigManager;


# instance fields
.field private CONFIG_NAME:Ljava/lang/String;

.field final MSG_GET_ONLINECONFIG:I

.field private OP_MULTIAPP_WHITE_LIST:Ljava/lang/String;

.field private mBackgroundConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/OPOnlineConfigManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->CONFIG_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/settings/OPOnlineConfigManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/OPOnlineConfigManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPOnlineConfigManager;->parseConfigFromJson(Lorg/json/JSONArray;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->onlineConfigManager:Lcom/oneplus/settings/OPOnlineConfigManager;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->lock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v1, "ROM_APP_OPSettings"

    iput-object v1, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->CONFIG_NAME:Ljava/lang/String;

    .line 39
    const-string/jumbo v1, "op_multiapp_white_list"

    iput-object v1, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->OP_MULTIAPP_WHITE_LIST:Ljava/lang/String;

    .line 40
    const/4 v1, 0x1

    iput v1, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->MSG_GET_ONLINECONFIG:I

    .line 43
    iput-object p1, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mContext:Landroid/content/Context;

    .line 44
    new-instance v1, Landroid/os/HandlerThread;

    sget-object v2, Lcom/oneplus/settings/OPOnlineConfigManager;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 45
    iget-object v1, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 46
    new-instance v1, Lcom/oneplus/settings/OPOnlineConfigManager$1;

    iget-object v2, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/settings/OPOnlineConfigManager$1;-><init>(Lcom/oneplus/settings/OPOnlineConfigManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mHandler:Landroid/os/Handler;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "whiteApps":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->localMultiAppWhiteList:Ljava/util/List;

    .line 42
    return-void
.end method

.method public static getInstence(Landroid/content/Context;)Lcom/oneplus/settings/OPOnlineConfigManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    sget-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    sget-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->onlineConfigManager:Lcom/oneplus/settings/OPOnlineConfigManager;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPOnlineConfigManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->onlineConfigManager:Lcom/oneplus/settings/OPOnlineConfigManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 85
    sget-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->onlineConfigManager:Lcom/oneplus/settings/OPOnlineConfigManager;

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMultiAppWhiteList()Ljava/util/List;
    .locals 2
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
    .line 70
    sget-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    monitor-enter v1

    .line 71
    :try_start_0
    sget-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :cond_0
    :try_start_1
    sget-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->localMultiAppWhiteList:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private parseConfigFromJson(Lorg/json/JSONArray;)V
    .locals 12
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    const/4 v10, 0x0

    .line 110
    if-nez p1, :cond_0

    .line 111
    iget-object v9, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->OP_MULTIAPP_WHITE_LIST:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/oneplus/settings/utils/OPPrefUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "oldJson":Ljava/lang/String;
    sget-object v9, Lcom/oneplus/settings/OPOnlineConfigManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "settings parseConfigFromJson jsonArray is null,use old json:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-eqz v7, :cond_1

    .line 115
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1    # "jsonArray":Lorg/json/JSONArray;
    .local v5, "jsonArray":Lorg/json/JSONArray;
    move-object p1, v5

    .line 125
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "oldJson":Ljava/lang/String;
    .restart local p1    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    sget-object v9, Lcom/oneplus/settings/OPOnlineConfigManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "settings parseConfigFromJson jsonArray="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_4

    .line 128
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 129
    .local v4, "json":Lorg/json/JSONObject;
    const-string/jumbo v9, "name"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->OP_MULTIAPP_WHITE_LIST:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 130
    const-string/jumbo v9, "value"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 131
    .local v8, "whiteNumberListJsonArray":Lorg/json/JSONArray;
    iget-object v9, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->OP_MULTIAPP_WHITE_LIST:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oneplus/settings/utils/OPPrefUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v10, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    monitor-enter v10
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 133
    :try_start_2
    sget-object v9, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 134
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 135
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "number":Ljava/lang/String;
    sget-object v9, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 116
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v6    # "number":Ljava/lang/String;
    .end local v8    # "whiteNumberListJsonArray":Lorg/json/JSONArray;
    .restart local v7    # "oldJson":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Lorg/json/JSONException;
    sget-object v9, Lcom/oneplus/settings/OPOnlineConfigManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "settings parseConfigFromJson JSONException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 121
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    sget-object v9, Lcom/oneplus/settings/OPOnlineConfigManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "settings parseConfigFromJson jsonArray is null, return"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .end local v7    # "oldJson":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "index":I
    .restart local v4    # "json":Lorg/json/JSONObject;
    .restart local v8    # "whiteNumberListJsonArray":Lorg/json/JSONArray;
    :cond_2
    :try_start_3
    monitor-exit v10

    .line 127
    .end local v2    # "i":I
    .end local v8    # "whiteNumberListJsonArray":Lorg/json/JSONArray;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 132
    .restart local v8    # "whiteNumberListJsonArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 143
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v8    # "whiteNumberListJsonArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v1

    .line 144
    .restart local v1    # "e":Lorg/json/JSONException;
    sget-object v9, Lcom/oneplus/settings/OPOnlineConfigManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "settings parseConfigFromJson JSONException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_4
    :goto_3
    return-void

    .line 145
    :catch_2
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/oneplus/settings/OPOnlineConfigManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "settings parseConfigFromJson Exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public init()V
    .locals 5

    .prologue
    .line 92
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/settings/OPOnlineConfigManager$BackgroundConfigUpdater;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/OPOnlineConfigManager$BackgroundConfigUpdater;-><init>(Lcom/oneplus/settings/OPOnlineConfigManager;)V

    iget-object v4, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mBackgroundConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mBackgroundConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 91
    return-void
.end method
