.class Lcom/amap/api/mapcore2d/eb$1;
.super Ljava/lang/Object;
.source "HttpUrlUtil.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/eb;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/eb;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/amap/api/mapcore2d/eb$1;->a:Lcom/amap/api/mapcore2d/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 499
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    const-string/jumbo v2, "*.amap.com"

    .line 500
    invoke-interface {v1, v2, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "*.apilocate.amap.com"

    invoke-interface {v1, v2, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method
