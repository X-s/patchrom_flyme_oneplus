.class Lcom/android/server/notification/OnlineConfigUtil$OnlineConfigUpdater;
.super Ljava/lang/Object;
.source "OnlineConfigUtil.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/OnlineConfigUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnlineConfigUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/OnlineConfigUtil$OnlineConfigUpdater;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/notification/OnlineConfigUtil$OnlineConfigUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .prologue
    .line 109
    const-string/jumbo v0, "OnlineConfigUtil"

    const-string/jumbo v1, "Receive online config update"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {p1}, Lcom/android/server/notification/OnlineConfigUtil;->-wrap0(Lorg/json/JSONArray;)V

    .line 108
    return-void
.end method
