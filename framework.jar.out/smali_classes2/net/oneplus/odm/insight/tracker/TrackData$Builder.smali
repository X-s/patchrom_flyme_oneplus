.class public abstract Lnet/oneplus/odm/insight/tracker/TrackData$Builder;
.super Ljava/lang/Object;
.source "TrackData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/odm/insight/tracker/TrackData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Builder"
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field deviceId:Ljava/lang/String;

.field is_system_app:Z

.field packageName:Ljava/lang/String;

.field pid:I

.field romVersion:Ljava/lang/String;

.field tag:Ljava/lang/String;

.field final synthetic this$0:Lnet/oneplus/odm/insight/tracker/TrackData;

.field uid:I

.field versionCode:I

.field versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/oneplus/odm/insight/tracker/TrackData;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->this$0:Lnet/oneplus/odm/insight/tracker/TrackData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lnet/oneplus/odm/insight/tracker/TrackData;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lnet/oneplus/odm/insight/tracker/TrackData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/oneplus/odm/insight/tracker/TrackData;-><init>(Lnet/oneplus/odm/insight/tracker/TrackData$Builder;Lnet/oneplus/odm/insight/tracker/TrackData$1;)V

    return-object v0
.end method

.method public data(Ljava/util/Map;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/oneplus/odm/insight/tracker/TrackData$Builder;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->tag:Ljava/lang/String;

    .line 84
    return-object p0
.end method
