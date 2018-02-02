.class public final Lcom/amap/api/maps2d/CameraUpdate;
.super Ljava/lang/Object;
.source "CameraUpdate.java"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/l;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/l;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amap/api/maps2d/CameraUpdate;->a:Lcom/amap/api/mapcore2d/l;

    .line 15
    return-void
.end method


# virtual methods
.method a()Lcom/amap/api/mapcore2d/l;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/amap/api/maps2d/CameraUpdate;->a:Lcom/amap/api/mapcore2d/l;

    return-object v0
.end method
