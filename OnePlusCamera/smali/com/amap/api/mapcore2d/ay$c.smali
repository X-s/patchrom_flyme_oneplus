.class public Lcom/amap/api/mapcore2d/ay$c;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ay;

.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay$c;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p3, p0, Lcom/amap/api/mapcore2d/ay$c;->b:Landroid/content/Context;

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;Lcom/amap/api/mapcore2d/ay$1;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/mapcore2d/ay$c;-><init>(Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;)V

    return-void
.end method
