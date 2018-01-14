.class public Lnet/oneplus/odm/insight/tracker/OSTracker;
.super Lnet/oneplus/odm/insight/tracker/AbstractTracker;
.source "OSTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/insight/tracker/OSTracker;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/tracker/AbstractTracker;-><init>(Landroid/content/Context;)V

    .line 26
    const-string/jumbo v0, "1000000003"

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/OSTracker;->mAppId:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/tracker/AbstractTracker;-><init>(Landroid/content/Context;)V

    .line 26
    const-string/jumbo v0, "1000000003"

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/OSTracker;->mAppId:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lnet/oneplus/odm/insight/tracker/OSTracker;->mAppId:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
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
    .line 43
    .local p2, "eventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lnet/oneplus/odm/insight/tracker/OSTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OS Event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v1, Lnet/oneplus/odm/insight/tracker/TrackData;

    invoke-direct {v1}, Lnet/oneplus/odm/insight/tracker/TrackData;-><init>()V

    .line 45
    .local v1, "data":Lnet/oneplus/odm/insight/tracker/TrackData;
    iget-object v3, p0, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 46
    sget-object v3, Lnet/oneplus/odm/insight/tracker/OSTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void

    .line 49
    :cond_0
    new-instance v0, Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;-><init>(Lnet/oneplus/odm/insight/tracker/TrackData;Landroid/content/Context;)V

    .line 50
    .local v0, "builder":Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;
    if-eqz p2, :cond_1

    .line 51
    invoke-virtual {v0, p1}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->tag(Ljava/lang/String;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->data(Ljava/util/Map;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->build()Lnet/oneplus/odm/insight/tracker/TrackData;

    move-result-object v1

    .line 56
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "OP_payload"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v3, "OP_payload_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    const-string/jumbo v3, "OP_payload_category"

    iget-object v4, p0, Lnet/oneplus/odm/insight/tracker/OSTracker;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, v2}, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->insertValues(Landroid/content/ContentValues;)V

    .line 42
    return-void

    .line 53
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {v0, p1}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->tag(Ljava/lang/String;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->build()Lnet/oneplus/odm/insight/tracker/TrackData;

    move-result-object v1

    goto :goto_0
.end method
