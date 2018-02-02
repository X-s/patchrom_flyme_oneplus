.class Lcom/oneplus/gallery/CameraGalleryImpl$4;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;
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
        "Lcom/oneplus/gallery2/ListMoveEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$4;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p2, "key"    # Lcom/oneplus/base/EventKey;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 310
    check-cast p3, Lcom/oneplus/gallery2/ListMoveEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl$4;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery2/ListMoveEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery2/ListMoveEventArgs;)V
    .locals 5
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/gallery2/ListMoveEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ListMoveEventArgs;",
            ">;",
            "Lcom/oneplus/gallery2/ListMoveEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 312
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/gallery2/ListMoveEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$4;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {p3}, Lcom/oneplus/gallery2/ListMoveEventArgs;->getOldStartIndex()I

    move-result v1

    invoke-virtual {p3}, Lcom/oneplus/gallery2/ListMoveEventArgs;->getOldEndIndex()I

    move-result v2

    invoke-virtual {p3}, Lcom/oneplus/gallery2/ListMoveEventArgs;->getStartIndex()I

    move-result v3

    invoke-virtual {p3}, Lcom/oneplus/gallery2/ListMoveEventArgs;->getEndIndex()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap37(Lcom/oneplus/gallery/CameraGalleryImpl;IIII)V

    .line 310
    return-void
.end method
