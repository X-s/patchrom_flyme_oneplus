.class public Lnet/oneplus/odm/insight/tracker/TrackData;
.super Lorg/json/JSONObject;
.source "TrackData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/odm/insight/tracker/TrackData$1;,
        Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;,
        Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;,
        Lnet/oneplus/odm/insight/tracker/TrackData$Builder;
    }
.end annotation


# static fields
.field public static final KEY_APP_DETAIL_DATA:Ljava/lang/String; = "aed"

.field public static final KEY_CLASS_NAME:Ljava/lang/String; = "cn"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "id"

.field public static final KEY_EVENT:Ljava/lang/String; = "en"

.field public static final KEY_IS_ROM_DEBUG_VERSION:Ljava/lang/String; = "it"

.field public static final KEY_IS_SYSTEM_APP:Ljava/lang/String; = "sa"

.field public static final KEY_OS_DETAIL_DATA:Ljava/lang/String; = "oed"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "pn"

.field public static final KEY_PROCESS_ID:Ljava/lang/String; = "pi"

.field public static final KEY_SESSION_ID:Ljava/lang/String; = "si"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "ts"

.field public static final KEY_VERSION_CODE:Ljava/lang/String; = "pvc"

.field public static final KEY_VERSION_NAME:Ljava/lang/String; = "pvn"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/odm/insight/tracker/TrackData$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/odm/insight/tracker/TrackData$1;

    .prologue
    .line 16
    invoke-direct {p0}, Lnet/oneplus/odm/insight/tracker/TrackData;-><init>()V

    return-void
.end method

.method private constructor <init>(Lnet/oneplus/odm/insight/tracker/TrackData$Builder;)V
    .locals 4
    .param p1, "builder"    # Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    instance-of v1, p1, Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;

    if-eqz v1, :cond_1

    .line 38
    :try_start_0
    const-string v1, "id"

    iget-object v2, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->deviceId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v1, "en"

    iget-object v2, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->tag:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string/jumbo v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 41
    const-string/jumbo v1, "oed"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->dataList:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v1, "it"

    invoke-static {}, Lnet/oneplus/odm/common/Util;->isRomDebugVersion()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    instance-of v1, p1, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;

    if-eqz v1, :cond_0

    .line 48
    :try_start_1
    const-string v1, "id"

    iget-object v2, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->deviceId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string/jumbo v1, "pi"

    iget v2, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->pid:I

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    const-string/jumbo v1, "si"

    invoke-static {}, Lnet/oneplus/odm/insight/tracker/Session;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string/jumbo v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 52
    const-string/jumbo v1, "pn"

    iget-object v2, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string/jumbo v1, "pvn"

    iget-object v2, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v1, "pvc"

    iget v2, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->versionCode:I

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    const-string v1, "cn"

    iget-object v2, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->className:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v1, "en"

    iget-object v2, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->tag:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v1, "aed"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->dataList:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string/jumbo v1, "sa"

    iget-boolean v2, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->is_system_app:Z

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 59
    const-string v1, "it"

    invoke-static {}, Lnet/oneplus/odm/common/Util;->isRomDebugVersion()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    .line 61
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lnet/oneplus/odm/insight/tracker/TrackData$Builder;Lnet/oneplus/odm/insight/tracker/TrackData$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/odm/insight/tracker/TrackData$Builder;
    .param p2, "x1"    # Lnet/oneplus/odm/insight/tracker/TrackData$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/tracker/TrackData;-><init>(Lnet/oneplus/odm/insight/tracker/TrackData$Builder;)V

    return-void
.end method
