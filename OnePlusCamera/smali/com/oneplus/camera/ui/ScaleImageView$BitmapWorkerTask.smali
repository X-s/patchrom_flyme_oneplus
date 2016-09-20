.class Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "ScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/camera/ui/ScaleImageView;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/ui/ScaleImageView;Landroid/widget/ImageView;)V
    .locals 1
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->path:Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 177
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/16 v3, 0x1000

    .line 182
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->path:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->path:Ljava/lang/String;

    const/4 v1, 0x4

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v3, v1, v2}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 169
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    .line 190
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_DecodeTask:Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;
    invoke-static {v1}, Lcom/oneplus/camera/ui/ScaleImageView;->access$000(Lcom/oneplus/camera/ui/ScaleImageView;)Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 191
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 193
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ScaleDrawable:Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;
    invoke-static {v1}, Lcom/oneplus/camera/ui/ScaleImageView;->access$100(Lcom/oneplus/camera/ui/ScaleImageView;)Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_Mode:I
    invoke-static {v1}, Lcom/oneplus/camera/ui/ScaleImageView;->access$200(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 196
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ScaleDrawable:Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;
    invoke-static {v1}, Lcom/oneplus/camera/ui/ScaleImageView;->access$100(Lcom/oneplus/camera/ui/ScaleImageView;)Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 197
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # setter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_IsBitmapFullSize:Z
    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/ScaleImageView;->access$302(Lcom/oneplus/camera/ui/ScaleImageView;Z)Z

    .line 203
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    const/4 v2, 0x0

    # setter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_DecodeTask:Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;
    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/ScaleImageView;->access$002(Lcom/oneplus/camera/ui/ScaleImageView;Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;)Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_1
    sget-object v1, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    const-string v2, "Not the same task"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 169
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
