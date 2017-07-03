.class Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;
.super Ljava/lang/Object;
.source "PhotoMediaStoreMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->obtainDetails(Lcom/oneplus/base/CallbackHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

.field final synthetic val$finalDetails:Lcom/oneplus/gallery2/media/PhotoMediaDetails;

.field final synthetic val$handle:Lcom/oneplus/base/CallbackHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;Lcom/oneplus/gallery2/media/PhotoMediaDetails;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;->this$0:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;->val$finalDetails:Lcom/oneplus/gallery2/media/PhotoMediaDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v0}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media$DetailsCallback;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;->this$0:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;->val$finalDetails:Lcom/oneplus/gallery2/media/PhotoMediaDetails;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/Media$DetailsCallback;->onDetailsObtained(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/MediaDetails;)V

    goto :goto_0
.end method
