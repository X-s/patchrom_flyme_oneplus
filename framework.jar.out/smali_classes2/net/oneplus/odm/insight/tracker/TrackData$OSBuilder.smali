.class public Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;
.super Lnet/oneplus/odm/insight/tracker/TrackData$Builder;
.source "TrackData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/odm/insight/tracker/TrackData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OSBuilder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    new-instance v0, Lnet/oneplus/odm/insight/tracker/TrackData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/oneplus/odm/insight/tracker/TrackData;-><init>(Lnet/oneplus/odm/insight/tracker/TrackData$1;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;-><init>(Lnet/oneplus/odm/insight/tracker/TrackData;)V

    .line 119
    invoke-static {p1}, Lnet/oneplus/odm/common/Util;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;->deviceId:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;->tag:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;->dataList:Ljava/util/ArrayList;

    .line 122
    invoke-static {}, Lnet/oneplus/odm/common/Util;->getRomVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;->romVersion:Ljava/lang/String;

    .line 123
    return-void
.end method
