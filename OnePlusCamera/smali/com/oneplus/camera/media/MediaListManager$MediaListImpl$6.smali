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
.field final synthetic this$1:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

.field final synthetic val$deletedList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    .prologue
    .line 523
    .local p2, "val$deletedList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    iput-object p1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$6;->this$1:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    iput-object p2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$6;->val$deletedList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 528
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$6;->this$1:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$6;->val$deletedList:Ljava/util/List;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->-wrap0(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;[Ljava/lang/Object;)Z

    .line 526
    return-void
.end method
