.class final Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet$MediaRecyclingHandle;
.super Lcom/oneplus/gallery2/media/MediaHandle;
.source "MultiSourcesVirtualMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRecyclingHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;Lcom/oneplus/gallery2/media/Media;)V
    .locals 2
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet$MediaRecyclingHandle;->this$0:Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;

    .line 26
    const-string v0, "RecycleMedia"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/oneplus/gallery2/media/MediaHandle;-><init>(Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet$MediaRecyclingHandle;->this$0:Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;

    # invokes: Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->restoreFromRecycleBin(Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet$MediaRecyclingHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->access$000(Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet$MediaRecyclingHandle;)V

    .line 34
    return-void
.end method
