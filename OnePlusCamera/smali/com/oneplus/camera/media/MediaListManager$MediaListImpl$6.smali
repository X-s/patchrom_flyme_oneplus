.class Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$6;
.super Ljava/lang/Object;
.source "MediaListManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->removeMedia(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

.field final synthetic val$deletedList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$6;->this$0:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    iput-object p2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$6;->val$deletedList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$6;->this$0:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$6;->val$deletedList:Ljava/util/List;

    aput-object v3, v1, v2

    # invokes: Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaRemoved([Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->access$400(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;[Ljava/lang/Object;)Z

    .line 385
    return-void
.end method
