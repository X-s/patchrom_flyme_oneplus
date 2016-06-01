.class final Lcom/oppo/tribune/cache/BitmapManager$GCBitmapTarget;
.super Ljava/lang/Object;
.source "BitmapManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/cache/BitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GCBitmapTarget"
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/cache/BitmapEntity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oppo/tribune/cache/BitmapManager;


# direct methods
.method private constructor <init>(Lcom/oppo/tribune/cache/BitmapManager;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/cache/BitmapEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/cache/BitmapEntity;>;"
    iput-object p1, p0, Lcom/oppo/tribune/cache/BitmapManager$GCBitmapTarget;->this$0:Lcom/oppo/tribune/cache/BitmapManager;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/oppo/tribune/cache/BitmapManager$GCBitmapTarget;->list:Ljava/util/List;

    .line 244
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/cache/BitmapManager;Ljava/util/List;Lcom/oppo/tribune/cache/BitmapManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/cache/BitmapManager;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lcom/oppo/tribune/cache/BitmapManager$1;

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Lcom/oppo/tribune/cache/BitmapManager$GCBitmapTarget;-><init>(Lcom/oppo/tribune/cache/BitmapManager;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapManager$GCBitmapTarget;->this$0:Lcom/oppo/tribune/cache/BitmapManager;

    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapManager$GCBitmapTarget;->list:Ljava/util/List;

    # invokes: Lcom/oppo/tribune/cache/BitmapManager;->realGC(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/oppo/tribune/cache/BitmapManager;->access$100(Lcom/oppo/tribune/cache/BitmapManager;Ljava/util/List;)V

    .line 249
    return-void
.end method
