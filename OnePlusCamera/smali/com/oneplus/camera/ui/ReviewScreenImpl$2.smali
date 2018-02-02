.class Lcom/oneplus/camera/ui/ReviewScreenImpl$2;
.super Lcom/oneplus/media/BitmapPool$Callback;
.source "ReviewScreenImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ReviewScreenImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ReviewScreenImpl;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$2;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-direct {p0}, Lcom/oneplus/media/BitmapPool$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapDecoded(Lcom/oneplus/base/Handle;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$2;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v0, p2, p3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-wrap9(Lcom/oneplus/camera/ui/ReviewScreenImpl;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 132
    return-void
.end method

.method public onBitmapDecoded(Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$2;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v0, p2, p3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-wrap9(Lcom/oneplus/camera/ui/ReviewScreenImpl;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 126
    return-void
.end method
