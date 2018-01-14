.class public Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;
.super Lnet/oneplus/odm/insight/tracker/TrackData$Builder;
.source "TrackData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/odm/insight/tracker/TrackData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/odm/insight/tracker/TrackData;


# direct methods
.method public constructor <init>(Lnet/oneplus/odm/insight/tracker/TrackData;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/odm/insight/tracker/TrackData;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    iput-object p1, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->this$0:Lnet/oneplus/odm/insight/tracker/TrackData;

    .line 93
    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;-><init>(Lnet/oneplus/odm/insight/tracker/TrackData;)V

    .line 94
    invoke-static {p2}, Lnet/oneplus/odm/common/Util;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->deviceId:Ljava/lang/String;

    .line 95
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->packageName:Ljava/lang/String;

    .line 96
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->className:Ljava/lang/String;

    .line 97
    invoke-static {p2}, Lnet/oneplus/odm/common/Util;->getUid(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->uid:I

    .line 98
    invoke-static {p2}, Lnet/oneplus/odm/common/Util;->getPid(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->pid:I

    .line 99
    invoke-static {p2}, Lnet/oneplus/odm/common/Util;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->versionCode:I

    .line 100
    invoke-static {p2}, Lnet/oneplus/odm/common/Util;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->versionName:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, ""

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->tag:Ljava/lang/String;

    .line 102
    invoke-static {p2}, Lnet/oneplus/odm/common/Util;->checkIsSystemApp(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->is_system_app:Z

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->dataList:Ljava/util/Map;

    .line 104
    invoke-static {}, Lnet/oneplus/odm/common/Util;->getRomVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->romVersion:Ljava/lang/String;

    .line 92
    return-void
.end method
