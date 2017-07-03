.class Lcom/oneplus/gallery/media/MediaStoreMedia$1;
.super Landroid/os/AsyncTask;
.source "MediaStoreMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaStoreMedia;->getDetails(Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaStoreMedia;

.field final synthetic val$handle:Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaStoreMedia;Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$1;->this$0:Lcom/oneplus/gallery/media/MediaStoreMedia;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$1;->val$handle:Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 350
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/MediaStoreMedia$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 354
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$1;->val$handle:Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$1;->this$0:Lcom/oneplus/gallery/media/MediaStoreMedia;

    invoke-virtual {v2}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getDetails()Lcom/oneplus/gallery/media/MediaDetails;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 366
    .local v0, "details":Lcom/oneplus/gallery/media/MediaDetails;
    :goto_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$1;->val$handle:Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;

    invoke-virtual {v2, v0}, Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;->complete(Lcom/oneplus/gallery/media/MediaDetails;)V

    .line 368
    .end local v0    # "details":Lcom/oneplus/gallery/media/MediaDetails;
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 361
    :catch_0
    move-exception v1

    .line 363
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v2, "MediaStoreMedia"

    const-string v3, "getDetails() - Unhandled exception"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    const/4 v0, 0x0

    .restart local v0    # "details":Lcom/oneplus/gallery/media/MediaDetails;
    goto :goto_0
.end method
