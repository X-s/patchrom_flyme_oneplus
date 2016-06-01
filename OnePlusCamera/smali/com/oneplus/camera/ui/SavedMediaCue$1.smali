.class Lcom/oneplus/camera/ui/SavedMediaCue$1;
.super Lcom/oneplus/media/BitmapPool$Callback;
.source "SavedMediaCue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/SavedMediaCue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/SavedMediaCue;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/SavedMediaCue;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oneplus/camera/ui/SavedMediaCue$1;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    invoke-direct {p0}, Lcom/oneplus/media/BitmapPool$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapDecoded(Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$1;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    # getter for: Lcom/oneplus/camera/ui/SavedMediaCue;->m_DecodeHandleList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/oneplus/camera/ui/SavedMediaCue;->access$000(Lcom/oneplus/camera/ui/SavedMediaCue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$1;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    # invokes: Lcom/oneplus/camera/ui/SavedMediaCue;->showCueAnimation(Landroid/graphics/Bitmap;)V
    invoke-static {v0, p3}, Lcom/oneplus/camera/ui/SavedMediaCue;->access$100(Lcom/oneplus/camera/ui/SavedMediaCue;Landroid/graphics/Bitmap;)V

    .line 54
    return-void
.end method
