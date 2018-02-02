.class public Lcom/amap/api/mapcore2d/cx;
.super Ljava/lang/Object;
.source "ConstConfig.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "9aj&#k81"

    .line 66
    sput-object v0, Lcom/amap/api/mapcore2d/cx;->a:Ljava/lang/String;

    const-string/jumbo v0, "http://logs.amap.com/ws/log/upload?product=%s&type=%s&platform=%s&channel=%s&sign=%s"

    .line 70
    sput-object v0, Lcom/amap/api/mapcore2d/cx;->b:Ljava/lang/String;

    const-string/jumbo v0, "9aj&#k81"

    .line 84
    sput-object v0, Lcom/amap/api/mapcore2d/cx;->a:Ljava/lang/String;

    const-string/jumbo v0, "http://logs.amap.com/ws/log/upload?product=%s&type=%s&platform=%s&channel=%s&sign=%s"

    .line 85
    sput-object v0, Lcom/amap/api/mapcore2d/cx;->b:Ljava/lang/String;

    .line 87
    return-void
.end method
