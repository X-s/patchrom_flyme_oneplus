.class Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$2;
.super Ljava/lang/Object;
.source "MediaListManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->addMedia(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

.field final synthetic val$media:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$2;->this$0:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    iput-object p2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$2;->val$media:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$2;->this$0:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    iget-object v1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$2;->val$media:Ljava/util/List;

    # invokes: Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaAdded(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->access$100(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/List;)V

    .line 174
    return-void
.end method
