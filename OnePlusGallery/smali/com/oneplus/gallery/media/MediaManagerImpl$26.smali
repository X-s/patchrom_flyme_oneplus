.class Lcom/oneplus/gallery/media/MediaManagerImpl$26;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->onMediaSetListReleased(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

.field final synthetic val$targetMediaType:Lcom/oneplus/gallery/media/MediaType;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaType;)V
    .locals 0

    .prologue
    .line 3915
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$26;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$26;->val$targetMediaType:Lcom/oneplus/gallery/media/MediaType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3919
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$26;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryPathTables:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$4600(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$26;->val$targetMediaType:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3920
    return-void
.end method
