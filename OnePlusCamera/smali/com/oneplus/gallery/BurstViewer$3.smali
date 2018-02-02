.class Lcom/oneplus/gallery/BurstViewer$3;
.super Lcom/oneplus/media/BitmapPool$Callback;
.source "BurstViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/BurstViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/BurstViewer;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/BurstViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/BurstViewer;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$3;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-direct {p0}, Lcom/oneplus/media/BitmapPool$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapDecoded(Lcom/oneplus/base/Handle;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$3;->this$0:Lcom/oneplus/gallery/BurstViewer;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lcom/oneplus/gallery/BurstViewer;->-wrap21(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/base/Handle;Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V

    .line 174
    return-void
.end method
