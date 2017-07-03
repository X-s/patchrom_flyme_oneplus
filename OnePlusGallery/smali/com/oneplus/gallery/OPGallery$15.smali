.class Lcom/oneplus/gallery/OPGallery$15;
.super Lcom/oneplus/gallery/OPGallery$MediaSetHandle;
.source "OPGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery;->setCurrentMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGallery;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 1352
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$15;->this$0:Lcom/oneplus/gallery/OPGallery;

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/OPGallery$MediaSetHandle;-><init>(Lcom/oneplus/gallery/OPGallery;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaSet;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$15;->this$0:Lcom/oneplus/gallery/OPGallery;

    # invokes: Lcom/oneplus/gallery/OPGallery;->removeCurrentMediaSet(Lcom/oneplus/gallery/OPGallery$MediaSetHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery/OPGallery;->access$1100(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/OPGallery$MediaSetHandle;)V

    .line 1357
    return-void
.end method
