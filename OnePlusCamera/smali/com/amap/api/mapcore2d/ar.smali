.class Lcom/amap/api/mapcore2d/ar;
.super Ljava/lang/Object;
.source "MapMessageQueue.java"


# instance fields
.field a:Lcom/amap/api/mapcore2d/b;

.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/l;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/MapMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ar;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ar;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ar;->a:Lcom/amap/api/mapcore2d/b;

    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore2d/l;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ar;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method
