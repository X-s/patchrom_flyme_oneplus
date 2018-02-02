.class Lcom/oneplus/camera/ui/CaptureBar$11;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$11;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$11;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->-set5(Lcom/oneplus/camera/ui/CaptureBar;Z)Z

    .line 380
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$11;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-get33(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$11;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-get33(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 377
    :cond_0
    return-void
.end method
