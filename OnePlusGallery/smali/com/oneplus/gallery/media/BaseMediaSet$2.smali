.class Lcom/oneplus/gallery/media/BaseMediaSet$2;
.super Ljava/lang/Object;
.source "BaseMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/BaseMediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/BaseMediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/BaseMediaSet;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$2;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$2;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/BaseMediaSet;->onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V

    .line 86
    return-void
.end method

.method public onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$2;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/BaseMediaSet;->onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V

    .line 92
    return-void
.end method

.method public onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 97
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$2;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery/media/BaseMediaSet;->onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 98
    return-void
.end method

.method public onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 103
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$2;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery/media/BaseMediaSet;->onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 104
    return-void
.end method

.method public onMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$2;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/BaseMediaSet;->onMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V

    .line 110
    return-void
.end method
