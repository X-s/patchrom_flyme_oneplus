.class final Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;
.super Lcom/oneplus/base/Handle;
.source "VirtualBaseMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/VirtualBaseMediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRecyclingHandle"
.end annotation


# instance fields
.field private final media:Lcom/oneplus/gallery/media/Media;

.field final synthetic this$0:Lcom/oneplus/gallery/media/VirtualBaseMediaSet;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/VirtualBaseMediaSet;Lcom/oneplus/gallery/media/Media;)V
    .locals 1
    .param p2, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;->this$0:Lcom/oneplus/gallery/media/VirtualBaseMediaSet;

    .line 31
    const-string v0, "RecycleMedia"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;->media:Lcom/oneplus/gallery/media/Media;

    .line 33
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;->closeDirectly()V

    .line 39
    return-void
.end method

.method protected onClose(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 45
    iget-object v0, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;->this$0:Lcom/oneplus/gallery/media/VirtualBaseMediaSet;

    iget-object v1, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;->media:Lcom/oneplus/gallery/media/Media;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    .line 46
    return-void
.end method
