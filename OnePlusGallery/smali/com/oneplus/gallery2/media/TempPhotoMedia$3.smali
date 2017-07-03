.class Lcom/oneplus/gallery2/media/TempPhotoMedia$3;
.super Lcom/oneplus/base/CallbackHandle;
.source "TempPhotoMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/TempPhotoMedia;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/CallbackHandle",
        "<",
        "Lcom/oneplus/gallery2/media/Media$SizeCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/TempPhotoMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$SizeCallback;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Lcom/oneplus/gallery2/media/Media$SizeCallback;
    .param p4, "x2"    # Landroid/os/Handler;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$3;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/base/CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$3;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/TempPhotoMedia;->verifyAccess()V

    .line 115
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$3;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    # getter for: Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery2/media/TempPhotoMedia;->access$000(Lcom/oneplus/gallery2/media/TempPhotoMedia;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$3;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    # getter for: Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery2/media/TempPhotoMedia;->access$000(Lcom/oneplus/gallery2/media/TempPhotoMedia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$3;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    # getter for: Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery2/media/TempPhotoMedia;->access$000(Lcom/oneplus/gallery2/media/TempPhotoMedia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$3;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/TempPhotoMedia;->access$002(Lcom/oneplus/gallery2/media/TempPhotoMedia;Ljava/util/List;)Ljava/util/List;

    .line 117
    :cond_0
    return-void
.end method
