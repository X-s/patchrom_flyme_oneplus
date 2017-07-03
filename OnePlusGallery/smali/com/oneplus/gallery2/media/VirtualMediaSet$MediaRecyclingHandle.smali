.class final Lcom/oneplus/gallery2/media/VirtualMediaSet$MediaRecyclingHandle;
.super Lcom/oneplus/gallery2/media/MediaHandle;
.source "VirtualMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/VirtualMediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRecyclingHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/VirtualMediaSet;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/VirtualMediaSet;Lcom/oneplus/gallery2/media/Media;)V
    .locals 2
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/oneplus/gallery2/media/VirtualMediaSet$MediaRecyclingHandle;->this$0:Lcom/oneplus/gallery2/media/VirtualMediaSet;

    .line 25
    const-string v0, "RecycleMedia"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/oneplus/gallery2/media/MediaHandle;-><init>(Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VirtualMediaSet$MediaRecyclingHandle;->this$0:Lcom/oneplus/gallery2/media/VirtualMediaSet;

    # invokes: Lcom/oneplus/gallery2/media/VirtualMediaSet;->restoreFromRecycleBin(Lcom/oneplus/gallery2/media/VirtualMediaSet$MediaRecyclingHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/VirtualMediaSet;->access$000(Lcom/oneplus/gallery2/media/VirtualMediaSet;Lcom/oneplus/gallery2/media/VirtualMediaSet$MediaRecyclingHandle;)V

    .line 33
    return-void
.end method
