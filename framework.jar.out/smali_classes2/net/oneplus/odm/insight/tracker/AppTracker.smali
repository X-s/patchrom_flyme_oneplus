.class public Lnet/oneplus/odm/insight/tracker/AppTracker;
.super Ljava/lang/Object;
.source "AppTracker.java"


# static fields
.field public static final APP_ID_CUSTOM_APP_EVENT:Ljava/lang/String; = "1000000005"

.field public static final APP_ID_SYSTEM_APP_EVENT:Ljava/lang/String; = "1000000002"

.field public static final APP_ID_THIRDPARTY_APP_EVENT:Ljava/lang/String; = "1000000004"

.field public static final DATA_MESSAGE:Ljava/lang/String; = "message"

.field public static final EVENT_CRASH:Ljava/lang/String; = "crash"

.field public static final EVENT_END_SESSION:Ljava/lang/String; = "stop"

.field public static final EVENT_START_SESSION:Ljava/lang/String; = "start"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lnet/oneplus/odm/insight/tracker/AppTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/insight/tracker/AppTracker;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, "1000000002"

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mAppId:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, "1000000002"

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mAppId:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mAppId:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public endSession()V
    .locals 2

    .prologue
    .line 63
    const-string/jumbo v0, "stop"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 62
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, "eventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 72
    sget-object v4, Lnet/oneplus/odm/insight/tracker/AppTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Context is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 75
    :cond_0
    sget-object v4, Lnet/oneplus/odm/insight/tracker/AppTracker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "App Event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v2, Lnet/oneplus/odm/insight/tracker/TrackData;

    invoke-direct {v2}, Lnet/oneplus/odm/insight/tracker/TrackData;-><init>()V

    .line 78
    .local v2, "data":Lnet/oneplus/odm/insight/tracker/TrackData;
    const-string/jumbo v1, ""

    .line 80
    .local v1, "category":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v4}, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;-><init>(Lnet/oneplus/odm/insight/tracker/TrackData;Landroid/content/Context;)V

    .line 81
    .local v0, "builder":Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;
    if-eqz p2, :cond_1

    .line 82
    invoke-virtual {v0, p1}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->tag(Ljava/lang/String;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->data(Ljava/util/Map;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->build()Lnet/oneplus/odm/insight/tracker/TrackData;

    move-result-object v2

    .line 86
    :goto_0
    if-eqz p2, :cond_2

    .line 87
    const-string/jumbo v4, "1000000005"

    iput-object v4, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mAppId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0    # "builder":Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;
    :goto_1
    sget-object v4, Lnet/oneplus/odm/insight/tracker/AppTracker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\', \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\', \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mAppId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v6, v4, v5}, Landroid/util/Log;->mdm(ILjava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 84
    .restart local v0    # "builder":Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->tag(Ljava/lang/String;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->build()Lnet/oneplus/odm/insight/tracker/TrackData;

    move-result-object v2

    goto :goto_0

    .line 88
    :cond_2
    iget-boolean v4, v0, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->is_system_app:Z

    if-eqz v4, :cond_3

    .line 89
    const-string/jumbo v4, "1000000002"

    iput-object v4, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mAppId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 93
    .end local v0    # "builder":Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;
    :catch_0
    move-exception v3

    .line 94
    .local v3, "re":Ljava/lang/RuntimeException;
    sget-object v4, Lnet/oneplus/odm/insight/tracker/AppTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onEvent RuntimeException: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 91
    .end local v3    # "re":Ljava/lang/RuntimeException;
    .restart local v0    # "builder":Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;
    :cond_3
    :try_start_2
    const-string/jumbo v4, "1000000004"

    iput-object v4, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mAppId:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public startSession()V
    .locals 2

    .prologue
    .line 54
    const-string/jumbo v0, "start"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 53
    return-void
.end method
