.class final Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;
.super Lcom/oneplus/base/Handle;
.source "MediaManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRecyclingHandle"
.end annotation


# instance fields
.field public final flags:I

.field public final media:Lcom/oneplus/gallery/media/Media;

.field public final mediaId:J

.field public final subHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;JLcom/oneplus/gallery/media/Media;I)V
    .locals 2
    .param p2, "id"    # J
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 808
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    .line 809
    const-string v0, "MediaRecycling"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 804
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;->subHandles:Ljava/util/List;

    .line 810
    iput-object p4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;->media:Lcom/oneplus/gallery/media/Media;

    .line 811
    iput-wide p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;->mediaId:J

    .line 812
    iput p5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;->flags:I

    .line 813
    return-void
.end method


# virtual methods
.method public addSubHandle(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;->subHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    return-void
.end method

.method public complete()V
    .locals 0

    .prologue
    .line 824
    invoke-super {p0}, Lcom/oneplus/base/Handle;->closeDirectly()V

    .line 825
    return-void
.end method

.method protected onClose(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 831
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;->media:Lcom/oneplus/gallery/media/Media;

    iget v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;->flags:I

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    .line 832
    return-void
.end method
