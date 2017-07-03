.class Lcom/oneplus/gallery/media/MediaManagerImpl$8;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$8;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverChanged(Lcom/oneplus/gallery/media/GroupMedia;)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery/media/GroupMedia;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$8;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->onGroupMediaCoverChanged(Lcom/oneplus/gallery/media/GroupMedia;)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$1200(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/GroupMedia;)V

    .line 330
    return-void
.end method

.method public onSubMediaSizeChanged(Lcom/oneplus/gallery/media/GroupMedia;)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery/media/GroupMedia;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$8;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->onGroupMediaSubMediaSizeChanged(Lcom/oneplus/gallery/media/GroupMedia;)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$1100(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/GroupMedia;)V

    .line 324
    return-void
.end method
