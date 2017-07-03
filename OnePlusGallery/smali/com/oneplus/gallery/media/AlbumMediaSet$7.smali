.class Lcom/oneplus/gallery/media/AlbumMediaSet$7;
.super Ljava/lang/Object;
.source "AlbumMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaObtainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/AlbumMediaSet;->onAlbumMediaRelationInserted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/AlbumMediaSet;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$7;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObtained(JLcom/oneplus/gallery/media/Media;)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 295
    if-eqz p3, :cond_0

    .line 297
    sget-object v0, Lcom/oneplus/gallery/media/AlbumMediaSet$13;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    invoke-interface {p3}, Lcom/oneplus/gallery/media/Media;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$7;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-virtual {v0, p3}, Lcom/oneplus/gallery/media/AlbumMediaSet;->addMediaToActiveMediaLists(Lcom/oneplus/gallery/media/Media;)V

    .line 308
    :cond_0
    return-void

    .line 300
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$7;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    new-array v1, v3, [J

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/gallery/media/AlbumMediaSet;->updatePhotoIdTable([J[J)Z

    goto :goto_0

    .line 303
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$7;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    new-array v1, v3, [J

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/gallery/media/AlbumMediaSet;->updateVideoIdTable([J[J)Z

    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
