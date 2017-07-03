.class Lcom/oneplus/gallery/media/TempMedia$1;
.super Landroid/os/AsyncTask;
.source "TempMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/TempMedia;->getDetails(Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
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
.field final synthetic this$0:Lcom/oneplus/gallery/media/TempMedia;

.field final synthetic val$handle:Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/TempMedia;Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/oneplus/gallery/media/TempMedia$1;->this$0:Lcom/oneplus/gallery/media/TempMedia;

    iput-object p2, p0, Lcom/oneplus/gallery/media/TempMedia$1;->val$handle:Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 247
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/TempMedia$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 251
    iget-object v2, p0, Lcom/oneplus/gallery/media/TempMedia$1;->val$handle:Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/TempMedia$1;->this$0:Lcom/oneplus/gallery/media/TempMedia;

    invoke-virtual {v2}, Lcom/oneplus/gallery/media/TempMedia;->getDetails()Lcom/oneplus/gallery/media/MediaDetails;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 263
    .local v0, "details":Lcom/oneplus/gallery/media/MediaDetails;
    :goto_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/TempMedia$1;->val$handle:Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;

    invoke-virtual {v2, v0}, Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;->complete(Lcom/oneplus/gallery/media/MediaDetails;)V

    .line 265
    .end local v0    # "details":Lcom/oneplus/gallery/media/MediaDetails;
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 258
    :catch_0
    move-exception v1

    .line 260
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v2, "TempMedia"

    const-string v3, "getDetails() - Unhandled exception"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    const/4 v0, 0x0

    .restart local v0    # "details":Lcom/oneplus/gallery/media/MediaDetails;
    goto :goto_0
.end method
