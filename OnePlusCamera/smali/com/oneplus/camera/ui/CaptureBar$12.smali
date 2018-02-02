.class Lcom/oneplus/camera/ui/CaptureBar$12;
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
    .line 386
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$12;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$12;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-get15(Lcom/oneplus/camera/ui/CaptureBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$12;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->-set6(Lcom/oneplus/camera/ui/CaptureBar;Z)Z

    .line 394
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$12;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap37(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 389
    return-void
.end method
