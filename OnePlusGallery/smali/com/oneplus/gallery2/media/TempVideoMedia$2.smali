.class Lcom/oneplus/gallery2/media/TempVideoMedia$2;
.super Lcom/oneplus/base/CallbackHandle;
.source "TempVideoMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/TempVideoMedia;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
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
.field final synthetic this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/TempVideoMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$SizeCallback;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Lcom/oneplus/gallery2/media/Media$SizeCallback;
    .param p4, "x2"    # Landroid/os/Handler;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$2;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/base/CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$2;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/TempVideoMedia;->verifyAccess()V

    .line 107
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$2;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    # getter for: Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery2/media/TempVideoMedia;->access$100(Lcom/oneplus/gallery2/media/TempVideoMedia;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$2;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    # getter for: Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery2/media/TempVideoMedia;->access$100(Lcom/oneplus/gallery2/media/TempVideoMedia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$2;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    # getter for: Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery2/media/TempVideoMedia;->access$100(Lcom/oneplus/gallery2/media/TempVideoMedia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$2;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/TempVideoMedia;->access$102(Lcom/oneplus/gallery2/media/TempVideoMedia;Ljava/util/List;)Ljava/util/List;

    .line 109
    :cond_0
    return-void
.end method
