.class Lcom/amap/api/mapcore2d/ct$a;
.super Lcom/amap/api/mapcore2d/ee;
.source "SDKCoordinatorDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ee;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ct$a;->a:Ljava/lang/String;

    .line 260
    return-void
.end method


# virtual methods
.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 267
    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 275
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ct$a;->a:Ljava/lang/String;

    return-object v0
.end method
