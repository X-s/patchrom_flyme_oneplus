.class Lcom/oneplus/gallery/media/AlbumMediaSet$8;
.super Ljava/lang/Object;
.source "AlbumMediaSet.java"

# interfaces
.implements Lcom/oneplus/base/OperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/AlbumMediaSet;->onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/OperationCallback",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

.field final synthetic val$media:Lcom/oneplus/gallery/media/Media;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/gallery/media/Media;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$8;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$8;->val$media:Lcom/oneplus/gallery/media/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 351
    return-void
.end method

.method public onCompleted(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "hasChanged"    # Ljava/lang/Boolean;

    .prologue
    .line 342
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$8;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$8;->val$media:Lcom/oneplus/gallery/media/Media;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/media/AlbumMediaSet;->removeMediaFromActiveMediaLists(Lcom/oneplus/gallery/media/Media;)V

    .line 345
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$8;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->updateCoverHashCodeDelayed()V

    .line 347
    :cond_0
    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 333
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/AlbumMediaSet$8;->onCompleted(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onStarted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 336
    return-void
.end method
