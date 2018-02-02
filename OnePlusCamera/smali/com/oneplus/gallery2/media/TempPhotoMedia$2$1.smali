.class Lcom/oneplus/gallery2/media/TempPhotoMedia$2$1;
.super Ljava/lang/Object;
.source "TempPhotoMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/media/TempPhotoMedia$2;

.field private final synthetic val$callback:Lcom/oneplus/gallery2/media/Media$DetailsCallback;

.field private final synthetic val$finalDetails:Lcom/oneplus/gallery2/media/PhotoMediaDetails;

.field private final synthetic val$handle:Lcom/oneplus/base/CallbackHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/TempPhotoMedia$2;Lcom/oneplus/base/CallbackHandle;Lcom/oneplus/gallery2/media/Media$DetailsCallback;Lcom/oneplus/gallery2/media/PhotoMediaDetails;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2$1;->this$1:Lcom/oneplus/gallery2/media/TempPhotoMedia$2;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2$1;->val$handle:Lcom/oneplus/base/CallbackHandle;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2$1;->val$callback:Lcom/oneplus/gallery2/media/Media$DetailsCallback;

    iput-object p4, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2$1;->val$finalDetails:Lcom/oneplus/gallery2/media/PhotoMediaDetails;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2$1;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2$1;->val$callback:Lcom/oneplus/gallery2/media/Media$DetailsCallback;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2$1;->this$1:Lcom/oneplus/gallery2/media/TempPhotoMedia$2;

    invoke-static {v1}, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->access$0(Lcom/oneplus/gallery2/media/TempPhotoMedia$2;)Lcom/oneplus/gallery2/media/TempPhotoMedia;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2$1;->val$finalDetails:Lcom/oneplus/gallery2/media/PhotoMediaDetails;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/Media$DetailsCallback;->onDetailsObtained(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/MediaDetails;)V

    goto :goto_0
.end method
