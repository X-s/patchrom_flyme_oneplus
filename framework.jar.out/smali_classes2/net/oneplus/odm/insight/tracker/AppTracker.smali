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
    const-string v0, "stop"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 43
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
    .line 50
    .local p2, "eventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 51
    sget-object v3, Lnet/oneplus/odm/insight/tracker/AppTracker;->TAG:Ljava/lang/String;

    const-string v4, "Context is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 54
    :cond_0
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

    .line 56
    new-instance v0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;

    iget-object v3, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "builder":Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;
    const/4 v2, 0x0

    .line 58
    .local v2, "data":Lnet/oneplus/odm/insight/tracker/TrackData;
    if-eqz p2, :cond_1

    .line 59
    invoke-virtual {v0, p1}, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->tag(Ljava/lang/String;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->data(Ljava/util/Map;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->build()Lnet/oneplus/odm/insight/tracker/TrackData;

    move-result-object v2

    .line 64
    :goto_1
    const-string v1, ""

    .line 65
    .local v1, "category":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 66
    const-string v1, "custom_data"

    .line 73
    :goto_2
    const/4 v3, 0x4

    sget-object v4, Lnet/oneplus/odm/insight/tracker/AppTracker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lnet/oneplus/odm/insight/tracker/TrackData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Log;->mdm(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    .end local v1    # "category":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p1}, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->tag(Ljava/lang/String;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->build()Lnet/oneplus/odm/insight/tracker/TrackData;

    move-result-object v2

    goto :goto_1

    .line 67
    .restart local v1    # "category":Ljava/lang/String;
    :cond_2
    iget-boolean v3, v0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->is_system_app:Z

    if-eqz v3, :cond_3

    .line 68
    const-string v1, "app"

    goto :goto_2

    .line 70
    :cond_3
    const-string v1, "third_party_app"

    goto :goto_2
.end method

.method public startSession()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "start"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    return-void
.end method
