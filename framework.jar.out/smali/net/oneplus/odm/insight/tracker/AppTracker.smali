.class public Lnet/oneplus/odm/insight/tracker/AppTracker;
.super Lnet/oneplus/odm/insight/tracker/AbstractTracker;
.source "AppTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lnet/oneplus/odm/insight/tracker/AppTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/insight/tracker/AppTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/tracker/AbstractTracker;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public endSession()V
    .locals 2

    .prologue
    .line 42
    const-string/jumbo v0, "stop"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    return-void
.end method

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
    .line 50
    .local p2, "eventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lnet/oneplus/odm/insight/tracker/AppTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App Event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v3, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 54
    sget-object v3, Lnet/oneplus/odm/insight/tracker/AppTracker;->TAG:Ljava/lang/String;

    const-string v4, "Context is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;

    iget-object v3, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, "builder":Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;
    if-eqz p2, :cond_1

    .line 61
    invoke-virtual {v0, p1}, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->tag(Ljava/lang/String;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->data(Ljava/util/Map;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->build()Lnet/oneplus/odm/insight/tracker/TrackData;

    move-result-object v1

    .line 66
    .local v1, "data":Lnet/oneplus/odm/insight/tracker/TrackData;
    :goto_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 67
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "OP_payload"

    invoke-virtual {v1}, Lnet/oneplus/odm/insight/tracker/TrackData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v3, "OP_payload_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    iget-boolean v3, v0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->is_system_app:Z

    if-eqz v3, :cond_2

    .line 70
    const-string v3, "OP_payload_category"

    const-string v4, "app"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_2
    invoke-virtual {p0, v2}, Lnet/oneplus/odm/insight/tracker/AppTracker;->insertValues(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 63
    .end local v1    # "data":Lnet/oneplus/odm/insight/tracker/TrackData;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {v0, p1}, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->tag(Ljava/lang/String;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->build()Lnet/oneplus/odm/insight/tracker/TrackData;

    move-result-object v1

    .restart local v1    # "data":Lnet/oneplus/odm/insight/tracker/TrackData;
    goto :goto_1

    .line 72
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_2
    const-string v3, "OP_payload_category"

    const-string/jumbo v4, "third_party_app"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public startSession()V
    .locals 2

    .prologue
    .line 33
    const-string/jumbo v0, "start"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    return-void
.end method
