.class public Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;
.super Lnet/oneplus/odm/insight/tracker/TrackData$Builder;
.source "TrackData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/odm/insight/tracker/TrackData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppBuilder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    new-instance v0, Lnet/oneplus/odm/insight/tracker/TrackData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/oneplus/odm/insight/tracker/TrackData;-><init>(Lnet/oneplus/odm/insight/tracker/TrackData$1;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;-><init>(Lnet/oneplus/odm/insight/tracker/TrackData;)V

    .line 99
    invoke-static {p1}, Lnet/oneplus/odm/common/Util;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->deviceId:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->packageName:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->className:Ljava/lang/String;

    .line 102
    invoke-static {p1}, Lnet/oneplus/odm/common/Util;->getUid(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->uid:I

    .line 103
    invoke-static {p1}, Lnet/oneplus/odm/common/Util;->getPid(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->pid:I

    .line 104
    invoke-static {p1}, Lnet/oneplus/odm/common/Util;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->versionCode:I

    .line 105
    invoke-static {p1}, Lnet/oneplus/odm/common/Util;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->versionName:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->tag:Ljava/lang/String;

    .line 107
    invoke-static {p1}, Lnet/oneplus/odm/common/Util;->checkIsSystemApp(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->is_system_app:Z

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->dataList:Ljava/util/ArrayList;

    .line 109
    return-void
.end method
