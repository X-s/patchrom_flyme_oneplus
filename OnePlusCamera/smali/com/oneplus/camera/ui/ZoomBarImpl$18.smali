.class Lcom/oneplus/camera/ui/ZoomBarImpl$18;
.super Ljava/lang/Object;
.source "ZoomBarImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ZoomBarImpl;->showZoomWheel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ZoomBarImpl;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$18;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$18;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get3(Lcom/oneplus/camera/ui/ZoomBarImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$18;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get9(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020335

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 659
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$18;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-set4(Lcom/oneplus/camera/ui/ZoomBarImpl;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 654
    :cond_0
    return-void
.end method
