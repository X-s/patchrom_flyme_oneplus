.class Lcom/oneplus/gallery/OPGallery$2$1;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Lcom/oneplus/base/OperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery$2;->addToMediaSet(Lcom/oneplus/gallery/media/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/OPGallery$2;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery$2;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$2$1;->this$1:Lcom/oneplus/gallery/OPGallery$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$2$1;->this$1:Lcom/oneplus/gallery/OPGallery$2;

    # invokes: Lcom/oneplus/gallery/OPGallery$2;->cancel()V
    invoke-static {v0}, Lcom/oneplus/gallery/OPGallery$2;->access$300(Lcom/oneplus/gallery/OPGallery$2;)V

    .line 198
    return-void
.end method

.method public onCompleted(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$2$1;->this$1:Lcom/oneplus/gallery/OPGallery$2;

    # invokes: Lcom/oneplus/gallery/OPGallery$2;->complete()V
    invoke-static {v0}, Lcom/oneplus/gallery/OPGallery$2;->access$200(Lcom/oneplus/gallery/OPGallery$2;)V

    .line 192
    return-void
.end method

.method public onStarted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 186
    return-void
.end method
