.class final Lcom/oneplus/media/BitmapPool$DecodingHandle;
.super Lcom/oneplus/base/Handle;
.source "BitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/media/BitmapPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecodingHandle"
.end annotation


# instance fields
.field public volatile bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

.field public final callback:Lcom/oneplus/media/BitmapPool$Callback;

.field public final callbackHandler:Landroid/os/Handler;

.field public final maxHeight:I

.field public final maxWidth:I

.field public final periodicHandler:Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;

.field final synthetic this$0:Lcom/oneplus/media/BitmapPool;


# direct methods
.method public constructor <init>(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$BitmapInfo;IILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)V
    .locals 3
    .param p2, "bitmapInfo"    # Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "callback"    # Lcom/oneplus/media/BitmapPool$Callback;
    .param p6, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->this$0:Lcom/oneplus/media/BitmapPool;

    .line 261
    const-string v2, "DecodingBitmap"

    invoke-direct {p0, v2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 262
    iput-object p2, p0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 263
    iput-object p5, p0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->callback:Lcom/oneplus/media/BitmapPool$Callback;

    .line 264
    iput-object p6, p0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->callbackHandler:Landroid/os/Handler;

    .line 265
    iput p3, p0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->maxWidth:I

    .line 266
    iput p4, p0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->maxHeight:I

    .line 267
    # getter for: Lcom/oneplus/media/BitmapPool;->m_IsPeriodicCallbacksNeeded:Z
    invoke-static {p1}, Lcom/oneplus/media/BitmapPool;->access$3(Lcom/oneplus/media/BitmapPool;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p6, :cond_2

    .line 269
    # getter for: Lcom/oneplus/media/BitmapPool;->m_PeriodicHandlers:Ljava/util/List;
    invoke-static {p1}, Lcom/oneplus/media/BitmapPool;->access$4(Lcom/oneplus/media/BitmapPool;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 278
    new-instance v1, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;

    invoke-virtual {p6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;-><init>(Lcom/oneplus/media/BitmapPool;Landroid/os/Looper;)V

    .line 279
    .local v1, "periodicHandler":Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;
    # getter for: Lcom/oneplus/media/BitmapPool;->m_PeriodicHandlers:Ljava/util/List;
    invoke-static {p1}, Lcom/oneplus/media/BitmapPool;->access$4(Lcom/oneplus/media/BitmapPool;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iput-object v1, p0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->periodicHandler:Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;

    .line 284
    .end local v0    # "i":I
    .end local v1    # "periodicHandler":Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;
    :goto_1
    return-void

    .line 271
    .restart local v0    # "i":I
    :cond_0
    # getter for: Lcom/oneplus/media/BitmapPool;->m_PeriodicHandlers:Ljava/util/List;
    invoke-static {p1}, Lcom/oneplus/media/BitmapPool;->access$4(Lcom/oneplus/media/BitmapPool;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;

    .line 272
    .restart local v1    # "periodicHandler":Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;
    invoke-virtual {v1, p6}, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->isSameLooper(Landroid/os/Handler;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    iput-object v1, p0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->periodicHandler:Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;

    goto :goto_1

    .line 269
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 283
    .end local v0    # "i":I
    .end local v1    # "periodicHandler":Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->periodicHandler:Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;

    goto :goto_1
.end method


# virtual methods
.method public changeBitmapInfo(Lcom/oneplus/media/BitmapPool$BitmapInfo;)Lcom/oneplus/media/BitmapPool$DecodingHandle;
    .locals 0
    .param p1, "bitmapInfo"    # Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 289
    return-object p0
.end method

.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->this$0:Lcom/oneplus/media/BitmapPool;

    # invokes: Lcom/oneplus/media/BitmapPool;->cancelDecoding(Lcom/oneplus/media/BitmapPool$DecodingHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/media/BitmapPool;->access$5(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$DecodingHandle;)V

    .line 296
    return-void
.end method
