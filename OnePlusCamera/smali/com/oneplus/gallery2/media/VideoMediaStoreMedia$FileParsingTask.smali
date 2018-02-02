.class final Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;
.super Ljava/lang/Object;
.source "VideoMediaStoreMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FileParsingTask"
.end annotation


# instance fields
.field public volatile duration:J

.field public volatile executorFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field public volatile size:Landroid/util/Size;

.field final synthetic this$0:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;


# direct methods
.method private constructor <init>(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->this$0:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;-><init>(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;)V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 61
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->executorFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->executorFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    return v2

    .line 62
    :cond_0
    return v1

    .line 65
    :cond_1
    iput-object v3, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->executorFuture:Ljava/util/concurrent/Future;

    .line 66
    return v1
.end method

.method public run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->this$0:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;

    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->access$0(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V

    .line 76
    return-void
.end method
