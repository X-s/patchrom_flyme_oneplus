.class Lcom/oneplus/gallery/media/DirectoryMediaSetManager$1;
.super Ljava/lang/Object;
.source "DirectoryMediaSetManager.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/DirectoryMediaSetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/DirectoryMediaSetManager;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$1;->this$0:Lcom/oneplus/gallery/media/DirectoryMediaSetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 30
    iget-object v1, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$1;->this$0:Lcom/oneplus/gallery/media/DirectoryMediaSetManager;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    # invokes: Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    invoke-static/range {v1 .. v6}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->access$000(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 31
    return-void
.end method

.method public onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 36
    iget-object v1, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$1;->this$0:Lcom/oneplus/gallery/media/DirectoryMediaSetManager;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    # invokes: Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    invoke-static/range {v1 .. v6}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->access$100(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 37
    return-void
.end method

.method public onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 42
    iget-object v1, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$1;->this$0:Lcom/oneplus/gallery/media/DirectoryMediaSetManager;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    # invokes: Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    invoke-static/range {v1 .. v6}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->access$200(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 43
    return-void
.end method

.method public onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 48
    iget-object v1, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$1;->this$0:Lcom/oneplus/gallery/media/DirectoryMediaSetManager;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    # invokes: Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    invoke-static/range {v1 .. v6}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->access$300(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 49
    return-void
.end method

.method public onMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 54
    iget-object v1, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$1;->this$0:Lcom/oneplus/gallery/media/DirectoryMediaSetManager;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    # invokes: Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->onMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    invoke-static/range {v1 .. v6}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->access$400(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 55
    return-void
.end method
