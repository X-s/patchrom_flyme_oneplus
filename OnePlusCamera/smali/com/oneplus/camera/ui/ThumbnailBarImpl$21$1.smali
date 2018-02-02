.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$21$1;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21$1;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1387
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21$1;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;

    iget-object v1, v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    sget-object v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;->STOPPED:Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap4(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;)V

    .line 1390
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21$1;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;

    iget-object v1, v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21$1;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;

    iget-object v2, v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get8(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap14(Lcom/oneplus/camera/ui/ThumbnailBarImpl;I)V

    .line 1384
    return-void

    .line 1390
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
