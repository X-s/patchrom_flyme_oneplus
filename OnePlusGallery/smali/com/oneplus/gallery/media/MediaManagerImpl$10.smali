.class Lcom/oneplus/gallery/media/MediaManagerImpl$10;
.super Lcom/oneplus/base/Handle;
.source "MediaManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->activate()Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1400
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$10;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$10;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->deactivate(Lcom/oneplus/base/Handle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$2600(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/base/Handle;)V

    .line 1405
    return-void
.end method
