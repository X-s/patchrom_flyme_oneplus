.class Lcom/oneplus/media/BitmapPool$2;
.super Lcom/oneplus/base/Handle;
.source "BitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/media/BitmapPool;->activate()Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/media/BitmapPool;


# direct methods
.method constructor <init>(Lcom/oneplus/media/BitmapPool;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/media/BitmapPool;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/oneplus/media/BitmapPool$2;->this$0:Lcom/oneplus/media/BitmapPool;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 389
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool$2;->this$0:Lcom/oneplus/media/BitmapPool;

    invoke-static {v0, p0}, Lcom/oneplus/media/BitmapPool;->-wrap1(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/base/Handle;)V

    .line 387
    return-void
.end method
