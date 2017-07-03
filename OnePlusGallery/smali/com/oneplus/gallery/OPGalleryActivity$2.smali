.class Lcom/oneplus/gallery/OPGalleryActivity$2;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/OPGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/gallery/media/MediaSetEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGalleryActivity;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity$2;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/EventSource;
    .param p2, "x1"    # Lcom/oneplus/base/EventKey;
    .param p3, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 184
    check-cast p3, Lcom/oneplus/gallery/media/MediaSetEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery/OPGalleryActivity$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery/media/MediaSetEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery/media/MediaSetEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/gallery/media/MediaSetEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/media/MediaSetEventArgs;",
            ">;",
            "Lcom/oneplus/gallery/media/MediaSetEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/gallery/media/MediaSetEventArgs;>;"
    invoke-virtual {p3}, Lcom/oneplus/gallery/media/MediaSetEventArgs;->getMediaSet()Lcom/oneplus/gallery/media/MediaSet;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/gallery/media/AlbumMediaSet;

    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity$2;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    invoke-virtual {p3}, Lcom/oneplus/gallery/media/MediaSetEventArgs;->getMediaSet()Lcom/oneplus/gallery/media/MediaSet;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/AlbumMediaSet;

    # invokes: Lcom/oneplus/gallery/OPGalleryActivity;->onAlbumMediaSetCreated(Lcom/oneplus/gallery/media/AlbumMediaSet;)V
    invoke-static {v1, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$100(Lcom/oneplus/gallery/OPGalleryActivity;Lcom/oneplus/gallery/media/AlbumMediaSet;)V

    .line 190
    :cond_0
    return-void
.end method
