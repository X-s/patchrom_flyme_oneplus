.class final Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;
.super Lcom/oneplus/gallery2/media/BaseMediaSetList;
.source "AlbumManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/AlbumManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlbumMediaSetList"
.end annotation


# instance fields
.field public final flags:I

.field public final targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

.field final synthetic this$0:Lcom/oneplus/gallery2/media/AlbumManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;I)V
    .locals 0
    .param p2, "comparator"    # Lcom/oneplus/gallery2/media/MediaSetComparator;
    .param p3, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;
    .param p4, "flags"    # I

    .prologue
    .line 118
    iput-object p1, p0, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    .line 119
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;-><init>(Lcom/oneplus/gallery2/media/MediaSetComparator;)V

    .line 120
    iput-object p3, p0, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 121
    iput p4, p0, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->flags:I

    .line 122
    return-void
.end method


# virtual methods
.method public ready()V
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->release()V

    .line 135
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    # invokes: Lcom/oneplus/gallery2/media/AlbumManager;->onAlbumMediaSetListReleased(Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/AlbumManager;->access$100(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/AlbumManager$AlbumMediaSetList;)V

    .line 136
    return-void
.end method
