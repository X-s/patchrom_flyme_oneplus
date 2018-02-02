.class Lcom/oneplus/media/BitmapPool$3;
.super Ljava/lang/Object;
.source "BitmapPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/media/BitmapPool;->callOnBitmapDecoded(Lcom/oneplus/media/BitmapPool$DecodingHandle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/media/BitmapPool;

.field final synthetic val$actualBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

.field final synthetic val$handle:Lcom/oneplus/media/BitmapPool$DecodingHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$BitmapInfo;Lcom/oneplus/media/BitmapPool$DecodingHandle;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/media/BitmapPool;
    .param p2, "val$bitmapInfo"    # Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .param p3, "val$handle"    # Lcom/oneplus/media/BitmapPool$DecodingHandle;
    .param p4, "val$actualBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/oneplus/media/BitmapPool$3;->this$0:Lcom/oneplus/media/BitmapPool;

    iput-object p2, p0, Lcom/oneplus/media/BitmapPool$3;->val$bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iput-object p3, p0, Lcom/oneplus/media/BitmapPool$3;->val$handle:Lcom/oneplus/media/BitmapPool$DecodingHandle;

    iput-object p4, p0, Lcom/oneplus/media/BitmapPool$3;->val$actualBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 444
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool$3;->this$0:Lcom/oneplus/media/BitmapPool;

    invoke-static {v0}, Lcom/oneplus/media/BitmapPool;->-get1(Lcom/oneplus/media/BitmapPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool$3;->val$bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iget-boolean v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool$3;->val$bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool$3;->val$handle:Lcom/oneplus/media/BitmapPool$DecodingHandle;

    iget-object v2, v0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->callback:Lcom/oneplus/media/BitmapPool$Callback;

    iget-object v3, p0, Lcom/oneplus/media/BitmapPool$3;->val$handle:Lcom/oneplus/media/BitmapPool$DecodingHandle;

    iget-object v0, p0, Lcom/oneplus/media/BitmapPool$3;->val$bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/media/BitmapPool$3;->val$actualBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v0, v4}, Lcom/oneplus/media/BitmapPool$Callback;->onBitmapDecoded(Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 455
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool$3;->val$handle:Lcom/oneplus/media/BitmapPool$DecodingHandle;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 442
    return-void

    .line 452
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool$3;->val$bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    instance-of v0, v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool$3;->val$handle:Lcom/oneplus/media/BitmapPool$DecodingHandle;

    iget-object v2, v0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->callback:Lcom/oneplus/media/BitmapPool$Callback;

    iget-object v3, p0, Lcom/oneplus/media/BitmapPool$3;->val$handle:Lcom/oneplus/media/BitmapPool$DecodingHandle;

    iget-object v0, p0, Lcom/oneplus/media/BitmapPool$3;->val$bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iget-object v0, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    iget-object v4, p0, Lcom/oneplus/media/BitmapPool$3;->val$actualBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v0, v4}, Lcom/oneplus/media/BitmapPool$Callback;->onBitmapDecoded(Lcom/oneplus/base/Handle;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
