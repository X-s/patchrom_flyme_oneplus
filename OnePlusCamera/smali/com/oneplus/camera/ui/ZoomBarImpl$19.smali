.class Lcom/oneplus/camera/ui/ZoomBarImpl$19;
.super Ljava/lang/Object;
.source "ZoomBarImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ZoomBarImpl;->startIconAnimation(Landroid/widget/ImageView;Ljava/lang/Runnable;)Landroid/graphics/drawable/AnimationDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

.field final synthetic val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ZoomBarImpl;Landroid/graphics/drawable/AnimationDrawable;Landroid/widget/ImageView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ZoomBarImpl;
    .param p2, "val$animationDrawable"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p3, "val$view"    # Landroid/widget/ImageView;
    .param p4, "val$runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$19;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    iput-object p2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$19;->val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iput-object p3, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$19;->val$view:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$19;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$19;->val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 705
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$19;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 707
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$19;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$19;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 702
    :cond_0
    return-void
.end method
