.class Lcom/oneplus/gallery/media/MediaManagerImpl$22;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<",
        "Lcom/oneplus/gallery/media/ThumbnailImageManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V
    .locals 0

    .prologue
    .line 3699
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$22;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 3699
    check-cast p1, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$22;->onComponentFound(Lcom/oneplus/gallery/media/ThumbnailImageManager;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/gallery/media/ThumbnailImageManager;)V
    .locals 1
    .param p1, "component"    # Lcom/oneplus/gallery/media/ThumbnailImageManager;

    .prologue
    .line 3703
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$22;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # setter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ThumbnailImageManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;
    invoke-static {v0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$4102(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/ThumbnailImageManager;)Lcom/oneplus/gallery/media/ThumbnailImageManager;

    .line 3704
    return-void
.end method
