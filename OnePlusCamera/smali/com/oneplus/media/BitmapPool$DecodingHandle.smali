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

.field final synthetic this$0:Lcom/oneplus/media/BitmapPool;


# direct methods
.method public constructor <init>(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$BitmapInfo;IILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)V
    .locals 1
    .param p2, "bitmapInfo"    # Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "callback"    # Lcom/oneplus/media/BitmapPool$Callback;
    .param p6, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->this$0:Lcom/oneplus/media/BitmapPool;

    .line 187
    const-string v0, "DecodingBitmap"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 188
    iput-object p2, p0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 189
    iput-object p5, p0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->callback:Lcom/oneplus/media/BitmapPool$Callback;

    .line 190
    iput-object p6, p0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->callbackHandler:Landroid/os/Handler;

    .line 191
    iput p3, p0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->maxWidth:I

    .line 192
    iput p4, p0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->maxHeight:I

    .line 193
    return-void
.end method


# virtual methods
.method public changeBitmapInfo(Lcom/oneplus/media/BitmapPool$BitmapInfo;)Lcom/oneplus/media/BitmapPool$DecodingHandle;
    .locals 0
    .param p1, "bitmapInfo"    # Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 198
    return-object p0
.end method

.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool$DecodingHandle;->this$0:Lcom/oneplus/media/BitmapPool;

    # invokes: Lcom/oneplus/media/BitmapPool;->cancelDecoding(Lcom/oneplus/media/BitmapPool$DecodingHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/media/BitmapPool;->access$300(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$DecodingHandle;)V

    .line 205
    return-void
.end method
