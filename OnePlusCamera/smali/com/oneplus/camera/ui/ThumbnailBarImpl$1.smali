.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0, v3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set2(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z

    .line 130
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get13(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/view/View;

    move-result-object v2

    const-wide/16 v4, 0x12c

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap11(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 128
    return-void
.end method
